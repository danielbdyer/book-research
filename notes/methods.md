---
description: This map records the vault's working rules — the admission standard, provenance, the output measure, tension handling, and verification limits — and points to the two global policies on vocabulary and prose.
type: moc
topics: ["[[index]]"]
---

# methods

This map records how the vault works its material. Where a rule derives from the book's own doctrine, the source is cited; the derivation record in `ops/derivation.md` explains why each rule was adopted.

## House rules

1. **Admission.** The test is the writing test: would a drafting session reach for this? Nothing gets seated unless it supplies something writing can use, and "would it change how the project thinks" is the floor beneath that bar (`ops/methodology/writing test.md`). The rule comes from the space-around survey, which states it as the bar every candidate must clear ("nothing gets listed unless it would actually change how we think" — preamble) and names it after the standard set by the seating of David Loy, whose work was admitted because it independently confirms a central claim rather than merely neighboring one. "Misses count as data" (first-telling: the instrument): a declined candidate keeps its note, its seat marked `declined`, and the reason.
2. **Provenance.** Every claim names its sources with locations. The rule is the vault's version of the book's attribution policy — "secrets are for the story, never for the sources" (atlas §IX preamble; first-telling: the offering) — which [[interlocutors]] records in full.
3. **Output.** The vault is measured by what reaches the manuscript, not by what it stores. The rule derives from the corpus's own warning, recorded in [[ripeness is not refrigeration]]: "the archive preserves; the orchard ripens." A month in which the vault grew and the manuscript did not is a month the /rethink review should flag.
4. **Tensions.** The vault registers tensions with their treatments and never resolves one itself. Resolution is the author's act, made in writing. The rule restates the atlas's §XI policy in operational form.
5. **Verification.** The vault verifies structure, provenance, and coherence. It cannot run the book's own somatic test; that certification belongs to the author. The somatic test's own documented limits are stated in [[felt shift versus felt confirmation]], and one of them applies to the vault directly: a well-formed note can read as true because it is well-formed.
6. **Scope.** A map is not the territory it maps, and the corpus applies this to itself: see [[the topology only exists where it is being performed]]. Vault work that displaces manuscript work is the failure mode this rule exists to catch.
7. **Standing.** A source is either descriptive — an account of the book written from outside it — or a draft, a state of the manuscript itself. A draft is quoted for what it says and is not credited for what it argues, agreement between a document and its own upstream input is not corroboration, and where drafts disagree the disagreement is recorded rather than resolved. The full policy is at `ops/methodology/source standing.md`, and the provenance fact that occasioned it is at [[the atlas was compiled from the arc and gloss treatment]].
8. **Craft.** A claim of category `craft` records one mechanism observable in the executed prose, stated so a future chapter could be built against it, and must be able to say how it would be checked. The manuscript's assessments of its own moves are excluded; the author's recorded observations about writing the book are quoted and never restated as the vault's judgment. The full policy is at `ops/methodology/craft evidence.md`. The category is available only from draft sources, because only a draft executes.
9. **Declines.** Material read and set aside is recorded in `ops/queue/declines.md` with its reason, which the admission standard in rule 1 requires. A decline is a decision and a queue entry is unfinished work; the two live in separate files so that the next pass does not re-litigate settled material.

## Vocabulary policy

The reference surface — filenames, YAML fields, enum values, folder names, primary headings — names its concern in plain denotative terms. The book's narrative vocabulary is graph content, not metadata: no alias properties on notes; the correspondence between the corpus's figures and the vault's names lives in [[figure glossary]], and rich figures from the book's image system become claims. Terms of art that carry precise meaning (isomorph, felt shift, recognition) count as denotative. The full policy, with rationale, is at `ops/methodology/vocabulary policy.md`.

## Prose policy

All vault prose is expository and evidential: complete sentences with named subjects; the statement on top and the substantiation beneath; the corpus quoted and anchored, never impersonated; notation tagging relations that the sentences have already stated; exact referents throughout. The full policy is at `ops/methodology/prose register.md`.


## Claims in this map

### The claims the house rules rest on

- [[the book performs what it describes]] — the law the vault inherits as a design obligation
- [[ripeness is not refrigeration]] — the source of the output rule
- [[felt shift versus felt confirmation]] — the source of the verification rule's humility
- [[the topology only exists where it is being performed]] — the source of the scope rule
- [[the atlas was compiled from the arc and gloss treatment]] — the source of the standing rule, and the reason agreement among three of the seven documents counts once

### What the record of the making adds to the rules

The provenance rounds established facts about how the corpus was made. Four of them are methodological rather than biographical: each changes how a source is read, how agreement is counted, or what the vault may claim on its own behalf.

