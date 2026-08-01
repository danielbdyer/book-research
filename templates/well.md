---
_schema:
  entity_type: topic-map
  applies_to: "notes/*.md where type: moc"
  required:
    - description
    - type
  optional:
    - topics
  constraints:
    description:
      max_length: 220
      format: "A complete sentence stating what concern this map gathers."
    type:
      format: "Always 'moc' — the structural marker for a topic map."

# Template fields
description: ""
type: moc
---

# {topic map name — denotative}

{One paragraph in complete sentences: the concern at the center of this map,
what belongs in it, and what does not.}

## Claims in this map

- [[claim one]] — {a complete clause stating why it belongs here}
- [[claim two]] — {a complete clause stating why it belongs here}

## Adjacent maps

{Complete sentences stating where this map's concern meets another's, with
links.}

## What remains

{The open work this map knows about: thin areas, queued extractions, pending
evaluations. An operational surface ends on the move.}

---

Topics:
- [[index]]
