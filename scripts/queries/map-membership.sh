#!/bin/bash
# Reconciles each topic map's membership against the notes' topics: fields,
# without touching the maps. It is a VERIFIER, not a generator, and the
# distinction is deliberate. The maps are not "concern-prose plus a mechanical
# claim-list": each map organizes its claims across hand-curated thematic
# subsections (recognition.md gathers its claims under six different headings;
# tensions.md and interlocutors.md have no flat claim-list at all), and every
# entry carries a bespoke, map-relative gloss that is NOT the claim's own
# description ("the tuesday is the temple" reads "the book's commitment to
# ordinary life as the site of the work" here, against its own note's sentence
# about seating Simone Weil). A generator that filled the lists from topics:
# fields would flatten that curation and swap the relational glosses for the
# claims' descriptions. So this reports the gaps and leaves the writing to a
# session — it gives /reflect an exact worklist instead of a hand reconciliation.
#
# The topics: array is the machine-readable source of truth for membership
# (CLAUDE.md, Writing a claim). Two directions are reported per map:
#
#   MISSING (a true membership gap) — a note whose topics: array declares this
#     map, but whose [[link]] appears nowhere in the map's body. The note claims
#     to belong and the map does not gather it. This is the every-declared-map
#     standard that unconnected-claims.sh deliberately exempts from the counted
#     floor as editorial work; here is where that work is listed.
#
#   REVIEW (usually fine) — a [[note]] the map links that does not declare this
#     map in its topics: array. Most are legitimate cross-references (a claim
#     from an adjacent concern named in prose); occasionally one is a note whose
#     topics: is missing this map. Adjacent-map links (type: moc) and [[index]]
#     are not flagged. Read, do not batch-fix.
#
# Usage: scripts/queries/map-membership.sh [mapname]
#   With no argument, every map. With a mapname (basename, no .md), just that one.
# Run from anywhere.

cd "$(dirname "$0")/../.." || exit 1

python3 - "$@" <<'PY'
import sys, re, pathlib

only = sys.argv[1] if len(sys.argv) > 1 else None

notes = {}
for p in sorted(pathlib.Path("notes").glob("*.md")):
    notes[p.stem] = p.read_text(encoding="utf-8")

def is_map(text):
    return re.search(r'^type: moc', text, re.M) is not None

def declared_topics(text):
    m = re.search(r'^topics: \[(.*)\]$', text, re.M)
    if not m:
        return set()
    return set(re.findall(r'\[\[([^\]|#]+)\]\]', m.group(1)))

def body_links(text):
    # All [[links]] outside the frontmatter block.
    parts = text.split('---', 2)
    body = parts[2] if len(parts) >= 3 else text
    return set(l.strip() for l in re.findall(r'\[\[([^\]|#]+)', body))

maps = {n: t for n, t in notes.items() if is_map(t)}
targets = [only] if only else sorted(maps)

total_missing = 0
total_review = 0
for mp in targets:
    if mp not in maps:
        print(f"  {mp}: not a topic map (or not found)."); continue
    mtext = maps[mp]
    gathered = body_links(mtext)

    # MISSING: notes declaring this map whose link is absent from the map body.
    missing = []
    for n, t in notes.items():
        if n == mp:
            continue
        if mp in declared_topics(t) and n not in gathered:
            missing.append(n)

    # REVIEW: notes the map links that do not declare this map. Exempt maps
    # (adjacent-map cross-refs) and index.
    review = []
    for linked in sorted(gathered):
        if linked not in notes:
            continue                      # dangling — link-check.sh owns that
        if linked == "index" or is_map(notes[linked]):
            continue                      # adjacent-map / index cross-reference
        if mp not in declared_topics(notes[linked]):
            review.append(linked)

    total_missing += len(missing)
    total_review += len(review)
    if missing or review or only:
        print(f"[[{mp}]]  — {len(missing)} missing, {len(review)} to review")
        for n in sorted(missing):
            print(f"    MISSING  [[{n}]] declares {mp} but is not gathered here")
        for n in review:
            print(f"    review   [[{n}]] gathered here but does not declare {mp}")
        print()

print(f"Totals across {len(targets)} map(s): {total_missing} missing (a worklist for /reflect), {total_review} to review.")
if total_missing == 0 and not only:
    print("Every note that declares a map is gathered by that map. Membership is reconciled.")
PY
