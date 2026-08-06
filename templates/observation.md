---
_schema:
  entity_type: observation
  applies_to: "ops/observations/*.md"
  required:
    - description
    - date
    - status
  optional:
    - severity
    - resolved_by
  enums:
    severity:
      - friction
      - failure
      - idea
      - gap
    status:
      - open
      - resolved
      - archived
  constraints:
    description:
      max_length: 200
      format: "The friction signal in one sentence"
    status:
      format: "The lifecycle /rethink runs and the session hook counts: open observations are work, resolved ones name what closed them, archived ones were verified closed. The hook's maintenance condition counts only status: open."
    resolved_by:
      format: "What closed it, with the date: a decisions row, an approved /rethink proposal, or a session's fix, e.g. 'the 2026-08-05 concordance-row decision'."

# Template fields
description: ""
date: ""
status: open
severity: friction
---

# {what happened, as a proposition}

{One atomic operational observation: what the vault's process did that ground
against reality. Input to /rethink. Not book content — that goes to notes/ through the pipeline.}
