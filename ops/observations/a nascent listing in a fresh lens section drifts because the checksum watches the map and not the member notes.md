---
description: "Twenty-six notes listed as nascent in lens sections had already moved to privated or full, unseen because a section's marker hashes its map and not the states of the notes it lists."
date: 2026-09-02
status: open
severity: gap
---

# a nascent listing in a fresh lens section drifts because the checksum watches the map and not the member notes

The refresh of 2026-09-02 audited every "Nascent, grounding queued" list in the eight families against the notes' current `state:` fields and found twenty-six notes still listed as nascent that readings between 2026-08-24 and 2026-09-02 had moved to `privated` or `full` — seven in the recognition entry, seven in the call and the answering, five in the relational field, three in the container, two in the felt shift, two in the Arc's reader section. Three of those sections carried fresh markers, because a marker hashes the topic map it was read from and the map's text does not change when a member note's state does.

The census already computes a live nascent count per family, so the number was right while the prose was wrong. What would close the gap: a `--drift` mode in `scripts/queries/lens-check.sh` that reports, per family, every link inside a nascent listing whose note is no longer nascent (the audit was a twenty-line script and could be folded in), so the sync pass's promotions become a printed worklist rather than a hand check.
