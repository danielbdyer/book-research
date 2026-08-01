---
_schema:
  entity_type: observation
  applies_to: "ops/observations/*.md"
  required:
    - description
    - date
  optional:
    - severity
  enums:
    severity:
      - friction
      - failure
      - idea
  constraints:
    description:
      max_length: 200
      format: "The friction signal in one sentence"

# Template fields
description: ""
date: ""
severity: friction
---

# {what happened, as a proposition}

{One atomic operational observation: what the vault's process did that ground
against reality. Input to /rethink. Not book content — that goes to notes/ through the pipeline.}
