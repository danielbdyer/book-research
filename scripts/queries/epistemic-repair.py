#!/usr/bin/env python3
"""One-time epistemic-audit removal + reference repair (2026-08-16).

Reads the adjudicated worklist and, across every link-checked location
(notes/, ops/, archive/, provenance/, manual/):
  1. removes any bullet line (- [[X]] ...) whose wiki-link target(s) are all
     leaving nodes -- a discrete relation/claim statement whose target is gone;
  2. de-links every remaining inline [[X]] (and [[X|alias]]) to leaving nodes,
     keeping the visible text so prose grammar and historical records survive
     while the dead edge is removed;
  3. deletes the 163 leaving files from notes/.

Then reports inline de-links inside SURVIVING notes/ (candidates for a human
rewrite) and any topic-map sections left empty. Does not touch git.
Run once; every deletion is recoverable from git history.
"""
import json, os, re, collections

SC = "/tmp/claude-0/-home-user-book-research/7bcc6425-ed1f-5842-816d-3a3a6e7e8d82/scratchpad"
w = json.load(open(f"{SC}/removal-worklist.json"))
leaving = set(w['delete']) | set(w['reading_queue']) | set(w['commonplace']) | set(w['declines'])

LINK = re.compile(r'\[\[([^\]|#]+?)(\|[^\]]+)?\]\]')
def link_targets(s):
    return [m.group(1) for m in LINK.finditer(s)]

def is_map(path):
    try:
        head = open(path, encoding="utf-8").read(400)
    except Exception:
        return False
    return "type: moc" in head

bullet_removed = 0
inline_delinked = 0
files_edited = 0
inline_in_survivor_notes = []   # (path, lineno, [targets])

scan = []
for base in ('notes', 'ops', 'archive', 'provenance', 'manual'):
    for dp, dirs, fs in os.walk(base):
        dirs[:] = [d for d in dirs if d != '.git']
        for f in fs:
            if f.endswith('.md'):
                scan.append(os.path.join(dp, f))

for path in sorted(scan):
    text = open(path, encoding="utf-8").read()
    lines = text.split("\n")
    survivor_note = path.startswith("notes/") and not is_map(path)
    out = []
    changed = False
    for i, ln in enumerate(lines):
        tg = link_targets(ln)
        lv = [t for t in tg if t in leaving]
        if not lv:
            out.append(ln); continue
        stripped = ln.lstrip()
        is_bullet = stripped.startswith("- [[")
        if is_bullet and set(tg) <= leaving:
            bullet_removed += 1; changed = True
            continue                       # drop the whole dead relation bullet
        # de-link inline (or mixed-target bullet): keep visible text, drop edge
        def repl(m):
            global inline_delinked
            t = m.group(1)
            if t in leaving:
                inline_delinked += 1
                alias = m.group(2)
                return alias[1:] if alias else t
            return m.group(0)
        newln = LINK.sub(repl, ln)
        if newln != ln:
            changed = True
            if survivor_note:
                inline_in_survivor_notes.append((path, i + 1, lv))
        out.append(newln)
    if changed:
        files_edited += 1
        open(path, "w", encoding="utf-8").write("\n".join(out))

deleted = 0
for p in sorted(leaving):
    fp = os.path.join("notes", p + ".md")
    if os.path.exists(fp):
        os.remove(fp); deleted += 1

# empty topic-map sections (a heading with no bullets before the next heading)
empty_sections = []
for f in os.listdir("notes"):
    if not f.endswith(".md"):
        continue
    fp = os.path.join("notes", f)
    if not is_map(fp):
        continue
    text = open(fp, encoding="utf-8").read()
    for m in re.finditer(r'^(##+ .+?)\n([\s\S]*?)(?=^##+ |\Z)', text, re.M):
        body = m.group(2)
        if '- [[' not in body and '- [ ]' not in body and len(body.strip()) < 40:
            empty_sections.append((f[:-3], m.group(1).strip()))

print(f"dead relation bullets removed : {bullet_removed}")
print(f"inline links de-linked        : {inline_delinked}")
print(f"files edited                  : {files_edited}")
print(f"leaving files deleted         : {deleted} of {len(leaving)}")
print(f"notes/ remaining              : {len([f for f in os.listdir('notes') if f.endswith('.md')])}")
print(f"\ninline de-links inside SURVIVING notes (review for rewrite): {len(inline_in_survivor_notes)}")
for p, ln, tg in inline_in_survivor_notes:
    print(f"  {p[6:-3]}  L{ln}: {tg}")
print(f"\nempty map sections (tidy): {len(empty_sections)}")
for m, s in empty_sections:
    print(f"  {m} :: {s}")
