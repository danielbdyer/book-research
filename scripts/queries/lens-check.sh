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
)

MODE="report"
[ "$1" = "--stale" ] && MODE="stale"
[ "$1" = "--census" ] && MODE="census"

# --- census: derive counts from the file itself, never store them (so they cannot drift) ---
census() {
  local f="$1"
  # register entries = cache markers whose id does NOT end in -src (the -src marker is the
  # family-level "derived from these primary sources" receipt, not a register entry).
  local entries edges attested
  entries=$(grep -oE '<!--\s*cache\s+id=[^ ]+' "$f" 2>/dev/null | grep -vE 'id=[^ ]*-src' | wc -l | tr -d ' ')
  edges=$(grep -ciE '(^|[^a-z])open edge' "$f" 2>/dev/null | tr -d ' ')
  # attested notes = distinct wikilink targets the family has pulled in from the graph.
  attested=$(grep -oE '\[\[[^]]+\]\]' "$f" 2>/dev/null | sort -u | wc -l | tr -d ' ')
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
