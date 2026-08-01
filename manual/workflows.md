---
description: The pipeline's six phases, the session rhythm, and the condition-based maintenance rules.
type: manual
generated_from: "arscontexta-0.8.0"
---

# Workflows

## The pipeline

Material moves through six phases. Nothing is written into `notes/` outside them.

1. **Record.** Material lands in `inbox/` (or `sources/` with an archive note, for documents). No formatting requirements.
2. **Reduce** (`/reduce`). Claims are extracted against the categories in `ops/derivation-manifest.md`. The admission standard applies: extraction is selective, and the reason for a decline is kept.
3. **Reflect** (`/reflect`). New claims get connected: relevant-notes links with stated relations, and topic map membership.
4. **Reweave** (`/reweave`). Older claims that the new material bears on get updated, so the graph stays current rather than stratified.
5. **Verify** (`/verify`). The graph is checked: schema, links, descriptions.
6. **Rethink** (`/rethink`). Periodically, the system itself is reviewed. See [[meta-skills]].

For a single item, run the phases directly. For a batch, `/pipeline` runs them in order, and `/ralph` works the queue with a fresh context per phase.

## The session rhythm

Orient (read the injected tree, goals, and conditions), work (through the pipeline), persist (update `ops/goals.md`, capture friction into `ops/observations/`, let the auto-commit hook record the files). The goals file is what the next session reads first; leaving it current is the last task of every session.

## Maintenance conditions

Maintenance responds to conditions, not schedules. The orientation report surfaces them:

| Condition | Response |
|-----------|----------|
| 3 or more inbox items | /reduce or /pipeline |
| 10 or more observations | /rethink |
| 5 or more operational tensions | /rethink |
| 5 or more unprocessed session records | /remember --mine-sessions |
| Claims missing topic map membership | /reflect |
| Wiki links that no longer resolve | fix immediately |

Next: [[configuration]] for the settings behind these behaviors.
