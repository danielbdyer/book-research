#!/bin/bash
# Reports manuscript placements: which claims the author has assigned to which
# locations, via the supports: field. The field is dormant until placements
# begin (the vault never infers placements), so an empty report is expected
# early. Run from the repository root.
cd "$(dirname "$0")/../.." || exit 1
echo "Claims with author-made placements (supports: field):"
FOUND=$(rg -l '^supports: \[.+\]' notes/ 2>/dev/null)
if [ -z "$FOUND" ]; then
  echo "  none — no placements have been made yet. This is the expected state"
  echo "  until the author begins assigning material to manuscript locations."
  exit 0
fi
rg -H '^supports:' notes/ | sed 's/:supports:/ -> /'
