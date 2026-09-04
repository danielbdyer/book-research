#!/usr/bin/env bash
# plain-scan.sh — which files still use a vault coinage with no plain referent anywhere in the file.
# Reads ops/plain-language lexicon.md. Finds one fault class only: the bare coinage (prose register rule 10).
#   plain-scan.sh                 summary plus the top of the worklist (author-facing files first)
#   plain-scan.sh --worklist N    the N files with the most bare hard terms, ranked by tier then count
#   plain-scan.sh --file PATH     the bare terms in one file, hard and soft
#   plain-scan.sh --all           include notes/ claims and archive/ in the ranking (default: tiers 1–2 only)
#   plain-scan.sh --summary       one line per tier
# Tiers: 1 = ops/*.md, ops/methodology, ops/ecologies, drafts/  (what the author reads)
#        2 = the-*.md family files, notes/ topic maps
#        3 = notes/ claims        4 = archive/, provenance/
# Excluded: sources/, .corpus/, reflections/ (his words), the lexicon and the log themselves, ops/register violations.md (quotes specimens).
cd "$(dirname "$0")/../.." || exit 1
python3 - "$@" <<'PY'
import sys, os, glob, re
sys.path.insert(0, 'scripts/queries')
from plain_lexicon import parse_lexicon, scan_text
args = sys.argv[1:]
lex = parse_lexicon()
excl = {'ops/plain-language lexicon.md', 'ops/plain-language log.md', 'ops/register violations.md'}
def tier_of(p):
    if p.startswith('drafts/') or p.startswith('ops/methodology/') or p.startswith('ops/ecologies/'): return 1
    if p.startswith('ops/') and p.count('/') == 1: return 1
    if p.startswith('the-') and p.endswith('.md'): return 2
    if p.startswith('notes/'):
        try:
            head = open(p, encoding='utf-8').read(600)
        except Exception:
            return 3
        return 2 if re.search(r'^type:\s*moc', head, re.M) else 3
    if p.startswith('archive/') or p.startswith('provenance/'): return 4
    return 5
files = []
for pat in ['ops/*.md', 'ops/methodology/*.md', 'ops/ecologies/*.md', 'drafts/*.md', 'the-*.md', 'notes/*.md', 'archive/*.md', 'provenance/*.md']:
    files += glob.glob(pat)
files = sorted(set(f for f in files if f not in excl))
if '--file' in args:
    p = args[args.index('--file')+1]
    txt = open(p, encoding='utf-8').read()
    for r in scan_text(txt, lex, tiers=('hard','soft')):
        print(f"{r['tier']:4}  {r['count']:3}  {r['term']:28}  -> {r['plain']}")
    sys.exit(0)
include_all = '--all' in args
rows = []
for p in files:
    t = tier_of(p)
    if t >= 3 and not include_all: continue
    try: txt = open(p, encoding='utf-8').read()
    except Exception: continue
    hard = scan_text(txt, lex, tiers=('hard',))
    soft = scan_text(txt, lex, tiers=('soft',))
    rows.append((t, p, hard, soft))
by_tier = {}
for t, p, hard, soft in rows:
    d = by_tier.setdefault(t, dict(files=0, dirty=0, bare=0))
    d['files'] += 1
    if hard: d['dirty'] += 1; d['bare'] += sum(h['count'] for h in hard)
print("plain-scan — bare coinages (a hard term used with no plain referent anywhere in the file)")
for t in sorted(by_tier):
    d = by_tier[t]
    print(f"  tier {t}: {d['files']:4} files, {d['dirty']:4} with bare hard terms, {d['bare']:5} bare occurrences")
if '--summary' in args: sys.exit(0)
n = 20
if '--worklist' in args:
    try: n = int(args[args.index('--worklist')+1])
    except Exception: n = 40
work = sorted([r for r in rows if r[2]], key=lambda r: (r[0], -sum(h['count'] for h in r[2])))
print(f"\nworklist (top {n} of {len(work)} files with bare hard terms; tier, bare count, file, terms):")
for t, p, hard, soft in work[:n]:
    terms = ', '.join(f"{h['term']}×{h['count']}" for h in sorted(hard, key=lambda h: -h['count'])[:6])
    print(f"  {t}  {sum(h['count'] for h in hard):4}  {p}  [{terms}]")
PY
