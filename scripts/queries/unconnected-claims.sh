#!/bin/bash
# Reports two defects in topic-map membership. First: notes whose frontmatter
# topics: array is empty — the machine-readable membership field, which /verify
# and this script treat as authoritative. Second: notes whose frontmatter array
# and Topics footer disagree. Fix either with /reflect or by editing both
# locations to match. Run from the repository root.
# Exemption clause (adopted 2026-08-05): a topic map is not an unconnected
# claim, and neither is a note whose only inbound links are from maps if it
# carries outbound links that are glossed. The condition is asking about notes
# unreachable from the graph, not about notes with thin backlinks — that is
# /reweave's question and is not counted here.
cd "$(dirname "$0")/../.." || exit 1
echo "Notes with an empty topics: array (no machine-readable membership):"
EMPTY=0
for f in notes/*.md; do
  if rg -q '^topics: \[\]' "$f" 2>/dev/null; then
    echo "  $f"; EMPTY=1
  fi
done
[ "$EMPTY" = "0" ] && echo "  none."
echo ""
echo "Notes whose topics: array and Topics: footer disagree:"
python3 - <<'PYCHECK'
import re, pathlib
bad = 0
for p in sorted(pathlib.Path("notes").glob("*.md")):
    t = p.read_text()
    fm = re.search(r'^topics: \[(.*)\]$', t, re.M)
    ft = re.search(r'^Topics:\n((?:- \[\[[^\]]+\]\]\n?)+)', t, re.M)
    a = set(re.findall(r'\[\[([^\]]+)\]\]', fm.group(1))) if fm else set()
    b = set(re.findall(r'\[\[([^\]]+)\]\]', ft.group(1))) if ft else set()
    if a != b:
        print(f"  {p}: array={sorted(a)} footer={sorted(b)}"); bad += 1
if not bad: print("  none.")
PYCHECK
