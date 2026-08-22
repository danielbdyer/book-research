#!/bin/bash
# The governor for the polyphony of lenses.
#
# `the-lenses.md` indexes a set of FAMILY FILES — `the-loci.md`, `the-axioms.md`,
# and any others authored the same way — each a hand-written deep read of one way
# to organize the book, sitting on the same content-hash substrate as the scaffold.
# Every register entry in a family file carries an inline cache marker naming the
# vault files it was read from and a CRC32 of their CONTENT; when a source moves,
# the entry that rests on it goes EXPIRED and no other does.
#
# This script sweeps every family file at once and reports, per family:
#   - which register entries still hold (FRESH) and which rest on moved ground (EXPIRED),
#     by delegating the per-file CRC walk to scaffold-check.sh (one CRC engine, not two);
#   - a CENSUS — how many entries, how many notes the family has actually pulled in
#     (attested `[[wikilinks]]`), and how many OPEN EDGES stand un-admitted.
#
# The census is the bound the author asked for. The open edge is a candidate INBOX,
# not a backlog: a locus's or axiom's open edge feeds the reading queue, and a human
# promotes a candidate to a member. So a large open-edge count is health (a live
# frontier), UNLESS it grows while attested notes do not — that is collecting without
# admitting, the failure mode, and this census is where it becomes visible and countable.
#
# The check is meant to be the trigger for any per-family workflow: a workflow
# re-derives only the EXPIRED entries a sweep names, never the whole layer on a timer.
# Read-only; it writes nothing.
#
# Usage:
#   scripts/queries/lens-check.sh           sweep all family files; per-family FRESH/EXPIRED + census
#   scripts/queries/lens-check.sh --stale   print only "family: entry-id" for every expired entry (the worklist)
#   scripts/queries/lens-check.sh --census  print only the census table (no CRC walk)
# Run from anywhere.

cd "$(dirname "$0")/../.." || exit 1
CHECK="scripts/queries/scaffold-check.sh"

# The manifest of family files. A new family authored from the catalog is added here
# (and given inline cache markers + a baseline line) so the sweep covers it.
FAMILIES=(
  "the-loci.md"
  "the-axioms.md"
  "the-paradoxes.md"
  "the-constellation.md"
  "the-two-books.md"
  "the-arc.md"
  "the-concerns.md"
  "the-making.md"
)

MODE="report"
[ "$1" = "--stale" ] && MODE="stale"
[ "$1" = "--census" ] && MODE="census"
[ "$1" = "--coverage" ] && MODE="coverage"
[ "$1" = "--uncovered" ] && MODE="uncovered"

# --- coverage: which notes in the graph is NO family referencing yet? ---
# The substrate pivot's instrument. A note is "covered" when at least one family
# file wikilinks it as a member. --coverage prints the summary count (the number
# the author is driving toward zero); --uncovered prints the worklist itself — the
# claims no family has reached — which is exactly the reading/authoring frontier the
# inverted flow feeds on. Maps (type: moc) are reported separately, since an index
# is an organizing structure, not a node a family is expected to attest.
if [ "$MODE" = "coverage" ] || [ "$MODE" = "uncovered" ]; then
  python3 - "$MODE" "${FAMILIES[@]}" <<'PY'
import sys, os, re, glob
mode = sys.argv[1]
families = sys.argv[2:]
ref = set()
for f in families:
    if not os.path.exists(f):
        continue
    txt = re.sub(r"```.*?```", "", open(f, encoding="utf-8").read(), flags=re.S)
    for m in re.finditer(r"\[\[([^\]]+)\]\]", txt):
        ref.add(m.group(1).strip())
notes = sorted(glob.glob("notes/*.md"))
covered_claims = uncovered_claims = covered_mocs = uncovered_mocs = 0
uncovered_titles = []
for n in notes:
    title = os.path.basename(n)[:-3]
    try:
        head = open(n, encoding="utf-8").read(2000)
    except Exception:
        head = ""
    is_moc = bool(re.search(r'^type:\s*moc', head, re.M))
    covered = title in ref
    if is_moc:
        if covered: covered_mocs += 1
        else: uncovered_mocs += 1
    else:
        if covered:
            covered_claims += 1
        else:
            uncovered_claims += 1
            uncovered_titles.append(title)
total_claims = covered_claims + uncovered_claims
# The coverage baseline lives inline in the index (the-lenses.md), like every other
# marker in this system: <!-- coverage-baseline uncovered=N derived=DATE -->. A rising
# uncovered count means research added notes no family has absorbed — the sync gap. The
# baseline is only advanced when a coverage pass folds new notes into families, so a
# regression fires until the families catch up, then goes quiet.
baseline = None
try:
    idx = open("the-lenses.md", encoding="utf-8").read()
    mb = re.search(r"<!--\s*coverage-baseline\s+uncovered=(\d+)", idx)
    if mb:
        baseline = int(mb.group(1))
