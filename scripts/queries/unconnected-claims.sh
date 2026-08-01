#!/bin/bash
# Reports notes with an empty topics field — claims that belong to no topic
# map, which the maintenance rules treat as a defect to fix with /reflect.
# Run from the repository root.
cd "$(dirname "$0")/../.." || exit 1
echo "Notes with an empty topics: field (no topic map membership):"
FOUND=0
for f in notes/*.md; do
  if rg -q '^topics: \[\]' "$f" 2>/dev/null; then
    # A note passes if it lists topics in its footer instead of frontmatter.
    if ! rg -q '^Topics:' "$f"; then
      echo "  $f"
      FOUND=1
    fi
  fi
done
[ "$FOUND" = "0" ] && echo "  none — every note has topic map membership."
