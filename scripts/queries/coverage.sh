#!/bin/bash
# Reports how many claims cite each source document, which is the vault's
# coverage of the corpus. A source with few citations is either thin or
# unextracted; ops/queue/extractions.md says which. Draft sources are listed
# separately because their evidence is read differently — see
# ops/methodology/source standing.md. Run from anywhere.
cd "$(dirname "$0")/../.." || exit 1
# Both YAML quote styles count: live sources arrays use double and single
# quotes, and matching only the double style halved the reported draft
# coverage and hid the poems entirely (audit, 2026-08-06).
count_for () { grep -l "['\"]$1" notes/*.md 2>/dev/null | wc -l | tr -d ' '; }
echo "Claims citing each source:"
echo
echo "  Descriptive sources"
for s in atlas walked first-telling space-around; do
  printf '    %-16s %s\n' "$s" "$(count_for "$s")"
done
echo
echo "  Draft sources"
for s in arc-gloss abridged mythic-os; do
  printf '    %-16s %s\n' "$s" "$(count_for "$s")"
done
echo
echo "  Primary source"
for s in poems; do
  printf '    %-16s %s\n' "$s" "$(count_for "$s")"
done
echo
echo "Claims by category:"
echo
for c in claim structure craft tension isomorph image practice open-question interlocutor; do
  N=$(grep -c "^category: $c\$" notes/*.md 2>/dev/null | grep -v ':0$' | wc -l | tr -d ' ')
  [ "$N" -gt 0 ] && printf '    %-16s %s\n' "$c" "$N"
done
echo
echo "Total notes: $(ls notes/*.md | wc -l | tr -d ' ')  (topic maps included)"
