#!/usr/bin/env python3
"""Remove topic-map section headings left empty by the epistemic-audit deletions.

Safe rule: a heading H at level L is removed only if the text from H until the
next heading is whitespace-only AND that next heading's level is <= L (i.e. H is
a leaf section with no content, not a parent of subsections). Parent headings
whose children still hold entries are kept. Runs over all topic maps.
"""
import os, re

def level(h):
    return len(h) - len(h.lstrip('#'))

removed = []
for f in os.listdir("notes"):
    if not f.endswith(".md"):
        continue
    fp = os.path.join("notes", f)
    head = open(fp, encoding="utf-8").read(400)
    if "type: moc" not in head:
        continue
    lines = open(fp, encoding="utf-8").read().split("\n")
    # indices of heading lines
    heads = [i for i, ln in enumerate(lines) if re.match(r'^#{2,}\s', ln)]
    drop = set()
    for k, i in enumerate(heads):
        nxt = heads[k + 1] if k + 1 < len(heads) else len(lines)
        body = "\n".join(lines[i + 1:nxt]).strip()
        if body == "":
            # empty section; remove only if next heading is same-or-higher level (leaf)
            if k + 1 < len(heads) and level(lines[heads[k + 1]]) <= level(lines[i]):
                for j in range(i, nxt):
                    drop.add(j)
                removed.append((f[:-3], lines[i].strip()))
            elif k + 1 == len(heads):
                # trailing empty heading at end of file
                for j in range(i, nxt):
                    drop.add(j)
                removed.append((f[:-3], lines[i].strip()))
    if drop:
        out = [ln for j, ln in enumerate(lines) if j not in drop]
        open(fp, "w", encoding="utf-8").write("\n".join(out))

print(f"empty section headings removed: {len(removed)}")
for m, h in removed:
    print(f"  {m} :: {h}")
