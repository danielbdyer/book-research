---
name: pipeline
description: End-to-end source processing -- seed, reduce, process all claims through reflect/reweave/verify, archive. The full pipeline in one command. Triggers on "/pipeline", "/pipeline [file]", "process this end to end", "full pipeline".
version: "1.0"
generated_from: "arscontexta-v1.6"
user-invocable: true
context: fork
model: sonnet
allowed-tools: Read, Write, Edit, Grep, Glob, Bash, Task
argument-hint: "[file] — path to source file to process end-to-end"
---

**THIS VAULT'S EXTRACTION STANDARD (overrides the yield language below).** Admission is strict, governed by the writing test (`ops/methodology/writing test.md`) and the extraction categories in `ops/derivation-manifest.md`: a note earns its place by supplying something writing can use. A low or zero extraction count from a source is a valid result under this standard, not a bug, and count alone never triggers a retry — the stock 'TFT' yield rules below belong to the upstream engine's domain, not to this vault. The queue is `ops/queue/tasks.md` and the standing lists beside it; no queue.yaml or queue.json exists or is created. Notes follow `templates/claim-note.md`. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
