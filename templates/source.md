---
_schema:
  entity_type: source
  applies_to: "archive/source — *.md"
  # archive/ holds four record kinds, distinguished by filename prefix.
  # This block governs "source — " records (provenance of documents in
  # sources/); the three sibling kinds are specified under sibling_records
  # below and described in notes/methods.md. Until 2026-08-06 this block
  # claimed all of archive/ while the newer kinds followed no documented
  # schema at all; the "encounter — " kind was added 2026-08-16 on the
  # author's confirmation of the reframe register's Fork 1.
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
    topics:
      format: "Stays an empty array on archive records: they are not claims and join no map's claim list. The Topics footer points at [[methods]], whose source registry is their index."
  sibling_records:
    reading:
      applies_to: "archive/reading — *.md"
      naming: "reading — <author>, <work> (<year>).md"
      required: [description, category, created]
      category_value: source-note
      body: "What was read (edition, whole or in part), the findings with their locators, the questions the reading settled, the works still unread, and the citation grammar claims then use, e.g. 'Gendlin 1964, fn. 13'. Produced when a reading-queue entry completes; the first instance is the Gendlin 1964 record."
    research:
      applies_to: "archive/research — *.md"
      required: [description, source_type, generated]
      optional: [exa_prompt, exa_tool, domain, topics]
      body: "A verified outside sweep: the queries run, what was confirmed or corrected, with citations. Cited in place like a consulted work; gets no registry row."

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
