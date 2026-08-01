#!/bin/bash
# Lists claims recorded before they were substantiated (state: nascent), with
# their topic maps. A stub is a territory the corpus named and never developed;
# it is admitted so the territory is reachable from the graph, and it is debt
# until it is either filled in or declined. The inventory behind them is
# ops/open corpus.md. Run from anywhere.
cd "$(dirname "$0")/../.." || exit 1
echo "Nascent stubs — claims recorded but not yet substantiated:"
echo
COUNT=0
for f in notes/*.md; do
  grep -q '^state: nascent' "$f" 2>/dev/null || continue
  COUNT=$((COUNT+1))
  TOPICS=$(grep -m1 '^topics:' "$f" | sed 's/^topics: //')
  printf '  %s\n      %s\n' "$(basename "$f" .md)" "$TOPICS"
done
echo
if [ "$COUNT" -eq 0 ]; then
  echo "None. Every claim in the vault carries substantiation."
else
  echo "$COUNT stubs. Filling one means supplying substantiation the corpus does not"
  echo "currently give it, then removing the state field; declining one means an entry"
  echo "in ops/queue/declines.md with the reason."
fi
