# The metabolic arc is a developmental scheme with no anti-ladder feature

Raised 2026-08-05 by the mesh grid, which asked the question of the book and of this vault in the same breath. Recorded here rather than in `notes/` because the subject is the vault's own schema; the doctrinal twin — the same failure mode aimed at the book's arc — is a claim at a developmental scheme handed to practitioners becomes a ranking of persons, and the two are not mixed.

## The contradiction

The vault's `state:` field runs a five-stage developmental scheme over its own notes: `nascent`, `privated`, `full`, `flourishing`, `composting`. The names are the corpus's, taken from the arc at atlas §V.3. The grid's question, raised about a precedent whose colour scheme became a status ladder among its readers, lands on this field by name:

> The metabolic arc — Nascent → Privated → Full → Flourishing → Composting — is exactly the kind of scheme that becomes "I'm mostly Flourishing, he's still Privated." What in the design prevents it? If the answer is "the tone," the answer is not sufficient. (`mesh grid: tier 0`)

The vault's own methodology is what makes this a contradiction rather than a worry. Its stated posture is that nothing is settled, its naming directive holds every one of the corpus's coinages as a candidate label rather than a referent, and its admission standard asks what a drafting session could use. A field that ranks notes by maturity, using vocabulary the vault elsewhere refuses to adopt as its own, is running against all three — and the field is applied to notes today, which is the mild case, while the same vocabulary is available for people.

## What the vault has, and what it does not

Three things work against the failure mode already, and they are the reason this is filed as a tension rather than a defect. `composting` is not a bottom rung — it means superseded but still drawn on, so the scheme is not a straight line. `privated` is the vault's own doctrine applied to itself: incomplete in a specific named way, which is a diagnosis rather than a verdict, matching the book's rule that distress is a question about machinery. And the field is optional, so most notes carry no stage at all.

What the vault does not have is any design feature that actively prevents the ranking use, as distinct from features that make it slightly awkward. Nothing in the schema, the templates, the queries or the hooks resists a session — or a person — reading the five as a ladder. The grid's own finding after surveying the precedents is that nobody has solved this, and it calls the question "the most valuable unanswered question in the grid."

## What the author settled, 2026-08-05

Two of the three options below are now closed, and the tension narrows rather than resolving.

**Option 2 is implemented.** `state: privated` now requires a `privation:` field naming the specific absence, and 24 notes moved into it — the value had never been used before that day. A state that must say what is missing cannot be used as a bare rank, which is the structural feature this tension was asking for. `scripts/queries/frontmatter-parse.sh` enforces it.

**Option 3 is declined.** Renaming the five stages denotatively is off the table: the author bounded the vocabulary policy to the book's material and away from the vault's operational machinery — "no one says that we must necessarily dogfood the book's paradigm so far into our research operations" (`ops/methodology/vocabulary policy.md`, Bounded 2026-08-05). The corpus's arc stays as the enum.

**What remains open**, and it is smaller than it was. Two of the five values are still unused (`flourishing`, `composting`), so the scheme still describes more than it does. And the underlying question is untouched: a five-stage vocabulary applied to notes is available for application to people, and the fix implemented above hardens one rung rather than the ladder. Against that, the change also populated a rung that was empty — before it, two values in use was barely a ladder; now three is more ladder-shaped — which is recorded rather than argued away.

## The three options as they stood when this was raised

Kept as the record of what was considered. Two are now closed; see the section above.

1. **A stated rule** that the field describes a note's substantiation and never a note's worth, written into `templates/claim-note.md` as a constraint rather than left to convention. Cheap, and it is close to "the tone," which the grid says is insufficient.
2. **A structural feature** — for instance, requiring `privated` to name the specific absence in the same line, so the value cannot be used as a bare rank. That is the one candidate here that changes what the field can express rather than what it is supposed to mean.
3. ~~**Removing the stage names** in favour of denotative ones.~~ Declined by the author 2026-08-05; see above.

Reviewed at /rethink on 2026-08-05 and taken to the author, who implemented option 2 and declined option 3. The tension stays open in its narrowed form: the vault now has one structural feature where it had none, two of the five values remain unused, and the underlying question — whether a five-stage vocabulary for notes is available for application to people — is unanswered here and live for the book.

## Related

- `ops/methodology/vocabulary policy.md` — the directive the corpus-borrowed stage names sit awkwardly against
- `ops/queue/candidates.md` — where the reading behind this tension sits among the ranked holes, in its book-facing form
