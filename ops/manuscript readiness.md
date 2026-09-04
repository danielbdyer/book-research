# Manuscript readiness

<!-- What "done enough to write" means, asked by the author on 2026-08-05 and answered here as conditions rather than as a threshold. The placement act is his; this file exists so the vault knows what it owes him before he performs it. Reasoning is in this file rather than in ops/rethink-log.md because no configuration changed — the last section is a proposal awaiting his decision. -->

## The question, and why the obvious answer is wrong

The author asked when the research repository is done enough that he is ready to write. The obvious answer — when the holes are filled and the readings done — is wrong twice. It is unreachable, since every reading opens two more; and it is the failure mode the vault already names, where the held container becomes the room in which a word can be perfected forever (the perfectible conversation is the manuscript's most comfortable room).

The frame that works is smaller. **Readiness is a property of one piece of writing, not of the vault.** The author never needs the whole graph finished. He needs one thing writable, and the corpus's own recommendation has said so from the start: one chapter, fully treated, sent to two real readers ([[seventeen chapters rest at madhyama]]). What that one thing *is* — which cluster, under what name — is deliberately not settled here; see the measurement section below for why the first attempt to settle it was an error.

## The six conditions

A piece of writing is ready when the vault holds all six for it, whatever that piece turns out to be called. Each is stated so that it could be checked rather than felt.

1. **Its propositions are stated and sourced.** Every claim it rests on exists as a note, with locations in `sources/`. A proposition the unit asserts that no note carries is the class the vault demonstrably misses (`ops/methodology/propositions carry names and images.md`).

2. **Its load-bearing names — what a thinker carries for the book's argument — are read rather than merely chaired.** This condition became urgent on 2026-08-05, when twenty-six chairs, each thinker's page in `notes/` recording what that thinker does for the book and where they part from it, were written from consulted works in a single day. A chair built that way records what the vault *expects* a thinker to hold and refuse; both expectations belong to the document that supplied them. Drafting on a chair in that state is drafting on an expectation. The measurable form: no claim it depends on carries `state: privated` with a privation naming an unread work.

3. **Its refusals are recorded.** Each thinker it names keeps intact the one point where they part from the book, so the citation does not flatten them — the rule from `ops/methodology/authorial stance.md`, which holds that a finger with its refusal removed is no longer that thinker's finger.

4. **Its tensions — disagreements inside the book's doctrine, kept open in a note rather than resolved — are visible and marked as not to be resolved.** The author resolves a tension in the writing, deliberately. What the vault owes is that he can see which sentences would close one by accident.

5. **Its adversary is seated — admitted by the author into a role recorded on that thinker's page — or the absence is named.** He should know where the thin ice is before he writes over it. When this file was written, four of the book's load-bearing claims had no adversary at all; three of the four now have adversary evaluations written and none of them read — the felt shift (Nisbett and Wilson, Schwitzgebel, and the reseated Katz), the participation law (Gellner), the Stance (Britton) — and the pre/trans distinction still has nobody seated against it. Writing over one of those is a decision rather than an oversight, and it should be made as one; the ranked questions are in `ops/reading queue.md`.

6. **Its constraints are stated.** Chiefly the disclosure order from `ops/methodology/the book's current shape.md`: nothing may be revealed early that the author learned late, in any grammatical person. Also the stance's refusal of efficacy claims, and the register — the vault's prose rules at `ops/methodology/prose register.md`.

## The seventh condition, which is the author's

He can say what the piece is for in one sentence, in his own words, about something he walked. This is not a vault condition and cannot be supplied by research. It follows from the form: the book's grounding is first-person and demonstrative, so a piece whose purpose he can only state in the corpus's terms is one he has not yet found his own reason to write.

## The measurement problem, and the error that surfaced it

**None of conditions 1 through 6 is currently computable, and the first attempt to make them computable made a mistake worth recording.**

On 2026-08-05 a session built a rubric keyed to the fifteen named units in `ops/chapter concordance.md`, treating them as the book's units. The author stopped it: those are the corpus's chapter names from prior drafts, and he has not reified them as the book's ultimate thrusts — "I'd rather let them emerge organically." The instrument was removed the same hour.

The error is worth keeping because of its shape. The vault's rules say the named unit is the stable referent for citation (`ops/methodology/reference by name.md`) and that manuscript structure is provisional and never assigned by the vault (`CLAUDE.md`, Placement). A session read the first as licence to treat the corpus's unit list as settled, which the second forbids. And measuring against a structure is the strongest available way to reify it: once readiness is scored per unit, the unit list becomes the thing the work optimizes toward, and nothing would have fired.

The author had already named the right frame in the same conversation, and it was not taken up: **the unit of readiness should be a cluster that emerges from convergence points in the graph, not a chapter inherited from a prior table of contents.** He directed that pass the same day and it has now run; the section below reports it.

The six conditions above are sound and unit-agnostic — they describe what any piece of writing needs, whatever it is called. What was missing was the *target*: what the vault should assess readiness *for*. A candidate-offering field still has nothing legitimate to point at, because a computed region is not a unit the author has acknowledged, and building one would presuppose the answer.

## What was needed before readiness could be measured, and what the pass found

The prerequisite pass — **find the convergence points** — ran on 2026-08-05 at the author's instruction. Its instrument is `scripts/queries/clusters.sh`, which prints the regions and their composition directly. The method was chosen so that the result could not be a table of contents in disguise: notes are nodes, wiki links between claims are edges, and the groupings come from modularity maximization over that graph, computed from link glosses sessions wrote for other reasons.

The graph organizes into three regions of content, one region holding the apparatus together with the record of its making, and one seven-note island that turned out to be a linking defect rather than a thesis. No region is a topic map restated — a page gathering the claims of one concern; the largest region draws members from nine and eleven maps respectively — which is a property the concordance's fifteen units could not have. The concordance is the table in `ops/chapter concordance.md` comparing the drafts of the book chapter by chapter, and each of its fifteen units was a chapter name with material fitted to it.

The six conditions above were then run against the three content regions, and they separate. The region concerned with the book as an address that expects a reply carries four claims that are privated — complete except in one named way, usually an unread primary work — out of fifty-nine, the lowest reading debt in the graph, and has no seated adversary anywhere in it. The region concerned with verification in the body carries thirteen privated and eighteen chairs mostly one day old, and holds the author's own stated priority. The full table of regions and the caveats on each number come from re-running `scripts/queries/clusters.sh`.

**The order still holds and the next step is his.** These are regions of mass, not units. If he recognizes one, the conditions can be run against a target he has acknowledged; until then the assessment above is a description of the vault rather than a readiness verdict on anything.

## What is true today, without the instrument

Stated so the absence of a measurement is not read as an absence of readiness:

- **Condition 1** is strongest for the material extracted from the corpus in the first passes, and weakest where the mesh grid found propositions stated in `sources/` that no note carried. Two were found by accident; the vault does not know how many remain (`ops/observations/nothing counts propositions the corpus states and the vault never wrote.md`).
- **Condition 2** is the binding constraint right now. Twenty-three claims are `privated` on an unread primary work, and most thinker evaluations carry recommendations built from consulted works rather than from the works themselves. This is the condition the reading queue at `ops/reading queue.md` exists to satisfy, one completed reading at a time; the first (Gendlin 1964) has run.
- **Conditions 3 and 4** are in good shape and are the vault's oldest disciplines.
- **Condition 5** stands as condition 5's own text now states: three of its four cases are evaluated and unread, and the fourth is still empty.
- **Condition 6** is stated and current.
