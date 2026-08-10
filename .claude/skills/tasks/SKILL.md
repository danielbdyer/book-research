---
name: tasks
description: View and manage the task stack and processing queue. Shows pending work, active tasks, completed items, and queue state. Triggers on "/tasks", "show tasks", "what's pending", "task list", "queue status".
version: "1.0"
generated_from: "arscontexta-v1.6"
user-invocable: true
context: fork
model: sonnet
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
argument-hint: "[add|done|drop|reorder|status] [description|number] — manage task stack and view queue"
---

**THIS VAULT'S QUEUE (overrides the queue backend below).** The queue is `ops/queue/tasks.md`, a markdown checklist; the standing lists are `candidates.md`, `claim candidates.md`, and `extractions.md` in the same folder, and the reading backlog is `ops/reading queue.md`. No `queue.yaml`, `queue.json`, or `ops/tasks.md` exists and none is ever created — read and write the checklist. Completed entries stay inline, dated, newest first; there is no archive subfolder. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
