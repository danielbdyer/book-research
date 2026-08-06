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
    - privation
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
      - craft
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
      format: "Array of citations, each naming its work and a location within it. Registry anchors use the citation names in the methods registry, e.g. 'atlas §IV', 'first-telling: the offering', 'poems #5'. Completed primary readings cite the work's own stable locators, e.g. 'Gendlin 1964, fn. 13', with the reading record in archive/ as the trace. Works consulted — provenance reconstructions, the mesh grid, author statements, verified web research — are cited in the forms listed in methods.md's Works-consulted section. Every entry carries a location; a bare title with no location is not a citation."
    supports:
      format: "Dormant until placements emerge. Records only manuscript placements the author has explicitly made; the vault never infers a placement from the corpus. Values when used: ch1..ch17, part-i..part-v, front-matter, interlude-1, epilogue."
    treatment:
      format: "Tension category only: the treatment under trial, named exactly, e.g. 'the Plain Water Pass'."
    state:
      format: "How developed the claim is. Two of the five are commonly confused and the vault settled the difference on 2026-08-05: 'nascent' is a seed — the proposition stated, not yet substantiated, waiting on writing. 'privated' is a complete claim incomplete in a specific named way, usually waiting on a reading rather than on writing; it REQUIRES a privation field naming the absence, which is what stops the value being usable as a bare rank."
    privation:
      format: "Required when state is 'privated'; forbidden otherwise. One clause naming exactly what is missing, e.g. 'the primary work behind the standing wave paper has not been read'."
    description_quoting:
      rule: "A description containing a colon MUST be quoted, or the frontmatter will not parse as YAML. The prose register's own habit — a statement, a colon, then its unpacking — makes this the natural sentence to write, and a fifth of the graph carried unparseable frontmatter this way until 2026-08-03. `scripts/queries/frontmatter-parse.sh` catches it."

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
may tag relations that the statement layer has already put into words; in
practice the vault states relations in words alone, and a glyph's absence is
the norm rather than an omission (`ops/decisions.md`).}

---

Relevant Notes:
- [[related claim]] — {a complete clause stating the relation, e.g. "an isomorph: the same completion-requires-witness structure arrived at clinically"}

Topics:
- [[relevant topic map]]
