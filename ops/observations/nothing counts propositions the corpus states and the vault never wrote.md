---
description: Two of the eight propositions the mesh grid treats as load-bearing had no note in the vault while their adversaries were seated, and no counted condition detects that class of defect because every check validates existing notes rather than coverage.
date: 2026-08-05
severity: friction
status: open
---

# nothing counts propositions the corpus states and the vault never wrote

Every maintenance condition the vault runs asks whether the notes it has are well-formed: claims with no topic map, links that no longer resolve, nascent stubs outnumbering the claims filled from them, descriptions that fail a cold read, frontmatter that does not parse. All of them take the note set as given and check its internal health.

None asks whether the corpus states something the note set does not.

That gap surfaced on 2026-08-05 by accident. An outside instrument sorting the roster observed that two of the eight propositions it treats as load-bearing — that selflessness is reached through the fullness of the first person, and that practice and realization are one — had no claim note here, while the vault held seated adversaries against both. Both turned out to be stated plainly and repeatedly in `sources/`. The vault was holding objections to two things it had never written down.

## Why the existing checks cannot see it

A missing note has no frontmatter to fail, no links to dangle, and no map membership to lack. It is not a defective object; it is the absence of an object, and the vault's whole health apparatus is object-shaped. `scripts/queries/coverage.sh` is the nearest thing to an exception and it reports coverage of *sources* by extraction pass, not coverage of propositions by claim.

The cause of the miss is now a directive (`ops/methodology/propositions carry names and images.md`): the pipeline reaches for material attached to a thinker or to a figure, and a proposition attached to neither is invisible to both routes. That explains the two cases. It does not tell anyone how many more there are.

## What would resolve it

Three candidates, none taken here, because a new counted condition is a /rethink proposal with the author's decision:

1. **A per-source proposition audit.** Walk one source with the single question *what does this document assert that no note states?* — expensive, and the only method that actually answers the question rather than approximating it. It is also the natural next use of the extraction queue, which already tracks passes per source.
2. **A negative index.** Maintain, per source, a list of propositions deliberately declined, so that the absence of a note becomes a recorded decision rather than an unexamined gap. `ops/queue/declines.md` does this for material a session read and set aside; it has no entry for material a session never noticed.
3. **Borrow an outside sort.** The two cases were found by an instrument that listed the book's load-bearing claims independently and checked them against the graph. That worked, and it is not repeatable on demand — the vault cannot commission an outside reading every time it wants to know what it is missing.

The honest position for now is the first sentence of this note: the vault knows its notes are healthy and does not know whether they are complete, and those are different questions. Reviewed at the next /rethink alongside `ops/tensions/the metabolic arc is a developmental scheme with no anti-ladder feature.md`, since both are cases of a five-value scheme or a health check doing less than a session assumes it does.
