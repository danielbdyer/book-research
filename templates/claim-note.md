---
_schema:
  entity_type: claim
  applies_to: "notes/*.md"
  required:
    - description
    - topics
  optional:
    - category
    - sources
    - supports
    - state
    - status
    - treatment
  enums:
    category:
      - claim
      - isomorph
      - tension
      - open-question
      - image
      - practice
      - structure
    state:
      - nascent
      - privated
      - full
      - flourishing
      - composting
    status:            # tension category only
      - live
      - treated
      - resolved
  constraints:
    description:
      max_length: 220
      format: "A complete sentence, with a subject, adding information beyond the title. It is the filter-before-read layer and must be parseable with no prior context."
    topics:
      format: "Array of wiki links to topic maps; at least one."
    sources:
      format: "Array of source anchors naming document and location, e.g. 'atlas §IV', 'first-telling: the offering', 'walked VI', 'space-around: around the instrument'."
    supports:
      format: "Dormant until placements emerge. Records only manuscript placements the author has explicitly made; the vault never infers a placement from the corpus. Values when used: ch1..ch17, part-i..part-v, front-matter, interlude-1, epilogue."
    treatment:
      format: "Tension category only: the treatment under trial, named exactly, e.g. 'the Plain Water Pass'."

# Template fields
description: ""
category: claim
sources: []
topics: []
---

# {the claim stated as a complete proposition — this title is the claim}

{The statement layer. Two to six sentences that expound the claim in plain,
complete sentences, parseable with no prior context: what is asserted, what it
rests on, and what follows from it. The corpus is quoted where the phrasing is
itself the finding; every quote is marked and anchored. The vault's own
sentences never borrow the corpus's aphoristic register.}

## Substantiation

{The evidence layer. Where the claim appears, per source, with locations.
Direct quotes belong here, marked as quotes. The atlas's notation (≈ ⚡ ⊖ ⟿)
may tag relations that the statement layer has already put into words.}

---

Relevant Notes:
- [[related claim]] — {a complete clause stating the relation, e.g. "an isomorph: the same completion-requires-witness structure arrived at clinically"}

Topics:
- [[relevant topic map]]
