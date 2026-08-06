#!/bin/bash
# Verifies the register countermeasure — the six lines and the quality clause
# — is stamped, whole, at every surface a session loads, and that the wiring
# which delivers it is intact. A label check is not enough: within a day of
# installation one copy had already drifted ("a subject and a verb" where the
# canonical line says "a named subject and a finite verb"), so this check
# verifies seven signature phrases from the countermeasure's content at every
# document surface. A partial amendment therefore fails loudly until every
# copy and this script's signature list move together in one commit — that is
# the amendment protocol working, not a bug.
#
# Installed 2026-08-05 and hardened the same day at the author's direction,
# in his words: stamp it "holistically and non-ambiguously, to a fault of
# overdoing it." The canonical copy is the final section of
# ops/methodology/prose register.md; where copies disagree, it wins.
#
# Usage: countermeasure.sh          full report
#        countermeasure.sh --quiet  one line on success, loud on failure
#        countermeasure.sh --turn   silent on success, loud on failure
cd "$(dirname "$0")/../.." || exit 1

MODE="$1"
FAIL=0

# The seven signatures, one per line of the countermeasure plus the quality
# clause. The seventh was added 2026-08-06 with line 5 (name the thing, not
# its category), the amendment protocol's first real exercise. Each must appear verbatim, on one line, at every document surface.
SIG1='complete sentence with a named subject and a finite verb'
SIG2='every other pipeline coinage'
SIG3='a receipt, never the content'
SIG4='only inside quotation marks'
SIG5='reread as him before it is sent'
SIG6='never on complexity that delivers'
SIG7='names the thing, not its category'

DOC_SURFACES='CLAUDE.md
ops/orientation.md
ops/methodology/prose register.md
ops/methodology/reporting to the author.md
ops/derivation-manifest.md
.claude/hooks/session-orient.sh'

check_doc () {
  f="$1"
  MISSING=""
  if [ ! -f "$f" ]; then
    echo "  MISSING SURFACE: $f"
    FAIL=1
    return
  fi
  n=1
  for sig in "$SIG1" "$SIG2" "$SIG3" "$SIG4" "$SIG5" "$SIG6" "$SIG7"; do
    if ! grep -qF "$sig" "$f"; then
      MISSING="$MISSING $n"
    fi
    n=$((n+1))
  done
  if [ -n "$MISSING" ]; then
    echo "  DRIFTED: $f is missing signature(s)$MISSING"
    FAIL=1
  elif [ -z "$MODE" ]; then
    echo "  stamped whole: $f"
  fi
}

while IFS= read -r f; do
  check_doc "$f"
done <<EOF2
$DOC_SURFACES
EOF2

# Wiring checks: the stamps only reach a session if these connections hold.
if ! grep -qF 'countermeasure.sh' '.claude/hooks/session-orient.sh'; then
  echo "  WIRING BROKEN: session-orient.sh no longer runs this check at session start"
  FAIL=1
fi
if [ ! -f '.claude/hooks/register-reminder.sh' ]; then
  echo "  WIRING BROKEN: .claude/hooks/register-reminder.sh is missing — the per-turn reminder is gone"
  FAIL=1
else
  if ! grep -qiF 'register countermeasure' '.claude/hooks/register-reminder.sh'; then
    echo "  WIRING BROKEN: register-reminder.sh has lost its stamp"
    FAIL=1
  fi
  if ! grep -qF 'countermeasure.sh' '.claude/hooks/register-reminder.sh'; then
    echo "  WIRING BROKEN: register-reminder.sh no longer runs this check each turn"
    FAIL=1
  fi
fi
if ! grep -qF 'register-reminder.sh' '.claude/settings.json'; then
  echo "  WIRING BROKEN: .claude/settings.json does not register the per-turn reminder hook"
  FAIL=1
fi
if ! grep -qF 'session-orient.sh' '.claude/settings.json'; then
  echo "  WIRING BROKEN: .claude/settings.json does not register the session-start hook"
  FAIL=1
fi
if [ ! -f 'ops/register violations.md' ]; then
  echo "  MISSING: ops/register violations.md — the violations log is gone"
  FAIL=1
fi

# Stale-count tripwire, added 2026-08-06. The six-line amendment left four
# surfaces still reading the old counts, a hole the signature check cannot
# see: signatures verify that the lines are present, not that the prose
# counting them kept up. The banned phrases below are the superseded counts,
# assembled by concatenation so this file does not trip on its own source.
# When the countermeasure is next amended, this ban list moves in the same
# commit as the signatures, per the amendment protocol.
STALE1="fiv""e lines"
STALE2="six signature"" phrases"
STALE3="six content"" signatures"
TRIP_SURFACES="$DOC_SURFACES
.claude/hooks/register-reminder.sh
scripts/queries/countermeasure.sh"
while IFS= read -r f; do
  [ -f "$f" ] || continue
  for stale in "$STALE1" "$STALE2" "$STALE3"; do
    if grep -qF "$stale" "$f"; then
      echo "  STALE COUNT: $f still says \"$stale\" — a leftover from before the last amendment; update it and this ban list in the same commit"
      FAIL=1
    fi
  done
done <<EOF3
$TRIP_SURFACES
EOF3

if [ "$FAIL" -eq 1 ]; then
  echo "REGISTER COUNTERMEASURE: a surface above has drifted or a wire is cut. Restore from the canonical block in ops/methodology/prose register.md, and update every copy and this script's signatures in the same commit."
  exit 1
fi

if [ "$MODE" = "--quiet" ]; then
  echo "STAMP CHECK: the register countermeasure is whole at every surface, and the wiring that delivers it is intact."
elif [ -z "$MODE" ]; then
  echo "The register countermeasure is whole at every surface — seven signatures at six document surfaces, both hooks wired, the violations log present, and no superseded count phrase anywhere."
fi
exit 0
