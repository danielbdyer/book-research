---
name: reweave
description: Update old notes with new connections. The backward pass that /reflect doesn't do. Revisit existing notes that predate newer related content, add connections, sharpen claims, consider splits. Triggers on "/reweave", "/reweave [note]", "update old notes", "backward connections", "revisit notes".
user-invocable: true
allowed-tools: Read, Write, Edit, Grep, Glob, Bash, mcp__qmd__search, mcp__qmd__vector_search, mcp__qmd__deep_search, mcp__qmd__status
context: fork
---

**THIS VAULT'S CONVENTIONS (overrides the stock structures below).** Notes follow `templates/claim-note.md`; maps have a claims list with complete-clause glosses, Adjacent maps, and What remains — no Core Ideas or Gaps sections. The queue is `ops/queue/tasks.md` (markdown checklist; no queue.yaml/queue.json). Observation status values are open/resolved/archived. Semantic search runs via the qmd CLI. When new material changes an older claim's context, the backfill states the new fact with its date and address rather than deleting the old sentence silently. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
