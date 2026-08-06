# Formula audit

<!-- Every formula the corpus writes, gathered from all four sources that carry any, with each one checked against the alphabet it is supposed to be built from. Built 2026-08-05 on the author's instruction to take the composition finding to its natural completion. This is a comparison surface across sources, so it lives here rather than in `notes/` — the same routing as `ops/chapter concordance.md`. The findings it supports are claims: [[the chemistry's teachings are structural and its notation is only compositional]] and [[the isomer teaching names the phenomenon that made composition-only notation obsolete]]. Nothing here is a judgment about whether the chemistry is worth keeping; that is the author's, and `notes/the diagnostic discipline survives the apparatus that carries it.md` records what survives either way. -->

## What was checked, and how

The book's second layer is twelve operations; its third layer composes them into named states and writes the composition as a formula. This file collects every formula in `sources/` and asks three questions of each:

1. **Is every term defined?** A term counts as defined if it is one of the twelve primitives or a molecule given its own formula somewhere in the corpus.
2. **Does the arithmetic hold?** Where a formula's terms have their own formulas, substituting them should not produce a contradiction or a collapse.
3. **Where does the teaching live?** Every formula in the corpus arrives with a sentence explaining what it means. The question is whether the notation carries the explanation or the sentence does.

The alphabet, for reference. **Base six:** Create, Dissolve, Bind, Sever, Maintain, Release. **Derived six:** Transform, Attend, Express, Contain, Commit, Defer.

## The derived primitives (`abridged ch5`)

This is the only place in the corpus that composes the derived six from the base six.

| Formula | Terms defined | Arithmetic | Teaching lives in |
|---|---|---|---|
| Transform = Create + Dissolve | yes | holds | notation |
| Attend = Maintain + Bind | yes | **collides with Commit** | prose |
| Express = Create + Bind | yes | holds | notation |
| Contain = Maintain + *the boundary-form of the Knife* | **no** | undefined term | prose |
| Commit = Bind + Maintain | yes | **collides with Attend** | prose |
| Defer = Maintain + *the not-yet of Create* | **no** | undefined term | prose |

Two of six reach outside the base set for their second term. Two more share one expression: Attend and Commit are the same two atoms, stated thirteen lines apart, and what separates them — a connection held now against a connection held across time — appears only in the glosses.

## The molecules

Gathered from all four sources that write formulas. Where sources agree the formula is identical; the catalogue's *membership* varies by source, which is recorded separately at `ops/chapter concordance.md`.

| Formula | Source | Terms defined | Arithmetic | Teaching lives in |
|---|---|---|---|---|
| Sanctuary = Contain + Maintain + Release | `abridged ch6` | yes | holds | notation |
| Obligation = Commit + Attend + Maintain | `abridged ch6` | yes | **reduces to Bind + Maintain**, which is Commit and also Attend | notation, degenerately |
| Possibility = Defer + Create + Commit | `abridged ch6` | yes | holds | notation |
| Trust = Bind + Commit + Defer | `atlas §IV`, `abridged ch8`, `arc-gloss: ch6` | yes | holds | **prose** — the isomer teaching is about where Defer attaches, and the formula has no attachment |
| Lifecycle = Create + Transform + Dissolve | `atlas §IV` | yes | holds | notation |
| Threshold = Transform + Sever + Create — *with cost_of_crossing, irreversibility* | `atlas §IV` | yes, but two attributes hang outside the formula | holds | prose (the attributes are what distinguish it) |
| Surrender = Release + Sever + Defer | `atlas §IV` | yes | holds | notation |
| Grief = Sever + Love + Persist — *catalyst: witness* | `atlas §IV`, `first-telling: the offering`, `arc-gloss: ch6` | **no** — neither *Love* nor *Persist* is one of the twelve | not evaluable | prose (the catalyst is the teaching, and it is a person) |
| The Racket = Complaint + Payoff, *both fixed* | `atlas §IV`, `arc-gloss: ch6` | **no** — neither term is a primitive or a catalogued molecule | not evaluable | prose (*both fixed* is the diagnosis, and it is a modifier) |
| Burnout = Obligation − Sanctuary | all four | yes | holds under set difference only if Obligation is not substituted | notation — the minus names the missing term |
| Paralysis = Possibility − Commit | `atlas §IV`, `abridged ch6`, `arc-gloss: ch6` | yes | **contradicts the isomer reading**, see below | notation, but see below |
| Foreclosure = Commitment − Defer | `abridged ch6` | **no** — *Commitment* is never given a formula; *Commit* is the primitive | not evaluable | notation |
| Stagnation = Lifecycle − Transform | `abridged ch6` | yes under the atlas's Lifecycle | **collapses: equals Transform** | notation, degenerately |
| Enmeshment = Connection − Sever-capacity | `abridged ch8` | **no** — neither term is defined; a *capacity* is not an operation | not evaluable | prose |
| Forgiveness = Sever **then** Release | `atlas §IV` | yes | holds | the word *then*, which is the notation's only ordering operator and appears once |

## The three failures that are not typographical

