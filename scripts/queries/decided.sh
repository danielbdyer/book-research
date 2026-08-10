#!/bin/bash
# History by query, not by read: greps ops/decisions.md for a topic and prints
# the matching rows readably, so a session checks whether a question is already
# settled without reading the whole register. The safeguard is stated this way
# on the masthead ("grep the register for the topic before acting") — this is
# the tool behind it.
#
# Usage: scripts/queries/decided.sh <keyword> [keyword ...]
#   Case-insensitive; multiple keywords are OR-ed (any word matches a row).
#   With no argument, prints every decision (the whole register, one row each).
# Run from anywhere.

cd "$(dirname "$0")/../.." || exit 1
FILE="ops/decisions.md"
[ -f "$FILE" ] || { echo "no $FILE"; exit 1; }

python3 - "$@" <<'PY'
import sys, re

terms = [t.lower() for t in sys.argv[1:]]
rows = []
with open("ops/decisions.md", encoding="utf-8") as fh:
    for line in fh:
        line = line.rstrip("\n")
        # Data rows only: a table row that is not the header or separator.
        if not line.startswith("|"):
            continue
        if re.match(r'^\|\s*Question\s*\|', line):
            continue
        if re.match(r'^\|[\s:|-]+\|?\s*$', line):
            continue
        cells = [c.strip() for c in line.strip().strip("|").split("|")]
        if len(cells) < 4:
            continue
        rows.append(cells)

def matches(cells):
    if not terms:
        return True
    hay = " ".join(cells).lower()
    return any(t in hay for t in terms)

hits = [r for r in rows if matches(r)]
label = "all decisions" if not terms else f'decisions matching: {", ".join(terms)}'
print(f"{len(hits)} {label}\n")
for cells in hits:
    q, d, date, where = cells[0], cells[1], cells[2], cells[3]
    print(f"Q: {q}")
    print(f"   Decision ({date}): {d}")
    print(f"   Reasoning: {where}")
    print()
if not hits:
    print("No settled decision matches. It may be genuinely open — check ops/goals.md and ops/tensions/.")
PY
