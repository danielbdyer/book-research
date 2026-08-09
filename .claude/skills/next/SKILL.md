---
name: next
description: Surface the most valuable next action by combining task stack, queue state, inbox pressure, health, and goals. Recommends one specific action with rationale. Triggers on "/next", "what should I do", "what's next".
version: "1.0"
generated_from: "arscontexta-v1.6"
user-invocable: true
context: fork
model: sonnet
allowed-tools: Read, Grep, Glob, Bash
---

**THIS VAULT'S STATE SURFACES (overrides the generic checks below).** The queue is `ops/queue/tasks.md` (markdown checklist; no queue.yaml or queue.json exists or is created). Observations in `ops/observations/` carry `status: open|resolved|archived` — gather with `^status: open`. There are no session records and no `ops/sessions/` directory: the hook block that wrote one file per session was removed on 2026-08-09 because each file held an identifier, a timestamp and the word "active" and nothing a later session could read, so skip every session check below rather than reporting the directory missing. Thresholds are CLAUDE.md's maintenance table: inbox at 3, open observations at 10, operational tensions at 5, and the map split guideline is roughly 25 within sections. The methodology index is `ops/methodology/methodology.md`; the change record is `ops/decisions.md` plus `ops/rethink-log.md`; create none of the stock files these steps name. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
