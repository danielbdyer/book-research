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
    - sources
    - works
  enums:
    seat:
      - room-1-facilitation
      - room-2-mclaren
      - room-3-mechanism
      - room-4-container-makers
      - room-5-coaches
      - porch
      - margins
      - patron
      - satellite
      - candidate
      - declined
  constraints:
    description:
      max_length: 200
      format: "Who they are and what they carry into the field"
    clause:
      format: "The sentence that earns the chair — or, for candidates, the draft clause under evaluation"
    seat:
      format: "Their seat in the guild; 'candidate' until the author seats them; 'declined' records the no with its reason"

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
the case for a seat, the case against, the admission standard applied (would
this actually change how the project thinks?), and what the evaluation still
requires. End with a recommendation; the seating decision is the author's.}

---

Relevant Notes:
- [[a claim this thinker bears on]] — {a complete clause stating the bearing}

Topics:
- [[interlocutors]]
