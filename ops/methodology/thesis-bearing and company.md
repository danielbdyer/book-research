---
description: This directive, global and standing, adds a second axis to the interlocutor schema separating thinkers whose removal would change the thesis from supporting colleagues and context, and fixes the axis as a reading allocator rather than a ranking of evidence.
category: configuration-state
created: 2026-08-05
status: active
---

# thesis-bearing and company

This is an author directive, issued 2026-08-05 on receiving the mesh grid, global and standing. The author's sentences, which it operationalizes:

> I think the 29 thinkers were the wrong lens all along. This actually helps sharpen the focus of the theses of the book.

> I co-sign it gently but it's about 65–75% co-signed — we're still evolving but I think it's a smart move.

> Separating out book-thesis thinkers from supporting colleagues or context is an important refinement for our methodology.

## What the old lens was, and what was wrong with it

The vault sorted the company one way: by contribution. Five groups, each admitted for what it carries in — practice technology, a model of emotion, a mechanism, a structural warrant, a referral network — and explicitly not for what it holds true ([[the book's company of thinkers is grouped by contribution rather than by doctrine]]). That sort is real and it is kept. What it cannot do is tell a session which thinkers the book cannot lose.

The twenty-nine the author names are the builders of enterable structure, the largest of the five groups: Alexander, Meadows, Akomolafe, Gendlin, McGilchrist, Carse, Whyte, O'Donohue, Oliver, Berry, brown, Parker, Scharmer, Palmer, Kimmerer, Oxman, Matuschak, Appleton, Brander, Hudson, Jeong Kwan, Le Guin, Eno, Brand, hooks, Freire, Rohr, Tippett, plus the book itself (atlas §IX.4). Sorting by contribution puts Eugene Gendlin in that room with twenty-eight others, because what he contributes is a way of building enterable structure. Sorting by load puts him somewhere else entirely: the author's statement of 2026-08-04 makes the felt shift the book's single verification standard, everything else running downstream of it, and the felt shift is Gendlin's. One room held both the floor and the furniture, and the room could not tell them apart.

That is the defect the refinement fixes. A taxonomy of contribution answers *what does this person bring*. It never asks *what happens to the book if they leave*.

## The second axis

Interlocutor notes gain a `load:` field recording what the thinker carries, alongside the existing `seat:` field recording what they do. The two are orthogonal and both stay: a thinker has one seat and one load, and neither implies the other.

| `load:` | The test |
|---|---|
| `thesis-bearing` | Remove them and the thesis changes shape. Can the claim be stated without this concept? If yes, not this. |
| `adversary` | Aims at a thesis-bearing claim from a position the book must survive. Does it aim at the claim, or at the culture around the claim? Culture-attacks are not this. |
| `independent-arrival` | Reached the same finding down a different road. Could they have got there without reading anyone thesis-bearing? A shared teacher is family resemblance, not independence. |
| `names-existing-practice` | Names and legitimizes something the book already does without knowing what it is called. Is the apparatus already in motion? If it would have to be built to use the name, not this. |
| `company` | Agrees on how things get made, and has something worth hearing, without holding weight. |
| `precedent` | Attempted this before. Sorted by what happened to them, not by what they carry. |

The tests are the grid's, restated in the vault's terms (`mesh grid: how to read the pyramid`; the last value from `mesh grid: tier 0`). The grid's own labels for these are numbered tiers; the numbers are not carried into the vault, per `reference by name.md` — a number asserts a settled ordering, and the point of the axis is which load a thinker carries, not what rank they hold.

A second field, `discipline:`, records where the thinker got their epistemics: `continental-philosophy`, `indic-and-buddhist-primary`, `abrahamic-contemplative`, `african-philosophy`, `clinical`, `empirical-science`, `social-theory`, `systems-and-design`, `poets-and-artists`, `practitioner-pedagogy`, `analytic-philosophy`, `classical-philosophy`. The last was added 2026-08-05 when Aristotle became a candidate for the apparatus region and had nowhere to sit; the precedent is the same day's addition of `abrahamic-contemplative` and `african-philosophy`, and the rule it follows is that a family is added when a real thinker would otherwise be filed wrongly, never to round out a taxonomy. It exists for one purpose, which is the grid's actual engine: crossed against `load:`, it produces cells that are visibly empty, and an empty cell is a reading question rather than a verdict. The current state of the crossing is printed by `scripts/queries/lineage-sort.sh`.

Two of those values are the vault's additions and the reason for them is worth recording, because it is the first place the partial cosign did any work. The grid's own axis has nine families and only one contemplative one — Indic and Buddhist primary sources. Every other contemplative tradition it reaches for falls outside its own list, and it says so by hand each time: "Avodah be-gashmiyut (non-Indic contemplative)", "Ubuntu personhood — Menkiti, Ramose (non-Western, non-Indic)", and the Sufi material carrying the same parenthesis. Those are three of the arrivals it most wants, and they have nowhere to sit. `abrahamic-contemplative` and `african-philosophy` name them positively instead of by what they are not, which is what the vocabulary policy requires of an enum value. The correction is small and its direction is worth noticing: an instrument built to expose empty cells had a blind spot exactly where its own categories ran out.

## The three rules that keep the axis honest

1. **The axis allocates reading; it does not rank evidence.** The author chose this reading explicitly on 2026-08-05, over the alternative of revising the stance. `authorial stance.md` is unchanged and continues to govern: convergences are never ranked as stronger or weaker evidence, a refusal is kept so the thinker survives being cited rather than to season a case, and the vault postulates no efficacy. What the axis answers is narrower — which reading would change the book if it were done, and which would only lengthen the bibliography. A `load:` value never appears in a claim's prose as a reason the claim is true.

   The grid's own register runs the other way, and the difference is worth stating so it is not absorbed by imitation. It prices adversaries by damage ("a comfortable adversary is decoration"), calls independent arrival "evidence rather than support," and holds that "a thesis with no adversaries is a mood" (`mesh grid: tier 2`, `tier 3`). Those sentences are quoted where they are the finding and are not adopted as the vault's voice. The gap between the grid's frame and the stance is recorded as a doctrinal tension rather than resolved by either side.

2. **A load assignment is a proposal until the author makes it.** The cosign is partial by his own statement — "gently… about 65–75%" — so the grid's sort enters as the grid's, attributed, and a note records where the vault has tested it and where it has not. This is the same discipline the `seat:` field already runs under: a candidate evaluation ends in a recommendation, and the decision belongs to the author. Where the grid assigns a load the vault has no independent basis for, the note says so and the field carries the grid's assignment with its provenance named in the body.

3. **Company is not a lesser standing.** The largest `load:` value by count is `company`, and the grid is explicit that this is not a defect: "This tier is not a problem and does not need pruning. It is the book's company — the sense that the work belongs to a living conversation rather than arriving from nowhere. Its only failure mode is being mistaken for the argument" (`mesh grid: tier 5`). The refinement exists so that mistake stops being available in both directions — so a thinker who holds the floor is not filed as furniture, and a thinker who is company is not conscripted into carrying weight they were never offered. Reading the second half of that sentence as permission to demote is the misreading this rule forbids.

## What this changes in practice

New interlocutor notes carry both fields. Existing notes gain them where there is a basis and leave them unset where there is not; `load:` and `discipline:` are optional, and an unset field means the question has not been answered rather than that the answer is `company`. The sort itself is computed by `scripts/queries/lineage-sort.sh`, which prints the crossing and marks the empty cells; the reading questions those empty cells raise are carried in `ops/queue/candidates.md`. The seat taxonomy in `notes/interlocutors.md` is unchanged.

One consequence for the roster's largest seat: the twenty-nine builders are no longer a homogeneous group, and three of them come out of it under the new axis — Gendlin as thesis-bearing, Alexander as a candidate for it on the method rather than the thesis, McGilchrist as naming machinery already running. The remaining twenty-six are company, which the grid says plainly and the author's own instruction confirms: "Do not sort all thirty. The result is known: they are Tier 5, you said so yourself, and confirming a premise is not research" (`mesh grid: how to run this`).
