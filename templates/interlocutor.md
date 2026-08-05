---
_schema:
  entity_type: interlocutor
  applies_to: "notes/*.md where category: interlocutor"
  required:
    - description
    - category
    - seat
    - topics
  optional:
    - clause
    - load
    - discipline
    - recommendation
    - sources
    - works
  enums:
    seat:
      - facilitation
      - emotion-work
      - speech-acts
      - container-makers
      - coaches
      - source-tradition
      - reference-lineage
      - margin-voices
      - chapter-patron
      - recommended-reading
      - candidate
      - declined
    load:
      - thesis-bearing
      - adversary
      - independent-arrival
      - names-existing-practice
      - company
      - precedent
    discipline:
      - continental-philosophy
      - indic-and-buddhist-primary
      - abrahamic-contemplative
      - african-philosophy
      - clinical
      - empirical-science
      - social-theory
      - systems-and-design
      - poets-and-artists
      - practitioner-pedagogy
      - analytic-philosophy
  constraints:
    description:
      max_length: 220
      format: "A complete sentence stating who this thinker is and what they carry into the book's argument."
    clause:
      format: "The one sentence that justifies the seat — or, for candidates, the draft clause under evaluation."
    recommendation:
      format: "Filled by a completed evaluation: the recommended seat and its one-sentence basis. The seat field stays 'candidate' until the author decides."
    seat:
      format: "The functional seat — what this thinker does for the book; 'candidate' until the author seats them; 'declined' records the refusal with its reason."
    load:
      format: "What this thinker carries — the axis added 2026-08-05 by `ops/methodology/thesis-bearing and company.md`. Orthogonal to seat: a thinker has one of each and neither implies the other. Optional; unset means the question is unanswered, never that the answer is 'company'. The body states where the assignment came from and whether the vault has tested it."
    discipline:
      format: "Where this thinker got their epistemics. Crossed against load in `ops/lineage sort.md` to expose empty cells; an empty cell is a reading question, not a verdict."

# Template fields
description: ""
category: interlocutor
seat: candidate
load:
discipline:
clause: ""
sources: []
works: []
topics: []
---

# {thinker's name}

{Who this thinker is and what they hold, in complete sentences. For candidates:
what this thinker holds in their own terms, where the author sees a crossover,
what this thinker would refuse, and what the evaluation still requires. The
refusal is kept so the thinker survives being cited. End with a recommendation;
the seating decision is the author's.

Where `load:` is set, one sentence says what would happen to the book without
this thinker, and where that assignment came from. A load carried on the mesh
grid's authority alone says so: the cosign is partial, and the grid's sort
allocates reading rather than ranking evidence.}

---

Relevant Notes:
- [[a claim this thinker bears on]] — {a complete clause stating the bearing}

Topics:
- [[interlocutors]]
