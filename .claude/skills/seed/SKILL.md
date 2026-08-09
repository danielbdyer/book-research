---
name: seed
description: Register a source for processing. In this vault that means a provenance note in archive/, a citation name in the registry, and extraction entries in ops/queue/extractions.md; sources/ files are never moved. Triggers on "/seed", "/seed [file]", "queue this for processing".
version: "1.0"
generated_from: "arscontexta-v1.6"
user-invocable: true
context: fork
model: sonnet
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
argument-hint: "[file] — path to source file to seed for processing"
---

**THIS VAULT'S LAYOUT (overrides the generic steps below).** Source documents live in `sources/` and are never moved; `sources/` is immutable. Provenance notes live in `archive/`, named `source — <short title>.md`, from `templates/source.md`. The queue is `ops/queue/tasks.md` (a markdown checklist) plus the two standing lists `ops/queue/candidates.md` and `ops/queue/extractions.md`; do not create `queue.yaml` or `queue.json`. Claim notes in `notes/` are named as the claim stated as a lowercase sentence, never numbered — the `{source}-NNN` pattern below may name task files inside `ops/queue/` only, never a note in `notes/`. Where a step below conflicts with this block, skip the step and add a checklist entry to `ops/queue/extractions.md` naming the regions to extract instead. When naming those regions, apply the writing test (`ops/methodology/writing test.md`): name the regions a drafting session would reach into — the concepts, figures, phrases, and decision-relevant facts — not regions of commentary about the project's own state. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
