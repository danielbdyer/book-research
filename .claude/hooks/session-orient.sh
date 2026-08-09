#!/bin/bash
# Ars Contexta — Session Orientation Hook
# Injects workspace structure, identity, methodology, and maintenance signals at session start.
# Also handles session tracking (capture moved here from Stop hook — fires once per session).

# Only run in Ars Contexta vaults
GUARD_DIR="$(cd "$(dirname "$0")" && pwd)"
# Work from the repository root regardless of the invoking directory: every
# path below is root-relative, and the guard resolves the root the same way.
cd "${CLAUDE_PROJECT_DIR:-$GUARD_DIR/../..}" || exit 0
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

# Session capture was removed on 2026-08-09 by author decision, and the
# directory it wrote to is gone. Each record it produced held a session
# identifier, a timestamp and the word "active" and no other content, so the
# nine that had accumulated were nine files with nothing in them to read. The
# maintenance condition below counted those files and recommended mining them
# for methodology corrections at five or more, which meant the recommendation
# fired at every session start against files that could not answer it. What
# the recommendation was actually for — corrections the author makes in
# conversation — is captured by /remember from the transcript, which is where
# it always lived; the records never held it. The earlier finding that this
# block also produced one unsigned commit per resume is at
# ops/observations/session-start hook commits an unsigned record on every resume.md.

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

# The research-diction directive is carried by the masthead (ops/orientation.md,
# injected above) as one of its safeguards, so it is not printed separately here.
# The enforcement apparatus that once stamped it at fourteen surfaces was retired
# on 2026-08-09; the insight lives in CLAUDE.md and ops/methodology/prose register.md.

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
INBOX_COUNT=$(ls -1 inbox/*.md 2>/dev/null | grep -v README | wc -l | tr -d ' ')

if [ "$OBS_COUNT" -ge 10 ]; then
  echo "CONDITION: $OBS_COUNT open observations. Consider /rethink."
  FIRED=1
fi
if [ "$TENS_COUNT" -ge 5 ]; then
  echo "CONDITION: $TENS_COUNT unresolved tensions. Consider /rethink."
  FIRED=1
fi
if ! command -v qmd >/dev/null 2>&1; then
  echo "CONDITION: qmd is not installed in this container. Run scripts/bootstrap.sh to restore semantic search."
  FIRED=1
elif [ -f .qmd/index.sqlite ]; then
  # The index serves stale results silently; CLAUDE.md's own rule is to
  # reindex after bulk note changes, and nothing enforced it until now.
  STALE_NOTE=$(find notes -name '*.md' -newer .qmd/index.sqlite -print -quit 2>/dev/null)
  if [ -n "$STALE_NOTE" ]; then
    echo "CONDITION: notes have changed since the semantic index was built. Run qmd update && qmd embed."
    FIRED=1
  fi
fi
if [ "$INBOX_COUNT" -ge 3 ]; then
  echo "CONDITION: $INBOX_COUNT items in inbox. Consider /reduce or /pipeline."
  FIRED=1
fi
# The committed outline roll-up (ops/outline.md) was retired 2026-08-09 with the
# other standing self-measurement instruments, so there is no outline-staleness
# condition. A session that wants the census on demand runs
# `scripts/queries/outline.sh --print`, which writes nothing.

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
