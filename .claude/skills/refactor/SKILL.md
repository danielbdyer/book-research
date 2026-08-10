---
name: refactor
description: Plan vault restructuring from config changes. Compares config.yaml against derivation.md, identifies dimension shifts, shows restructuring plan, executes on approval. Triggers on "/refactor", "restructure vault".
version: "1.0"
generated_from: "arscontexta-v1.6"
user-invocable: true
context: fork
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
argument-hint: "[dimension|--dry-run] — focus on specific dimension or preview without approval prompt"
---

**THIS VAULT'S LAYOUT (overrides stock paths below).** Methodology files live in `ops/methodology/` with spaces in their names (no kebab-case); templates live in `templates/` (no `ops/templates/`); the change record is `ops/decisions.md` plus `ops/rethink-log.md` (no `ops/changelog.md`). Structural change here always shows the plan first and records its rationale in the rethink log. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