except Exception:
    pass
if mode == "coverage":
    pct = (covered_claims * 100 // total_claims) if total_claims else 0
    print(f"family coverage — claims referenced by at least one family:")
    print(f"  {covered_claims}/{total_claims} claims covered ({pct}%)  ·  {uncovered_claims} not yet referenced")
    print(f"  (maps: {covered_mocs} covered, {uncovered_mocs} not — an index is not a node a family must attest)")
    if baseline is None:
        print(f"  (no coverage baseline recorded in the-lenses.md — add <!-- coverage-baseline uncovered={uncovered_claims} derived=DATE -->)")
    elif uncovered_claims > baseline:
        print(f"  REGRESSED: uncovered {baseline}→{uncovered_claims} (+{uncovered_claims-baseline}) — new notes are in no family; run --uncovered, absorb them, then re-baseline")
    elif uncovered_claims < baseline:
        print(f"  improved: uncovered {baseline}→{uncovered_claims} (-{baseline-uncovered_claims}) — update the baseline in the-lenses.md to {uncovered_claims}")
    else:
        print(f"  in sync with the baseline ({baseline}) — no new uncovered notes since the last coverage pass")
    print(f"  → the number to drive toward zero is {uncovered_claims}; run --uncovered for the worklist")
else:
    print(f"# {uncovered_claims} claims not yet referenced by any family (the substrate-pivot worklist):")
    for t in uncovered_titles:
        print(t)
PY
  exit 0
fi

# --- census: derive counts from the file itself, never store them (so they cannot drift) ---
census() {
  local f="$1"
  local body entries edges attested
  # Strip fenced ``` code blocks first, exactly as scaffold-check.sh does before its
  # marker walk, so an illustrative marker or [[example]] inside a fence is not counted.
  # (Without this the census and the FRESH/EXPIRED walk could disagree — a real bug.)
  body=$(python3 - "$f" <<'PY'
import sys, re
try:
    print(re.sub(r"```.*?```", "", open(sys.argv[1], encoding="utf-8").read(), flags=re.S))
except Exception:
    pass
PY
)
  # register entries = cache markers whose id does NOT end in -src (the -src marker is the
  # family-level "derived from these primary sources" receipt, not a register entry).
  entries=$(printf '%s' "$body" | grep -oE '<!--\s*cache\s+id=[^ ]+' | grep -vE 'id=[^ ]*-src' | wc -l | tr -d ' ')
  edges=$(printf '%s' "$body" | grep -ciE '(^|[^a-z])open edge' | tr -d ' ')
  # attested notes = distinct wikilink targets the family has pulled in from the graph.
  attested=$(printf '%s' "$body" | grep -oE '\[\[[^]]+\]\]' | sort -u | wc -l | tr -d ' ')
  printf '%s|%s|%s' "$entries" "$attested" "$edges"
}

if [ "$MODE" = "census" ]; then
  printf '%-22s %8s %10s %11s\n' "family" "entries" "attested" "open-edges"
  for f in "${FAMILIES[@]}"; do
    [ -f "$f" ] || continue
    IFS='|' read -r e a g <<< "$(census "$f")"
    printf '%-22s %8s %10s %11s\n' "$f" "$e" "$a" "$g"
  done
  exit 0
fi

any_expired=0
missing=""
for f in "${FAMILIES[@]}"; do
  if [ ! -f "$f" ]; then
    missing="$missing $f"
    continue
  fi

  if [ "$MODE" = "stale" ]; then
    # prefix every expired entry id with the family name
    while IFS= read -r id; do
      [ -n "$id" ] && { echo "$f: $id"; any_expired=1; }
    done < <(bash "$CHECK" --stale --file "$f" 2>/dev/null)
    continue
  fi

  echo "════ $f ════"
  out=$(bash "$CHECK" --file "$f" 2>/dev/null)
  echo "$out"
  echo "$out" | grep -q '^EXPIRED' && any_expired=1
  IFS='|' read -r e a g <<< "$(census "$f")"
  echo "  census: $e register entries · $a attested notes (exact) · $g open-edge mentions (proxy for the frontier that feeds the reading queue)"
  echo ""
done

if [ "$MODE" = "stale" ]; then
  [ "$any_expired" -eq 0 ] && echo "# no expired entries across the polyphony"
  exit 0
fi

[ -n "$missing" ] && echo "not yet built (in the manifest, no file):$missing"
if [ "$any_expired" -eq 0 ] && [ -z "$missing" ]; then
  echo "— the polyphony holds — every family's register rests on unmoved ground —"
fi
