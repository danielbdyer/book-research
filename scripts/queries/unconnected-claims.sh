#!/bin/bash
# Reports three defects in topic-map membership. First: notes whose frontmatter
# topics: array is empty — the machine-readable membership field, which /verify
# and this script treat as authoritative. Second: notes whose frontmatter array
# and Topics footer disagree. Third: notes that declare topic maps and appear in
# no declared map's claim list, which is the condition CLAUDE.md states ("every
# claim appears in at least one map's claim list"). Fix any of them with
# /reflect, or for the second by editing both locations to match. Run from the
# repository root.
#
# Exemption clause (adopted 2026-08-05): a topic map is not an unconnected
# claim, and neither is a note whose only inbound links are from maps if it
# carries outbound links that are glossed. The condition is asking about notes
# unreachable from the graph, not about notes with thin backlinks — that is
# /reweave's question and is not counted here.
#
# Exemption clause for the third check (derived 2026-08-05 during the /reflect
# pass that closed the 65 map-list gaps, and recorded because a counted
# condition without one is the disease this vault has already diagnosed twice).
# The check counts notes listed in NO declared map. It deliberately does not
# count a note that is listed in one declared map and missing from another,
# because that shape is editorial work rather than a schema defect: the note is
# reachable from the graph and the question is only whether a second concern's
# map should also gather it. The measured difference is large enough that the
# distinction decides whether the condition is usable — on 2026-08-05 the naive
# every-declared-map count reported 65 hits where the schema floor reported 11.
# Two structural exemptions: topic maps themselves are gathered by notes/index.md
# rather than by a claim list, and notes/figure glossary.md is a crosswalk rather
# than a map. The every-declared-map standard is nonetheless the vault's practice
# and /reflect maintains it — 21 of the 21 interlocutor notes predating
# 2026-08-05 that declare a doctrine map are listed in it — but it is /reflect's
# editorial queue, not a condition the session hook counts.
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
echo ""
echo "Notes that declare topic maps and appear in no declared map's claim list:"
python3 - <<'PYCHECK'
import re, pathlib
notes = {p.stem: p.read_text() for p in sorted(pathlib.Path("notes").glob("*.md"))}
maps = {k: v for k, v in notes.items() if re.search(r'^type: moc', v, re.M)}
listed_in = {m: set(re.findall(r'\[\[([^\]|#]+)', t)) for m, t in maps.items()}
bad = 0
for n, t in sorted(notes.items()):
    if n in maps:          # exempt: maps are gathered by notes/index.md
        continue
    fm = re.search(r'^topics: \[(.*)\]$', t, re.M)
    if not fm:
        continue
    declared = [d.strip() for d in re.findall(r'\[\[([^\]]+)\]\]', fm.group(1))]
    declared = [d for d in declared if d in maps]
    if declared and not any(n in listed_in[d] for d in declared):
        print(f"  notes/{n}.md: declares {declared}, listed in none"); bad += 1
if not bad: print("  none.")
PYCHECK
