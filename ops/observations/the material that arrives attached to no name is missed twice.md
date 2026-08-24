---
description: The eleven notes the intake round of 2026-08-05 left in no topic map at all were disproportionately the propositions that arrive attached to neither a thinker nor an image, which is the same class the extraction pass had already been found to miss.
date: 2026-08-05
severity: friction
status: open
---

# the material that arrives attached to no name is missed twice

The /reflect pass of 2026-08-05 closed 65 map-list gaps left by that day's three intake rounds. The gaps were not evenly serious. Fifty-four were notes listed in one declared map and missing from another — editorial residue, and the note still reachable from the graph. Eleven were notes that appeared in **no** map's claim list at all, which means they were reachable only by following a link from another note and not from any of the three navigation tiers.

Those eleven are not a random eleventh of the round. They include both propositions the mesh grid found load-bearing and unwritten ([[the fullness of the first person is the road to selflessness rather than its obstacle]], [[the practice is the expression of realization rather than a means to it]]), both mechanisms for the question the book's whole promise now turns on ([[an enormous experience is interpreted by the structure it did not change]], [[the plasticity window reorganizes only what attention is on]]), and the premise underneath the book's own title (the title presupposes lines that develop at different rates).

That list is recognizable. It is the same class of material named in `ops/methodology/propositions carry names and images.md`, adopted the same day: the pipeline reaches for material attached to a thinker or to an image, so a proposition attached to neither is invisible to both routes. What this pass adds is that the blind spot operates twice on the same material and at two different stages. A proposition with no chair and no figure is missed at extraction because there is no name to extract it behind; and once written, it is missed at filing because there is no chair or figure section for it to be listed in. The interlocutor notes from the same round all landed in `interlocutors` correctly — each one is a name, and the map that gathers names took it. The claims that were nobody's landed nowhere.

The mechanism is worth stating plainly, because it makes the failure predictable rather than accidental. Every map has obvious homes for material attached to a person (a roster section, a seated-thinkers list) and for material attached to a figure (an image system section). A claim that is a bare proposition about the book's own commitments has no such slot, so the pass that writes it has nowhere habitual to put it, and it gets a `topics:` array and no list entry. The fix applied today was to build the sections — `book-structure` gained "What the object presupposes, and what it has no device for", `recognition` gained "Why an arrival does not persist" — which is the right fix for these eleven and does not generalize on its own.

## What this does not settle

Whether anything upstream should change. The counted condition added today detects this shape after the fact and is enough to keep it from persisting; the question is whether the intake passes should be filing as they go, given that /reduce writes the `topics:` array and /reflect owns the list, and the gap between them is exactly one pass long. The evidence for leaving it alone is that today's fix took one pass and produced better map sections than a per-note filing would have, because writing fourteen sections at once let each one state what the group contributes rather than what each note says. The evidence against is that the eleven sat unreachable for the interval, and the interval is only bounded by when someone runs the pass.

Recorded for /rethink rather than acted on, since changing where filing happens in the pipeline is a structural change.
