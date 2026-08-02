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
  constraints:
    description:
      max_length: 220
      format: "A complete sentence stating who this thinker is and what they carry into the book's argument."
    clause:
      format: "The one sentence that justifies the seat — or, for candidates, the draft clause under evaluation."
    recommendation:
      format: "Filled by a completed evaluation: the recommended seat and its one-sentence basis. The seat field stays 'candidate' until the author decides."
    seat:
      format: "The functional seat; 'candidate' until the author seats them; 'declined' records the refusal with its reason."

# Template fields
description: ""
category: interlocutor
seat: candidate
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
the seating decision is the author's.}

---

Relevant Notes:
- [[a claim this thinker bears on]] — {a complete clause stating the bearing}

Topics:
- [[interlocutors]]
