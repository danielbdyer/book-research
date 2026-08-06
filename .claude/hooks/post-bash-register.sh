#!/bin/bash
# The pre-write gate's twin for the shell channel. Batch edits made through
# python or sed inside a Bash call never pass through the Write and Edit
# tools, so the pre-write gate cannot see them — and the seventh correction
# showed that is exactly where filing-at-speed happens. After every shell
# command this hook scans the added lines of uncommitted prose (worktree and
# index against HEAD) with the same detector, scripts/queries/
# register-tripwires.py, and reports loudly (exit 2) until the tripping
# lines are recomposed or committed away. Clean diffs stay silent.
GUARD_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "${CLAUDE_PROJECT_DIR:-$GUARD_DIR/../..}" || exit 0
[ -f scripts/queries/register-tripwires.py ] || exit 0
git rev-parse --is-inside-work-tree > /dev/null 2>&1 || exit 0

OUT=$(python3 scripts/queries/register-tripwires.py --diff 2>/dev/null)
if [ $? -eq 1 ]; then
  echo "REGISTER GATE (post-shell) found tripping lines in uncommitted prose:" >&2
  echo "$OUT" >&2
  exit 2
fi
exit 0
