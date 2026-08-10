---
name: reduce
description: Extract claims from source material against the categories in ops/derivation-manifest.md. This vault runs strict selectivity under the writing test — only material a drafting session would reach for becomes a note, and declines are recorded with reasons. Triggers on "/reduce", "/reduce [file]", "extract insights", "process this".
version: "1.0"
generated_from: "arscontexta-v1.6"
user-invocable: true
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
context: fork
---

**THIS VAULT'S OVERRIDES (read before anything below).** This vault sets `processing.extraction.selectivity: strict` in `ops/config.yaml`, and under `strict` the admission standard replaces the comprehensive-extraction default and skip-rate targets stated below: extract only material that passes the writing test (`ops/methodology/writing test.md`): would a drafting session reach for this — a claim to state, a figure to quote, a mechanism to build against, a fact that decides a manuscript question? "Would it change how the project thinks" is the floor beneath that bar. Record each decline with its reason. Material that only describes the vault's own state routes to `ops/`, and an absence is recorded as one seed, never an essay. Extraction follows the center of gravity (`ops/methodology/center of gravity.md`): the convergence of thinkers and the lived practice are the centerpieces; system vocabulary (triad, primitives, molecules, loops) is scaffolding, extracted as-needed when a convergence or practice requires it, and never used as the taxonomy that organizes new material. A low extraction count from a dense source is the expected result under `strict`, not a bug. Semantic search here is the qmd CLI through Bash (`qmd query "..."`), not an MCP tool. Claim filenames are the claim stated as a lowercase sentence, never numbered. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
