---
name: stats
description: Show vault statistics and knowledge graph metrics. Provides a shareable snapshot of vault health, growth, and progress. Triggers on "/stats", "vault stats", "show metrics", "how big is my vault".
version: "1.0"
generated_from: "arscontexta-v1.6"
user-invocable: true
context: fork
model: sonnet
allowed-tools: Read, Grep, Glob, Bash
argument-hint: "[--share] — optional flag for compact shareable output"
---

**THIS VAULT'S STATE SURFACES (overrides the generic counts below).** The queue is `ops/queue/tasks.md`, a markdown checklist counted by `- [ ]` entries. Observations carry `status: open|resolved|archived`; count open ones. There are no session records and no `ops/sessions/` directory, so report no session count: the hook block that wrote one file per session was removed on 2026-08-09, because each file held an identifier, a timestamp and the word "active" and nothing a later session could read. No queue.yaml and no queue.json exist either. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
