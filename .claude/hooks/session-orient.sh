#!/bin/bash
# Ars Contexta — Session Orientation Hook
# Injects workspace structure, identity, methodology, and maintenance signals at session start.
# Also handles session tracking (capture moved here from Stop hook — fires once per session).

# Only run in Ars Contexta vaults
GUARD_DIR="$(cd "$(dirname "$0")" && pwd)"
"$GUARD_DIR/vaultguard.sh" || exit 0

# ── Session tracking (silent — no stdout) ──────────────────────
# SessionStart provides session info as JSON on stdin.
# Read it before any echo statements.

INPUT=$(cat)
SESSION_ID=""
if command -v jq &>/dev/null; then
  SESSION_ID=$(echo "$INPUT" | jq -r '.session_id // empty')
else
  SESSION_ID=$(echo "$INPUT" | grep -o '"session_id":"[^"]*"' | head -1 | sed 's/"session_id":"//;s/"//')
fi

READ_CONFIG="$GUARD_DIR/read_config.sh"

if [ -n "$SESSION_ID" ] && [ "$(bash "$READ_CONFIG" "session_capture" "true")" = "true" ]; then
  TIMESTAMP=$(date -u +"%Y%m%d-%H%M%S")
  mkdir -p ops/sessions

  # Promote previous session if it's a different ID
  if [ -f ops/sessions/current.json ]; then
    if command -v jq &>/dev/null; then
      PREV_ID=$(jq -r '.id // empty' ops/sessions/current.json)
      PREV_STARTED=$(jq -r '.started // empty' ops/sessions/current.json)
    else
      PREV_ID=$(grep -o '"id":"[^"]*"' ops/sessions/current.json | head -1 | sed 's/"id":"//;s/"//')
      PREV_STARTED=$(grep -o '"started":"[^"]*"' ops/sessions/current.json | head -1 | sed 's/"started":"//;s/"//')
    fi

    if [ -n "$PREV_ID" ] && [ "$PREV_ID" != "$SESSION_ID" ]; then
      # Different session — promote previous to timestamped archive
      ARCHIVE_TS="${PREV_STARTED:-$TIMESTAMP}"
      mv ops/sessions/current.json "ops/sessions/${ARCHIVE_TS}.json"
    fi
  fi

  # Write current session
  cat > ops/sessions/current.json << EOF
{
  "id": "$SESSION_ID",
  "started": "$TIMESTAMP",
  "status": "active"
}
EOF

  # The session record is deliberately not committed here. Committing it on
  # every resume produced one no-content commit per session, and because this
  # hook ran with --no-verify those commits carried no signature and the
  # platform reported them unverified. The auto-commit hook stages everything
  # with `git add -A`, so ops/sessions/ rides along with the next real change.
  # See ops/observations/session-start hook commits an unsigned record on every resume.md
fi

# Export session ID for later hooks
if [ -n "$CLAUDE_ENV_FILE" ] && [ -n "$SESSION_ID" ]; then
  echo "export CLAUDE_SESSION_ID='$SESSION_ID'" >> "$CLAUDE_ENV_FILE"
fi

# ── Context injection (stdout → conversation) ──────────────────

# Orientation first: the center, the reading order, and the torch. Injected
# before everything else so the session meets the center before the backlog.
if [ -f ops/orientation.md ]; then
  cat ops/orientation.md
  echo ""
  echo "---"
  echo ""
fi

# The register countermeasure: printed at every session start, at the author's
# direction (2026-08-05), deliberately redundant with CLAUDE.md, the
# orientation, and the register itself. The canonical copy is the final section
# of ops/methodology/prose register.md; where copies disagree, that one wins.
echo "## The register countermeasure (applies to every sentence this session writes)"
echo ""
echo "1. Every statement is a complete sentence with a named subject and a finite verb. No fragment stands as a sentence; check the last sentence of each paragraph first, because fragments concentrate at the closes."
echo "2. A vault-internal term (chair, seat, load, privated, the sort, the torch, and every other pipeline coinage) is unfolded in the sentence where it appears, or replaced with plain words. In replies to the author this is absolute: he authored the book the terms describe, not the terms."
echo "3. A reference is a receipt, never the content. Every link or file path travels with one clause stating what it points to; a paragraph must still assert everything it asserted with its links struck out."
echo "4. A figure of speech appears only inside quotation marks, where the quoted phrasing is itself the finding. Mirrored pairs, load-bearing metaphors, quotable endings, and self-narration are statements withheld, not style."
echo "5. Every reply to the author is reread as him before it is sent, in full, applying lines 1 through 4."
echo ""
echo "The quality clause carries equal force: none of this shortens or flattens. Long subordinate sentences are welcome when they unfold in reading order; richness is the right fact, complete, with its reason attached. The ban is on compression that withholds, never on complexity that delivers."
echo ""
if [ -f scripts/queries/countermeasure.sh ]; then
  bash scripts/queries/countermeasure.sh --quiet || true
fi
echo ""
echo "---"
echo ""

echo "## Workspace Structure"
echo ""

# Show directory tree (3 levels deep, markdown files only)
if command -v tree &> /dev/null; then
    # PDFs and scripts are shown so sources/ and scripts/ are not invisible;
    # --filelimit keeps notes/ as a count instead of an alphabetized dump.
    tree -L 3 --charset ascii -I '.git|node_modules' -P '*.md|*.pdf|*.sh|*.json|*.yaml' --filelimit 20 .
