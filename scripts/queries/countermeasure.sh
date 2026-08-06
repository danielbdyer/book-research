#!/bin/bash
# Verifies the register countermeasure is stamped at every surface a session
# loads, and reports the result. The stance itself cannot be found by a script
# — the author ruled that a regex cannot catch it — but its installation can
# be: this check fails loudly if any surface loses the stamp, so removal or
# drift is caught at the next session start rather than never.
#
# Installed 2026-08-05 at the author's direction, deliberately redundant, in
# his words: stamp the countermeasure "holistically and non-ambiguously, to a
# fault of overdoing it." The canonical copy of the five lines lives in
# ops/methodology/prose register.md; every other surface repeats it, and where
# copies disagree the canonical one wins.
#
# Usage: countermeasure.sh          full report
#        countermeasure.sh --quiet  one line on success, loud on failure
cd "$(dirname "$0")/../.." || exit 1

MARK='register countermeasure'
FAIL=0
SURFACES='CLAUDE.md
ops/orientation.md
ops/methodology/prose register.md
ops/methodology/reporting to the author.md
.claude/hooks/session-orient.sh'

while IFS= read -r f; do
  if [ -f "$f" ] && grep -qi "$MARK" "$f"; then
    [ "$1" != "--quiet" ] && echo "  stamped: $f"
  else
    echo "  MISSING STAMP: $f"
    FAIL=1
  fi
done <<EOF2
$SURFACES
EOF2

if [ "$FAIL" -eq 1 ]; then
  echo "REGISTER COUNTERMEASURE: a surface above has lost its stamp. Restore it from the canonical block in ops/methodology/prose register.md before writing anything."
  exit 1
fi

if [ "$1" = "--quiet" ]; then
  echo "STAMP CHECK: the register countermeasure is present at all five surfaces."
else
  echo "The register countermeasure is stamped at every surface a session loads."
fi
exit 0
