#!/bin/bash
# Reports the interlocutor notes crossed on the two axes added 2026-08-05:
# what each thinker carries (load) against where they got their epistemics
# (discipline). The point of the crossing is the empty cells — an empty cell is
# a reading question, not a verdict. The directive is
# ops/methodology/thesis-bearing and company.md; the maintained narrative
# surface is ops/lineage sort.md, and where the two disagree this script is
# right. Run from anywhere; it operates on the repository root.
cd "$(dirname "$0")/../.." || exit 1

LOADS="thesis-bearing adversary independent-arrival names-existing-practice company precedent"
DISCIPLINES="continental-philosophy indic-and-buddhist-primary abrahamic-contemplative african-philosophy clinical empirical-science social-theory systems-and-design poets-and-artists practitioner-pedagogy analytic-philosophy"

echo "== By load =="
for L in $LOADS; do
  NAMES=$(rg -l "^load: ${L}\$" notes/ 2>/dev/null | sed 's|notes/||;s|\.md$||' | sort | paste -sd',' - | sed 's/,/, /g')
  COUNT=$(rg -l "^load: ${L}\$" notes/ 2>/dev/null | wc -l | tr -d ' ')
  printf '  %-24s %3s  %s\n' "$L" "$COUNT" "${NAMES:-—}"
done

echo ""
echo "== Interlocutor notes with no load assigned =="
UNSET=$(rg -l '^category: interlocutor' notes/ 2>/dev/null \
  | while read -r f; do rg -q '^load: [a-z]' "$f" || echo "${f#notes/}"; done \
  | sed 's|\.md$||' | sort | paste -sd',' - | sed 's/,/, /g')
echo "  ${UNSET:-none — every interlocutor carries a load}"

echo ""
echo "== The crossing: load x discipline =="
echo "  A zero is a reading question. Compare against 'The holes, ranked' in ops/lineage sort.md."
for L in $LOADS; do
  echo "  ${L}:"
  for D in $DISCIPLINES; do
    N=$(rg -l "^load: ${L}\$" notes/ 2>/dev/null \
      | while read -r f; do rg -q "^discipline: ${D}\$" "$f" && echo "$f"; done | wc -l | tr -d ' ')
    [ "$N" = "0" ] && MARK="  <- empty" || MARK=""
    printf '    %-28s %3s%s\n' "$D" "$N" "$MARK"
  done
done
