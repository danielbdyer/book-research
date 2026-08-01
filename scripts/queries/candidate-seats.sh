#!/bin/bash
# Reports every interlocutor note by seat, separating seated thinkers from
# candidates and declines, so evaluation progress is visible. Run from the
# repository root.
cd "$(dirname "$0")/../.." || exit 1
echo "Interlocutor notes by seat:"
rg -H '^seat: ' notes/ 2>/dev/null | sed 's/\.md:seat: / -> /;s|notes/||' | sort -t'>' -k2
echo ""
PENDING=$(rg -c '^\- \[ \]' ops/queue/candidates.md 2>/dev/null || echo 0)
echo "Pending evaluations in ops/queue/candidates.md: $PENDING"
