#!/bin/bash
# Reports every tension claim with its status and treatment, so the state of
# the kept tensions is readable at a glance. Run from the repository root.
cd "$(dirname "$0")/../.." || exit 1
echo "Tension claims (category: tension), with status and treatment:"
for f in notes/*.md; do
  if rg -q '^category: tension' "$f" 2>/dev/null; then
    title=$(basename "$f" .md)
    status=$(rg -o '^status: .*' "$f" | head -1 | sed 's/status: //')
    treatment=$(rg -o '^treatment: .*' "$f" | head -1 | sed 's/treatment: "\?//;s/"$//')
    echo ""
    echo "  $title"
    echo "    status: ${status:-not set}"
    echo "    treatment: ${treatment:-not set}"
  fi
done
