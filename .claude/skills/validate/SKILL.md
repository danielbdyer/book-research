---
name: validate
description: Schema validation for notes. Checks against domain-specific templates. Validates required fields, enum values, description quality, and link health. Non-blocking — warns but doesn't prevent capture. Triggers on "/validate", "/validate [note]", "check schema", "validate note", "validate all".
user-invocable: true
allowed-tools: Read, Grep, Glob
context: fork
model: sonnet
---

**THIS VAULT'S CONVENTIONS (overrides the stock description rules below).** A description is a complete sentence ending with a period, up to 220 characters, per `templates/claim-note.md`; `scripts/queries/frontmatter-parse.sh` is the enforcing instrument and its enums are the templates'. The queue is `ops/queue/tasks.md`; no queue.yaml or queue.json exists. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