- [[the corpus quotes the author's poems rather than the poems quoting the corpus]] — the operative rule for the primary source, stated in the registry below as the direction of quotation: for poems 1–15 a shared phrase belongs to the poem, so a corpus phrase may be a citation rather than a coinage.
- [[the earliest chapter was written through a voice distilled from the author's first fifteen poems]] — what the craft rule is actually reading when it reads the high-water voice: a specification the author wrote from his own poems and then wrote through, rather than a style that emerged.
- [[flourishing flow and facilitation converged on one stance in the author's own record]] — the count-once rule extended from documents to domains, since three of the author's chosen fields converging shows the coherence of his attention rather than a law of the fields.
- [[the making of the book enacts the law the book states]] — the limit case of the scope rule, and the one the vault sits inside: a law appearing in its own production history shows consistency of the maker, not truth of the law.

### What the lineage sort and the two syntheses added to the rules, 2026-08-05

Six findings from that day are about how the vault works rather than about what the book claims, and each puts pressure on a house rule above.

- [[the company was sorted by what each thinker brings and never by what the book cannot lose]] — the sorting defect behind the second axis: a taxonomy by contribution answers what a thinker brings and never asks what happens if they leave.
- [[the verification standard rests on one name and that name has no chair]] — the case that exposed it, and a direct check on rule 5: the standard the vault cannot run is also one the vault had not seated.
- [[sorting a lineage by load turns it toward argument]] — the tension the new axis creates against the stance that governs prose, treated by scope rather than resolved.
- [[the convergence's independence fails where three of its names share one teacher]] — rule 7's count-once principle extended from documents to thinkers, since shared teaching makes agreement a family resemblance rather than an arrival.
- [[the drive to closure has measurable costs]] — the warrant beneath rule 4, and the criterion that separates a disciplined open tension from a romantic one: naming what would close it.
- [[the research instrument is a violin rather than an oracle]] — an account of how this vault's two parties transact, which reaches the book's own claim about instruments from analytic philosophy of mind and with no contact with it.

## Nascent stubs

A claim may be recorded before it is substantiated, carrying `state: nascent`, when the corpus names a territory it never develops. The stub is a seed, not an analysis: it states the proposition the source's gesture asserts, the strongest fact the corpus supplies, and the nearest held material, and the state field carries the signal that the vault does not yet hold the proposition. Thirteen such stubs exist, one per open gesture in `ops/open corpus.md`, and they are listed in [[research-frontier]]. They are admitted under the writing test's own rule for absences — one seed, not an essay — because a territory recorded only in an operational table is not reachable from the graph and will not be found again.

## The transfer surface

`ops/chapter concordance.md` records what each source supplies for each unit of the fifteen-chapter arc, the executed extent, and which document is the reference text for which element. It is the working surface for bringing a chapter to a finish, and it carries the revision relations — carried unchanged into, revised into, compressed into, dropped at, added at — that the atlas's notation set does not provide. `ops/rethink-log.md` records the reasoning for that notation and for the craft category.

## Source registry

Seven source documents, each with an archive note recording provenance, standing, and extraction state. Each entry gives the citation name claims use, the file, and the anchor grammar.

### Descriptive sources (the four founding documents, July 2026)

These describe the book from outside it.

- [[source — the gravitational atlas]] — the corpus as a typed network, compiled July 2026. File: `sources/the whole field - gravitational atlas.pdf`. Cited as `atlas`, with section symbols: `atlas §IV`, `atlas §IX.8a`.
- [[source — the whole field walked]] — the same material as continuous prose. File: `sources/the whole field walked.pdf`. Cited as `walked`, with bare roman numerals: `walked VI`.
- [[source — the first telling]] — the book presented to its first reader. File: `sources/the first telling.pdf`. Cited as `first-telling`, with named sections: `first-telling: the offering`.
- [[source — the space around]] — the outward survey that seeds the research frontier. File: `sources/the space around.pdf`. Cited as `space-around`, with the survey's section names and, where relevant, its direction labels: `space-around: around the instrument (counterweight)`.

### Primary source (admitted 2026-08-03)

The author's own prior work, upstream of the book, which the corpus quotes and descends from.

- [[source — the poems]] — sixteen numbered poems written across the author's life; the layer beneath the seed, the figures, and the system. File: `sources/the poems.pdf`. Cited as `poems`, by number: `poems #5`, `poems #16`. Direction of quotation: for poems 1–15 the corpus quotes the poem; #16 is the author's flagged exception.

### Draft sources (three manuscript states, admitted 2026-08-01)

These are the book rather than accounts of it. They are secondary by the author's instruction on submission: they argue the merits of their own ideas, and the vault reads those arguments as evidence that the book has made them, not as evidence that they are right.

- [[source — the arc and the gloss]] — the storyboard treatment of the fifteen-chapter arc, second edition, five rooms integrated. File: `sources/the arc and the gloss - second edition.pdf`. Cited as `arc-gloss`, with named sections: `arc-gloss: overlay four`, `arc-gloss: ch4`. Upstream of the atlas and the walked document, which name it in their colophons.
- [[source — the abridged edition]] — the fifteen-chapter arc executed in full prose. File: `sources/firing on all cylinders - abridged edition.pdf`. Cited as `abridged`, with chapter numbers and section names: `abridged ch6`, `abridged: a note on sources`.
- [[source — the mythic operating system]] — a twenty-eight-chapter table of contents with one chapter written; the author's named high-water mark of voice. File: `sources/firing on all cylinders - a mythic operating system.pdf`. Cited as `mythic-os`, with section names and the written chapter's own page numbers: `mythic-os: contents`, `mythic-os: page 9`. The provenance reconstruction dates this document to April 2025, making it the earliest datable state of the project rather than one draft among three.

## Works consulted

Documents read and cited that are not the project's own sources. They are quoted inside the notes that use them and get no archive note, following the rule in [[research-frontier]]: only the project's own source documents are seeded. The primary works behind the candidate evaluations are cited this way, inside each interlocutor note.

Four are cited widely enough to state their form here: the **provenance reconstruction** (round one), **provenance reconstruction round two**, the **provenance addendum**, and **provenance addendum three** — accounts of how the corpus was made, commissioned by the author from an agent with access to their conversation threads. By author decision (2026-08-03) the four documents are held in `provenance/` with committed extractions; they remain consulted works rather than sources, and the reasoning is in `ops/methodology/source standing.md`. Each is cited by its own sections — `provenance reconstruction §1`, `provenance addendum three §4`, `provenance reconstruction: flagged overstatements` — and quotations from the record they retrieve carry the speaker mark and date they supply: `provenance reconstruction §1, quoting [D] 7 Jul 2026`. The admission of their personal material is governed by `ops/methodology/personal provenance.md`.

Two more arrived 2026-08-05 and differ in kind again: they are commissioned research on the book's *subject* rather than on its making or its lineage, which means they report an outside literature and can be checked against it. **`high-energy states`** synthesizes the neurobiology of ego dissolution and its integration; **`standing wave`** asks whether not-knowing is a genuine epistemic mode and whether a language model can occupy one. Both are held in `provenance/` under the same standing and cited by their own sections. Two rules govern them. No primary work behind either has been read here, so a claim resting on one is `nascent` and says so. And the first carries a structural caution recorded at [[a synthesis organized by the schemes offers to promote them back to architecture]]: it is organized by the book's three-loop scheme and supplies neural correlates for it, which is the most plausible route by which the schemes' demotion gets reversed without anyone deciding to reverse it.

A fifth is cited widely enough to state here and differs in kind from the four: the **mesh grid**, received 2026-08-05, an analysis of the book's lineage rather than of the corpus's making. It sorts the company by the load each thinker carries, crosses that against where each got their epistemics, and reports the holes the crossing exposes. It is held in `provenance/` under the same standing and cited by its own sections — `mesh grid: tier 1`, `mesh grid: the search map`, `mesh grid: addendum, Wilber properly seated`. Two rules govern how it is read, both from the author's decision of 2026-08-05. Its judgments are cosigned "gently… about 65–75%," so a tier assignment is the grid's proposal rather than his seating; and its sort allocates reading rather than ranking evidence, so the rules on convergence in `ops/methodology/authorial stance.md` continue to govern vault prose unchanged. The directive is `ops/methodology/thesis-bearing and company.md`.

## What remains

The pipeline has run one starter pass over the four descriptive sources and a first pass over the three drafts. The queue in `ops/queue/` enumerates the second-pass extractions and the candidate evaluations; `ops/goals.md` names the active threads. The largest unworked question the drafts raise is a reconciliation rather than an extraction: the abridged edition and the atlas describe the same book at different scopes and under different terms, and no document in `sources/` states which of their differences are revisions and which are simply two accounts.

A second round of the same work, with an addendum built on the author's own testimony, added two more and filled a nascent stub: [[the central correspondence was lived nine years before it was assembled]], [[the triad predates the author's contact with the tradition named the triad]], and [[an externalized system can be built to hold a self rather than only its information]]. Both rounds are cited in the same form.

The provenance reconstruction changes what the vault can say about its own sources, and four claims now carry that: [[the unanimity claim is an artifact of how the lineages were selected]], [[the figures precede the system by a year and the two were welded together later]], [[the author curated and vetoed while the collaborator wrote the correspondences]], and [[a recorded reason drifts toward doctrine with distance from the decision]]. Its own gaps ledger names eight things its search could not reach and is the natural basis for a second request.

---

Topics:
- [[index]]
