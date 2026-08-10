#!/bin/bash
# Checks the integrity of the wiki-link graph: every [[target]] in the content
# graph must resolve to exactly one file. Two defects are reported.
#
#   1. Unresolved link — a [[target]] whose basename matches no .md file in the
#      vault. This is the "wiki links that no longer resolve" maintenance rule
#      that CLAUDE.md carried with no tool behind it; a rename that misses an
#      inbound link produces exactly this.
#   2. Ambiguous link — a [[target]] whose basename matches two or more files.
#      Wiki links resolve by basename, so a link to a basename that names more
#      than one file has no single destination.
#
# Resolution space: every tracked .md basename in the vault (how an Obsidian-
# style [[link]] actually resolves — against everything, not one folder).
#
# Scan scope (where a [[link]] is a real graph edge): notes/, ops/ (all of it),
# archive/, provenance/, manual/. Three locations are deliberately NOT scanned
# because their [[...]] tokens are illustrative placeholders rather than graph
# edges, and scanning them would report permanent false positives:
#   - templates/       the schema examples ([[other claim]], [[claim one]], …)
#   - .claude/         skill documentation ([[link]] as a syntax example)
#   - CLAUDE.md        the "Footer, always" format example ([[a topic map]])
# The durable law's own prose links (CLAUDE.md outside that example) resolve and
# are checked by eye when it is edited; they are few and stable.
#
# Basename collisions among infrastructure files (README.md in many folders,
# SKILL.md in each skill folder) are NOT defects: no [[link]] targets them, so
# no link is made ambiguous. This is why an ambiguous-link report is tied to
# links actually present, not to a raw basename-collision census — the raw
# census would fire forever on files that participate in no link graph.
#
# Modes: default prints a human-readable report. `--count` prints a single
# integer — distinct unresolved targets plus distinct ambiguous linked
# basenames — for the session hook to count as a maintenance condition.
# Run from anywhere.

cd "$(dirname "$0")/../.." || exit 1

MODE="${1:-report}"

python3 - "$MODE" <<'PY'
import os, re, sys, glob
from collections import defaultdict

mode = sys.argv[1] if len(sys.argv) > 1 else "report"

# Resolution space: basename -> [paths], across every tracked-ish .md file.
basename_paths = defaultdict(list)
for root, dirs, files in os.walk('.'):
    if '/.git' in root or root == './.git' or root.startswith('./.git/'):
        continue
    dirs[:] = [d for d in dirs if d not in ('.git', 'node_modules')]
    for f in files:
        if f.endswith('.md'):
            basename_paths[f[:-3]].append(os.path.join(root, f))

# Scan scope: directories whose [[links]] are real graph edges.
scan_paths = []
for base in ('notes', 'ops', 'archive', 'provenance', 'manual'):
    scan_paths += glob.glob(f'{base}/**/*.md', recursive=True)

link_re = re.compile(r'\[\[([^\]|#]+)')

unresolved = defaultdict(list)   # target -> [locations]
ambiguous  = defaultdict(list)   # basename -> [locations where linked]

for path in sorted(scan_paths):
    try:
        with open(path, encoding='utf-8') as fh:
            for i, line in enumerate(fh, 1):
                for m in link_re.finditer(line):
                    tgt = m.group(1).strip()
                    if not tgt:
                        continue
                    hits = basename_paths.get(tgt, [])
                    if len(hits) == 0:
                        unresolved[tgt].append(f"{path}:{i}")
                    elif len(hits) > 1:
                        ambiguous[tgt].append(f"{path}:{i}")
    except Exception as e:
        print(f"  ERROR reading {path}: {e}", file=sys.stderr)

total = len(unresolved) + len(ambiguous)

if mode == "--count":
    print(total)
    sys.exit(0)

print("Wiki-link integrity check")
print("=========================")
print()
print(f"Unresolved links — [[target]] matching no .md file ({len(unresolved)}):")
if unresolved:
    for tgt, locs in sorted(unresolved.items()):
        extra = f" (+{len(locs)-1} more)" if len(locs) > 1 else ""
        print(f"  [[{tgt}]]  <-  {locs[0]}{extra}")
else:
    print("  none.")
print()
print(f"Ambiguous links — [[target]] matching two or more files ({len(ambiguous)}):")
if ambiguous:
    for tgt, locs in sorted(ambiguous.items()):
        dests = ", ".join(basename_paths[tgt])
        print(f"  [[{tgt}]]  ->  {dests}")
        print(f"      linked at {locs[0]}" + (f" (+{len(locs)-1} more)" if len(locs) > 1 else ""))
else:
    print("  none.")
print()
if total == 0:
    print("CLEAN: every wiki link in the content graph resolves to exactly one file.")
else:
    print(f"{total} link-integrity defect(s). Fix on sight (a rename usually caused it).")
PY
