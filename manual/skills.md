---
description: This page lists all sixteen generated commands, what each does, and when to use it.
type: manual
generated_from: "arscontexta-0.8.0"
---

# Skills

Sixteen commands were generated with the vault, in `.claude/skills/`, and are versioned with the repository, so they are available in any session on it. Each reads `ops/derivation-manifest.md` at invocation for this vault's vocabulary and extraction categories.

## Processing

- `/reduce` — extract claims from inbox items or a named source, against the extraction categories, under the admission standard.
- `/reflect` — find connections among recent claims and update the topic maps' claim lists.
- `/reweave` — revisit older claims when new material changes their context, and update them.
- `/verify` — check every note: schema compliance against the templates, wiki links that resolve, descriptions that add information beyond the title.
- `/validate` — the schema check alone, mechanical, no judgment calls.

## Orchestration

- `/seed` — turn a source into extraction tasks, skipping what has already been extracted.
- `/pipeline` — run a source end to end: seed, reduce, reflect, verify.
- `/ralph` — work the task queue with a fresh context per phase; useful for long batches.
- `/tasks` — list, add, and complete queue entries.

## Navigation

- `/stats` — counts: claims by category, notes per topic map, sources by extraction state.
- `/graph` — link structure: most-connected claims, unconnected claims, cross-map bridges.
- `/next` — recommend the next piece of work from the queue and the maintenance conditions.

## Growth and evolution

- `/learn` — outward research on a named topic or candidate, producing material for the inbox.
- `/remember` — capture a correction or lesson from the session into `ops/methodology/`.
- `/rethink` — review accumulated observations and operational tensions; challenge the system's configuration. See [[meta-skills]].
- `/refactor` — implement an approved structural change across the vault.

Read [[workflows]] next for how the processing commands chain.
