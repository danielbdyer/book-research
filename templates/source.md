---
_schema:
  entity_type: source
  applies_to: "archive/*.md"
  required:
    - description
    - source_file
    - status
  optional:
    - extracted
    - topics
  enums:
    status:
      - unprocessed
      - tasks-created
      - partially-extracted
      - extracted
  constraints:
    description:
      max_length: 220
      format: "A complete sentence stating what this source is and what register it speaks in."
    source_file:
      format: "Path into sources/, e.g. 'sources/the whole field - gravitational atlas.pdf'."
    extracted:
      format: "Array of wiki links to claims extracted from this source"

# Template fields
description: ""
source_file: ""
status: unprocessed
extracted: []
topics: []
---

# {source title}

{Provenance, in complete sentences: what this document is, where it came from,
how it is structured, and how it relates to its sibling sources. State what has
been extracted from it and what a future extraction pass should look for.}

---

Topics:
- [[methods]]