else
    find . \( -name "*.md" -o -name "*.pdf" -o -name "*.sh" \) -not -path "./.git/*" -not -path "*/node_modules/*" -maxdepth 3 | sort | while read -r file; do
        depth=$(echo "$file" | tr -cd '/' | wc -c)
        indent=$(printf '%*s' "$((depth * 2))" '')
        basename=$(basename "$file")
        echo "${indent}${basename}"
    done
fi

echo ""
echo "---"
echo ""

# Previous session continuity: the newest completed entry carries content,
# where the session-tracker JSON carries only an id and a timestamp.
if [ -f ops/completed.md ]; then
  LAST_DONE=$(grep -m1 '^- 20' ops/completed.md)
  if [ -n "$LAST_DONE" ]; then
    echo "--- Previous session (newest entry in ops/completed.md) ---"
    echo "$LAST_DONE"
    echo ""
  fi
fi

# Persistent working memory (goals)
if [ -f self/goals.md ]; then
  cat self/goals.md
  echo ""
elif [ -f ops/goals.md ]; then
  cat ops/goals.md
  echo ""
fi

# Identity (if self space enabled)
if [ -f self/identity.md ]; then
  cat self/identity.md self/methodology.md 2>/dev/null
  echo ""
fi

# Standing methodology notes (all of them: name and description line). The
# directive layer is small and load-bearing, so no cap and no mtime lottery —
# a five-file cap once let the center-of-gravity directive fall off the list.
if ls ops/methodology/*.md >/dev/null 2>&1; then
  echo "--- Methodology notes (ops/methodology/) ---"
  ls -t ops/methodology/*.md 2>/dev/null | while IFS= read -r f; do
    DESC=$(grep -m1 '^description: ' "$f" | sed 's/^description: //')
    echo "$(basename "$f"): ${DESC}"
  done
  echo ""
fi

# Reminders (unchecked entries surface at session start)
if [ -f ops/reminders.md ]; then
  DUE=$(grep '^- \[ \]' ops/reminders.md 2>/dev/null)
  if [ -n "$DUE" ]; then
    echo "--- Reminders (ops/reminders.md) ---"
    echo "$DUE"
    echo ""
  fi
fi

# Condition-based maintenance signals
FIRED=0
# Counts observations that are actually open, not files present. Until 2026-08-05
# this counted files, so resolved observations kept the condition firing and the
# word "pending" described a number that included them (/rethink, 2026-08-05).
# Exemption clause: an observation with status: resolved or status: archived is
# not work and is not counted.
OBS_COUNT=$(grep -l '^status: open' ops/observations/*.md 2>/dev/null | wc -l | tr -d ' ')
TENS_COUNT=$(ls -1 ops/tensions/*.md 2>/dev/null | grep -v README | wc -l | tr -d ' ')
SESS_COUNT=$(ls -1 ops/sessions/*.json 2>/dev/null | grep -v current | wc -l | tr -d ' ')
INBOX_COUNT=$(ls -1 inbox/*.md 2>/dev/null | grep -v README | wc -l | tr -d ' ')

if [ "$OBS_COUNT" -ge 10 ]; then
  echo "CONDITION: $OBS_COUNT open observations. Consider /rethink."
  FIRED=1
fi
if [ "$TENS_COUNT" -ge 5 ]; then
  echo "CONDITION: $TENS_COUNT unresolved tensions. Consider /rethink."
  FIRED=1
fi
if [ "$SESS_COUNT" -ge 5 ]; then
  echo "CONDITION: $SESS_COUNT unprocessed sessions. Consider /remember --mine-sessions."
  FIRED=1
fi
if ! command -v qmd >/dev/null 2>&1; then
  echo "CONDITION: qmd is not installed in this container. Run scripts/bootstrap.sh to restore semantic search."
  FIRED=1
fi
if [ "$INBOX_COUNT" -ge 3 ]; then
  echo "CONDITION: $INBOX_COUNT items in inbox. Consider /reduce or /pipeline."
  FIRED=1
fi

# Workboard reconciliation
if [ -f ops/scripts/reconcile.sh ]; then
  bash ops/scripts/reconcile.sh --compact 2>/dev/null
fi

# Methodology staleness check (Rule Zero)
if [ -d ops/methodology ] && [ -f ops/config.yaml ]; then
  CONFIG_MTIME=$(stat -c %Y ops/config.yaml 2>/dev/null || stat -f %m ops/config.yaml 2>/dev/null || echo 0)
  NEWEST_METH=$(ls -t ops/methodology/*.md 2>/dev/null | head -1)
  if [ -n "$NEWEST_METH" ]; then
    METH_MTIME=$(stat -c %Y "$NEWEST_METH" 2>/dev/null || stat -f %m "$NEWEST_METH" 2>/dev/null || echo 0)
    case "$CONFIG_MTIME$METH_MTIME" in *[!0-9]*) CONFIG_MTIME=0; METH_MTIME=0;; esac
    DAYS_STALE=$(( (CONFIG_MTIME - METH_MTIME) / 86400 ))
    if [ "$DAYS_STALE" -ge 30 ]; then
      echo "CONDITION: Methodology notes are ${DAYS_STALE}+ days behind config changes. Consider /rethink drift."
      FIRED=1
    fi
  fi
fi

# Silence is a state, not a gap: say so, so quiet channels are not misread.
if [ "$FIRED" -eq 0 ]; then
  echo "MAINTENANCE: all conditions checked and quiet — the healthy state. The pending lists in ops/queue/ are deliberately long and are not a fired condition."
fi
