---
description: Fourteen of the nineteen claims from the lineage sort are nascent because their evidence sits in unread primary works, which trips the nascent-stubs maintenance condition even though every one of them is substantiated work rather than a seed.
date: 2026-08-05
severity: friction
status: resolved
resolved_by: "proposal 3 (state: privated with a required privation field) and proposal 1d (the exemption clause in nascent-stubs.sh), approved by the author 2026-08-05"
---

# nascent claims from a consulted work outrun the stub condition

The pass of 2026-08-05 wrote nineteen claims from the mesh grid, and fourteen carry `state: nascent`. That is the honest value in each case: the grid is a consulted work, its characterizations of Nisbett and Wilson, Britton, Polanyi, Wittgenstein, al-Qushayrī and the rest are not verifiable from anything this vault holds, and the primary readings are queued rather than done. Marking them `full` would claim a substantiation that does not exist.

The maintenance condition reads that state differently. `scripts/queries/nascent-stubs.sh` counts nascent notes and fires when they outnumber the claims filled from them, on the model recorded in `CLAUDE.md`: a nascent stub is a seed — the proposition, the strongest corpus fact, the nearest held material — waiting to be filled or declined. That is what the twelve open-corpus stubs are. It is not what these fourteen are. Each states a full claim with its consequences worked out, its relations glossed, and its constraints on adoption recorded; what is missing is not the writing but a reading in the world.

## Why this is friction rather than a defect

The condition will now fire on a vault that has just done a large piece of work, and it will point a future session at fourteen notes to "fill or decline" that need neither. The likely failure is a session reading the count as a backlog and either padding the notes from the same consulted work — which adds words and no evidence — or declining claims that are sound.

The distinction the condition cannot see is between two kinds of incompleteness. A seed is incomplete in its statement. These are complete in their statement and provisional in their sourcing, which is the same shape as the `privated` value: incomplete in a specific named way, and the way is named in every one of them.

## What would resolve it

Three candidates, none taken here, because a change to a counted condition belongs to /rethink with the author's decision:

1. **Exempt claims whose sources are works consulted rather than project sources**, so the condition counts only seeds. This is the narrowest fix and it has precedent — the claim-list condition already needs an exemption clause for the same reason, recorded in `ops/goals.md` thread 9.
2. **Distinguish the two states in the schema**, so a claim awaiting an outside reading is not the same value as a claim awaiting its own writing. That is a schema change and is more than this warrants.
3. **Leave the condition and let the queue answer it**, since the readings are already ranked at `ops/lineage sort.md` and the queue rows say what each note needs. Cheapest, and it depends on a session reading the queue before the count, which is the order the orientation already asks for.

Related: the same round produced an operational tension at `ops/tensions/the metabolic arc is a developmental scheme with no anti-ladder feature.md`, which is about the `state:` field from the other end — how its values read as a ranking. Both are questions about a five-value scheme doing more work than it was designed for, and they should be reviewed together.
