---
name: remember
description: Capture friction as methodology notes. Three modes — explicit description, contextual (review recent corrections), session mining (scan transcripts for patterns). Triggers on "/remember", "/remember [description]".
version: "1.0"
generated_from: "arscontexta-v1.6"
user-invocable: true
context: fork
model: sonnet
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
---

**THIS VAULT'S RECORDS (overrides the stock paths below).** The methodology index is `ops/methodology/methodology.md` — never create an `ops/methodology.md` file; a correction becomes its own file in `ops/methodology/` with spaces in its name, matching the folder's convention. **The session-mining mode is retired and its steps below do not run.** There are no session records and no `ops/sessions/` directory: the hook block that wrote one file per session was removed on 2026-08-09, because each file held a session identifier, a timestamp and the word "active" and nothing a later session could read, so the mode had no input and never had one. A correction the author makes in conversation is captured from the conversation, which is what the explicit and contextual modes already do; `--mine-sessions` reports that the mode is retired and stops. New observations carry `status: open` per `templates/observation.md`. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
