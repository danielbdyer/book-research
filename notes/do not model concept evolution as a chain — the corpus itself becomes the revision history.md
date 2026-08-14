---
description: "Rather than model a concept's development as a version-chain, the reframe distributes its history across its encounters, field notes, and interpretations, so the accumulating corpus is itself the revision history."
category: structure
sources: ["reframe conversation, 2026-08-13, line 17965", "reframe conversation, 2026-08-13, lines 1116-1133"]
topics: ["[[research-frontier]]"]
state: nascent
---

# do not model concept evolution as a chain — the corpus itself becomes the revision history

The conversation makes one architectural decision "very strongly" about the data model that holds the author's research: a concept's development must not be modeled as a version-chain, from concept v1 to v2 to v3, because a chain asserts that conceptual development is fundamentally linear. In place of the chain, the design distributes a concept's history across the relationships the concept already has — its encounters, its field notes, its traditions, and the author's own interpretations — so that the concept's current definition can change while its provenance remains held in those links. The consequence the design draws is that the history need not be encoded as an explicit linked list at all: the accumulating body of dated, related material is itself the revision history, read retrospectively rather than engineered in advance.

The claim answers a tension the author had raised earlier in the same exchange in his own words. He asked whether the "insights building on one another" would have to be modeled "like a linked list," said he did not want to model at that level, and named the pull to do so as an instance of the over-engineering that had repeatedly blocked him from using the system at all. The design resolves the tension by treating each field note as a dated event linked to the concept it touches, so that the developmental arc "simply appears when you look back" rather than being imposed as structure in advance.

## Substantiation

- The prescription, from the section the model titles the most important distinction for the data model: "Do not model the evolution of concepts as a chain" (reframe conversation, 2026-08-13, line 17965), on the ground that a chain "implies that conceptual development is fundamentally linear."
- The distribution and its payoff, quoted from the same section: "The concept's history exists in its relationships... Its provenance remains distributed among encounters, field notes, traditions, and authorial interpretations. You don't need to encode the entire history as an explicit linked list. The corpus itself becomes the revision history."
- The mechanism, from the live exchange the section refers back to: each field note is treated "as an event, dated, linked to the concept it touches," so that "over time, the arc simply appears when you look back"; continuity is carried by "the stable concept node," to which each field note links "with a semantic relationship, maybe reframes, clarifies, complicates," so that one can "query all field notes that reframed" a concept "without a version list" (reframe conversation, 2026-08-13, lines 1116-1133).
- The framing is the model's reconstruction of the system's design and is held as a candidate rather than a settled scheme; what the note records is the design decision and the author-stated tension it answers.

---

Relevant Notes:
- [[the encounter is the fundamental unit where ontology becomes lived]] — the entity the distributed history hangs from, since a concept's provenance is held in its encounters
- [[the field note is the membrane between lived encounter and persistent concept]] — the dated event this design treats as the unit of a concept's history
- [[without an authorial center the corpus is a knowledge graph; with one it becomes a work]] — the entity named immediately after this decision in the same data-model reconstruction, the author who selects among the distributed relationships
- [[an externalized system can be built to hold a self rather than only its information]] — the system this architectural decision is a design rule for
- [[ripeness is not refrigeration]] — the same preference against accumulation-as-storage, a metabolizing record rather than an engineered archive

Topics:
- [[research-frontier]]
