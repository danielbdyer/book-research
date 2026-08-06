---
description: This page describes the pipeline's six phases, the session rhythm, and the condition-based maintenance rules.
type: manual
generated_from: "arscontexta-0.8.0"
---

# Workflows

## The pipeline

Material moves through six phases. Nothing is written into `notes/` outside them.

1. **Record.** Material lands in `inbox/` (or in `sources/` with an archive note, for documents). No formatting requirements apply at capture time.
2. **Reduce** (`/reduce`). Claims are extracted against the categories in `ops/derivation-manifest.md`. The admission standard applies: extraction is selective, and the reason for a decline is kept.
3. **Reflect** (`/reflect`). New claims get connected: relevant-notes links with stated relations, and topic map membership.
4. **Reweave** (`/reweave`). Older claims that the new material bears on get updated, so the graph stays current rather than stratified.
5. **Verify** (`/verify`). The graph is checked: schema, links, descriptions.
6. **Rethink** (`/rethink`). Periodically, the system itself is reviewed. See [[meta-skills]].

For a single item, run the phases directly. For a batch, `/pipeline` runs them in order, and `/ralph` works the queue with a fresh context per phase.

## The session rhythm

Orient (read the injected orientation, tree, goals, and conditions), work (through the pipeline), persist — four obligations before ending: update `ops/goals.md`; add the session's dated entry to `ops/completed.md` with paths to what it produced; keep `ops/orientation.md` current where the session moved the center; capture friction into `ops/observations/`. The auto-commit hook records the files. The orientation and goals are what the next session reads first; leaving them current is the last task of every session.

## Maintenance conditions

Maintenance responds to conditions, not schedules. The orientation report surfaces them:

| Condition | Response |
|-----------|----------|
| 3 or more inbox items | /reduce or /pipeline |
| 10 or more open observations | /rethink |
| 5 or more operational tensions | /rethink |
| 5 or more unprocessed session records | /remember --mine-sessions |
| qmd missing, or notes newer than the semantic index | `scripts/bootstrap.sh`, or `qmd update && qmd embed` |
| Methodology notes 30 or more days behind config changes | /rethink drift |
| Claims missing topic map membership | /reflect |
| Nascent stubs outnumbering the claims filled from them | fill or decline, per `scripts/queries/nascent-stubs.sh` |
| Wiki links that no longer resolve | fix immediately |

Read [[configuration]] next for the settings behind these behaviors.
