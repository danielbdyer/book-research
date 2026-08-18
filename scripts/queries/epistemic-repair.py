#!/usr/bin/env python3
"""One-time epistemic-audit removal + reference repair (2026-08-16).

Reads the adjudicated worklist and:
  1. removes every footer/claim-list bullet line whose wiki-link target is a
     leaving node, across all surviving notes and all topic maps (SAFE: a bullet
     is a discrete relation statement; removing it removes a relation whose
     target no longer exists);
  2. deletes the 163 leaving files;
  3. reports residual inline wiki-links to leaving nodes (prose links needing a
     human rewrite) and any topic-map sections left empty.

It does NOT touch inline prose links or git; those are handled by hand after.
Run once; recoverable from git.
"""
import json, os, re, collections

SC = "/tmp/claude-0/-home-user-book-research/7bcc6425-ed1f-5842-816d-3a3a6e7e8d82/scratchpad"
w = json.load(open(f"{SC}/removal-worklist.json"))
leaving = set(w['delete']) | set(w['reading_queue']) | set(w['commonplace']) | set(w['declines'])
repair = w['repair']          # survivor -> [leaving targets]
mapclean = w['mapclean']      # map -> [leaving targets]

NOTES = "notes"
def targets_of(line):
    return re.findall(r'\[\[([^\]|#]+?)(?:\|[^\]]+)?\]\]', line)

bullet_removed = 0
files_touched = 0
inline_residual = []          # (file, lineno, targetset)
empty_sections = []           # (mapfile, section)

# process every file that references a leaving node (survivors + maps)
to_process = set(repair.keys()) | set(mapclean.keys())
for name in sorted(to_process):
    fp = os.path.join(NOTES, name + ".md")
    if not os.path.exists(fp):
        continue
    lines = open(fp, encoding="utf-8").read().split("\n")
    out = []
    changed = False
    cur_section = None
    section_start_idx = None
    kept_in_section = 0
    for i, ln in enumerate(lines):
        if ln.startswith("## ") or ln.startswith("# "):
            cur_section = ln
        stripped = ln.lstrip()
        is_bullet = stripped.startswith("- [[") or stripped.startswith("- [ ] [[")
        tg = targets_of(ln)
        leaving_tg = [t for t in tg if t in leaving]
        if is_bullet and leaving_tg and len(tg) == len([t for t in tg if t in leaving]):
            # a relation/claim bullet whose (only) target(s) are leaving -> remove line
            bullet_removed += 1
            changed = True
            continue
        # inline prose (or a bullet that also names surviving targets): flag residual
        if leaving_tg and not (is_bullet and set(tg) <= leaving):
            inline_residual.append((name, i + 1, leaving_tg))
        out.append(ln)
    if changed:
        files_touched += 1
        open(fp, "w", encoding="utf-8").write("\n".join(out))

# delete the leaving files
deleted = 0
for p in sorted(leaving):
    fp = os.path.join(NOTES, p + ".md")
    if os.path.exists(fp):
        os.remove(fp); deleted += 1

# detect empty map sections (a heading immediately followed by another heading / end, no bullets between)
for m in mapclean:
    fp = os.path.join(NOTES, m + ".md")
    if not os.path.exists(fp):
        continue
    text = open(fp, encoding="utf-8").read()
    for sec in re.finditer(r'^(##+ .+)$([\s\S]*?)(?=^##+ |\Z)', text, re.M):
        body = sec.group(2)
        if '- [[' not in body and '- [ ]' not in body and sec.group(1).count('#') >= 2:
            # heading with no remaining bullet entries
            if re.search(r'\w', body.replace(sec.group(1), '')) is None or len(body.strip()) < 3:
                empty_sections.append((m, sec.group(1).strip()))

print(f"bullet relation/claim lines removed: {bullet_removed}")
print(f"survivor+map files edited: {files_touched}")
print(f"leaving files deleted: {deleted} of {len(leaving)}")
print(f"notes/ remaining: {len([f for f in os.listdir(NOTES) if f.endswith('.md')])}")
print(f"\nRESIDUAL inline prose links to hand-fix: {len(inline_residual)}")
res_by_file = collections.defaultdict(list)
for f, ln, tg in inline_residual:
    res_by_file[f].append((ln, tg))
for f in sorted(res_by_file):
    print(f"  {f}")
    for ln, tg in res_by_file[f]:
        print(f"      L{ln}: {tg}")
print(f"\nEMPTY map sections (tidy candidates): {len(empty_sections)}")
for m, s in empty_sections:
    print(f"  {m} :: {s}")
