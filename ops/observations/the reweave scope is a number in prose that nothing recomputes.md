---
description: The backward pass was queued against "nine notes with no inbound links from any claim"; the measured count on the day it ran was seventeen, because no query reports that set and the number had been written into prose by hand.
date: 2026-08-05
severity: friction
status: open
---

# the reweave scope is a number in prose that nothing recomputes

The /rethink of 2026-08-05 left one item of work and stated its size: "the /reweave scoped to the nine notes with no inbound links from any claim." When the pass ran, the actual count was seventeen. Nothing had gone wrong in between — no notes were added, and the intervening /reflect pass added links from maps rather than from claims, exactly as the queue entry said it would. The nine was a hand count made while reasoning about something else, and it entered `ops/goals.md` as a fact.

The gap matters less for its size than for what it reveals about the shape of the work. A session that trusted the number would have stopped at nine and left eight notes unreachable from the graph, and it would have had no way to notice: the three membership checks in `scripts/queries/unconnected-claims.sh` all report clean on this vault, because every one of the seventeen was listed in a map's claim list. The defect the reweave exists to fix is invisible to every check the vault runs.

That is by design and the design says so. The header of `unconnected-claims.sh` states the exemption in its own words — a note whose only inbound links are from maps is not an unconnected claim, "that is /reweave's question and is not counted here." The exemption is right. What is missing is the other half: /reweave's question is not counted anywhere either. So the backward pass has to reconstruct its own target set from scratch on every run, by hand, and both runs so far have done exactly that — 2026-08-03 found the crossover chairs at "exactly one inbound link apiece, from the interlocutors map, and none from any claim," and today found seventeen where the record said nine.

## The pattern this belongs to

This vault has now diagnosed the same shape three times, and the third instance is the one that names it. A fifth of the graph carried unparseable frontmatter because nothing parsed frontmatter (`no check ever parsed a note's frontmatter as yaml.md`). Seven claims declared a map that did not carry them because nothing crossed the two directions (`a claim can declare two maps and be listed by one.md`). And now: a defect the vault has a name for, a phase dedicated to, and a maintenance table that does not list it. In each case the vault knew the concept and had no query, and in each case the count in prose was wrong in the direction of "less work than there is."

The measured cost this time was small because the pass recomputed rather than trusting. The cost of trusting would have been eight notes left where the intake put them.

## What would resolve it

The narrow fix is a fourth check, in its own script rather than in `unconnected-claims.sh`, since the two conditions answer different questions and the existing script's exemption clause is what keeps it usable: report notes with **zero inbound wiki links from any non-map note**, which is the set /reweave takes as its floor. It is the same three lines of Python the other checks use, and the number it returns is the one the queue should carry instead of a hand count.

Two design questions belong with it and neither is a session's to settle:

1. **Whether it is a counted condition or a query run on demand.** The maintenance table's conditions fire at session start and are meant to be actionable immediately. Zero-inbound is not always work — a note written today has not had time to be linked to, and the last two rounds both created their orphans on the day they created the notes. A threshold on age, or a rule that it only counts notes older than the most recent intake, would keep it from firing on healthy new material.
2. **Whether thin counts as orphaned.** The floor is zero, but the 2026-08-03 pass treated "one inbound, from a map" as the same defect, and it was right to. A second tier — inbound only from maps — would report the notes that are reachable by walking down and never across. On this vault that would currently report a much larger number, so it should be sized before it is proposed.

Related: `nascent claims from a consulted work outrun the stub condition.md` and `a claim can declare two maps and be listed by one.md` both end in the same place — a counted condition needs an exemption clause derived from measurement, not from principle. If the check above is adopted, it should be sized on the graph before its threshold is set, for the reason the exemption clause of 2026-08-05 was: the naive count fired 65 where the schema floor fired 11.
