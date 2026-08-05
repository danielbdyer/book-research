---
description: "Thirty-three of 159 claims held a description with an unquoted colon, so their frontmatter would not parse as YAML — and no check the vault runs parses YAML, so the defect was invisible."
date: 2026-08-03
severity: failure
status: resolved
resolved_by: "proposal 1 (scripts/queries/frontmatter-parse.sh, plus the colon rule in templates/claim-note.md), approved by the author 2026-08-05"
---

# no check ever parsed a note's frontmatter as yaml

The /verify pass of 2026-08-03 ran a YAML parser over the notes for the first time and found that thirty-three of the 159 claims — twenty-one percent — had frontmatter that would not parse. The cause was identical in all thirty-three: a `description:` value written unquoted and containing a colon followed by a space, which YAML reads as the start of a nested mapping. Examples ran the whole history of the vault, from the generated material of 2026-08-01 (`trust and paralysis are isomers`, `what is recognized cannot be un-recognized`) to notes written the same day the defect was found (`michel henry`, `the crossover has footsteps and the book already seats some of the walkers`). All thirty-three were repaired in the same pass by quoting the value; no prose changed.

The reason it survived is the shape of the vault's own inspection surface. Every structural query in `scripts/queries/` is ripgrep over line patterns, the session hook counts with `rg`, and /verify's own stock checks read fields with pattern matching rather than a parser. A colon inside a description is invisible to all of them, because none of them ever asks whether the document is well-formed. The schema in `templates/claim-note.md` calls `topics:` the machine-readable form and specifies field formats a parser would enforce, but nothing in the vault was the parser.

The consequence is bounded today and unbounded later: nothing currently reads the frontmatter as YAML, so no work was lost. Any future consumer that does — a query script, an export, an editor plugin, a skill that loads a note as structured data — would have failed on a fifth of the graph without an obvious cause. Two things are worth deciding at /rethink: whether a parse check belongs in `scripts/queries/` as a counted maintenance condition alongside the link and topic-map checks, and whether the claim template should say plainly that a description containing a colon must be quoted, since the register's own habit — a statement, then a colon, then its unpacking — makes the defect the natural thing to write.
