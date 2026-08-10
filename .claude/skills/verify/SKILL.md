---
name: verify
description: Combined verification — recite (description quality via cold-read prediction) + validate (schema compliance) + review (health checks). Use as a quality gate after creating notes or as periodic maintenance. Triggers on "/verify", "/verify [note]", "verify note quality", "check note health".
user-invocable: true
allowed-tools: Read, Write, Edit, Grep, Glob, mcp__qmd__vector_search
context: fork
---

**THIS VAULT'S CONVENTIONS (overrides three stock checks below).** A description here is a complete sentence that ENDS WITH A PERIOD, up to 220 characters (`templates/claim-note.md`); the stock no-trailing-period convention does not apply, and stripping a period is never a fix. Map membership means: listed in a declared map's claims list — maps have no 'Core Ideas' section. Semantic search runs via the qmd CLI; if `.qmd/index.sqlite` is older than the newest note, reindex first or report findability scores as stale. The authoritative cross-field rules (status/treatment on tensions only, privation paired with state: privated, sources required) are checked by `scripts/queries/frontmatter-parse.sh`, and `scripts/queries/strike-links.sh` ranks the body paragraphs thinnest after their links are struck out — candidates for the cold read, never verdicts, because the author has ruled the gesture tic un-regexable. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