**Stagnation equals Transform.** The atlas gives Lifecycle = Create + Transform + Dissolve (§IV) and the executed draft gives Transform = Create + Dissolve (ch5). Subtracting Transform from Lifecycle leaves Create + Dissolve, which is Transform. The state produced by removing the operation is the operation. The two documents also define Lifecycle incompatibly — the atlas as a composition of three primitives, the abridged edition as a sequence of metabolic states ("the natural arc of Nascent → Full → Composting") — and under the second definition the subtraction has no meaning at all, because a state sequence has no terms to remove.

**Trust and Paralysis cannot be both isomers and privations.** The atlas states the isomer teaching in one place — "Trust vs. Paralysis: same atoms; the difference is where Defer attaches — to the outcome (Trust) or to the Commit itself (Paralysis)" — and the privation formula a few lines above it. Worked out: Trust = Bind + Commit + Defer; Paralysis = Possibility − Commit = (Defer + Create + Commit) − Commit = Defer + Create. The two share exactly one atom. They are not the same atoms, so on the notation's own arithmetic the isomer teaching is false and on the isomer teaching the privation formula is wrong. The vault recorded the two readings as unreconciled at [[trust and paralysis are isomers]]; this is why they cannot be reconciled without a bond term.

**Obligation is its own component.** Commit + Attend + Maintain substitutes to (Bind + Maintain) + (Maintain + Bind) + Maintain = Bind + Maintain, which is the expression for Commit and for Attend. A molecule defined as three operations reduces to two atoms shared with one of them, and Burnout inherits the reduction.

## What the audit shows

Twenty-one formulas. **Six use at least one term that is never defined anywhere in the corpus** — *the boundary-form of the Knife*, *the not-yet of Create*, *Love*, *Persist*, *Complaint*, *Payoff*, *Connection*, *Sever-capacity*, *Commitment*. **Three fail the substitution test**, one of them by collapsing into the operation it is defined by lacking. And in **nine of the twenty-one, the sentence that makes the formula worth stating is carried by the prose beside it rather than by the notation.**

The nine are not a random nine. Sort them by what the prose has to supply and one thing comes back every time:

| The teaching | What the notation would need | What the corpus uses instead |
|---|---|---|
| Trust versus Paralysis | an attachment site | the phrase "where Defer attaches" |
| Forgiveness versus bypass | an order | the word *then* |
| Grief's completion | an agent outside the compound | the label *catalyst: witness* |
| The Racket | a modal state of the terms | the phrase *both fixed* |
| Enmeshment | a capacity rather than an act | the suffix *-capacity* |
| Threshold | attributes of the whole | a parenthesis |
| Attend versus Commit | temporal extent | two glosses |
| Withheld versus never offered | the missing term's provenance | nothing, and this is the gap the interiority audit found |
| Contain, Defer | a qualification of a base term | a phrase inside the formula |

Every one is a **relation** — between atoms, between an atom and time, between the compound and something outside it. The notation records **composition**: an unordered collection of terms, with one subtraction. That is the whole finding, and it explains every earlier result the vault reached piecemeal.

## The one operator that works, and why

The notation has exactly one operator that says something about a relation rather than about membership: the minus sign, which marks a term as *absent* rather than merely not listed. And the vault measured, independently and before this audit, that the minus sign is the only thing in the notation that predicts anything — a formula with a minus yields an instruction, a formula with plus signs alone yields a description, with no exception across the executed catalogue ([[the minus sign is what makes a molecule formula prescriptive]]).

The two findings are one finding seen twice. The notation's single relational operator is its single working operator. The book has already discovered, without naming it, that relation is what does the work.

## The fork, which is the author's

Two routes, stated without a recommendation because this is a decision about what the book is.

**Give the notation relational terms.** Order, attachment, agency, modality, and the inside/outside distinction the interiority audit needed. This is what structural formulas are, and it would make the chemistry a bigger machine than it currently is — with the cost that the notation stops being readable at a glance, which is most of what it is currently for.

**Stop writing the relations as formulas.** Keep the specificity discipline and the privation reading, both of which stand on their own ([[the diagnostic discipline survives the apparatus that carries it]]), and let the prose carry what the prose is already carrying. The formulas then become a display device rather than a diagnostic one, which is close to what the executed draft already does — and it is consistent with the demotion of 2026-08-04, where the schemes became instruments rather than architecture.

The vault does not choose. What it can say is that the second route requires no work and the first is a research program.

## One precedent, from the vault's own schema

Not evidence about the book — a case where the same defect was hit and fixed, which is worth one paragraph because the fix was cheap.

This vault's `state:` field inherited its five values from the same ontology project the molecules came from: Nascent → Privated → Full → Flourishing → Composting. On 2026-08-05 the vault found `privated` unusable as written, because a bare mark of privation says a thing is incomplete without saying in what, and made `privation:` a required field naming the absence in one clause (`templates/claim-note.md`). That is the same repair the minus sign needs, made on the same scheme, in a different medium, for the same reason. It cost one schema line and a pass over twenty-four notes.

## Method note

Every formula above was read from `.corpus/*.md`, which is regenerated from `sources/` by `scripts/bootstrap.sh` and carries `===PAGE n===` markers, so each is traceable. The audit is complete for formulas written with `=`, `+`, `−`, or `⊖`; a teaching stated only in prose without a formula is out of scope and is not counted as a failure of notation.
