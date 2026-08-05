---
description: This directive, global and standing, keeps the reference surface denotative; connotative vocabulary is expressed as connected notes and is never bound to a note as metadata.
category: configuration-state
created: 2026-08-01
status: active
---

# vocabulary policy

This is an author directive, issued 2026-08-01 during the initial derivation, global and standing:

1. **The reference and research surface is denotative.** Filenames, YAML field names, enum values, folder names, and primary headings name the concern in plain terms: `interlocutors`, `reference-lineage`, `tensions`, `book-structure`, `research-frontier`, `relational-field`, `answerability`, `container-anatomy`.
2. **Narrative and metaphoric vocabulary is graph content, not metadata.** No `aliases:` frontmatter, no alias properties. The corpus's figures (wells, porch, the spine, harvest, the whole field…) live in connected notes that express the connotative value and link to the concern they name — primary carrier: `notes/figure glossary.md`; rich figures from the book's image system become claims (`category: image`).
3. **Terms of art count as denotative.** isomorph, felt shift, recognition, privation — established research vocabulary stays.
4. **Applies forward.** All future notes, templates, skills, queries, and any /reseed or /refactor must preserve this polarity. When a skill's stock prose reaches for a narrative term as a key, substitute the denotative term and, if the figure is worth keeping, route it through the glossary.

Rationale: the author works this vault as a *research* surface; a term like "porch" does not signify its concern (philosophical reference lineage) to a query, a script, or a future collaborator. The book's poetry is preserved where poetry belongs — in the graph, as content with sources.

**Bounded 2026-08-05, by author decision.** This directive governs how the *book's material* is named. It does not reach the vault's own operational machinery. His words: we needn't "dogfood the book's paradigm so far into our research operations."

The instance that raised it: the `state:` field's five values — `nascent`, `privated`, `full`, `flourishing`, `composting` — are the corpus's own arc from atlas §V.3, which is book vocabulary sitting in a YAML enum and therefore a literal violation of rule 1. It stays. The values are precise about what they mean, `privated` in particular carries a doctrinal sense the plain alternatives would lose, and the cost of renaming them is higher than the cost of the inconsistency.

**The test, in the author's words**, which is sharper than a reader-facing/internal split and is the one to apply: the book's taxonomies recorded as note *content* are a benefit and stay — "we benefit from having the book's seat tiering etc. recorded in our notes." What may decouple is the plumbing: "the logistics of the frontmatter don't need to map 1:1 to the taxonomics of the book where not directly informing the research. Supporting static reference catalogs can decouple provided they are not semantically or ontologically linked to a specific and needed outcome of the book."

So the question to ask of any field is not who sees it but **what it is linked to**. A field whose values carry a claim the book needs stays coupled to the book's terms. A field that is a supporting catalog — a lookup the pipeline maintains for its own convenience — may be whatever is clearest.

Worked against the three fields the vault currently runs, because the line is easier to see in cases than in the abstract:

- `seat:` and `load:` **stay coupled.** Both answer questions the book needs answered — who is seated in its company, and what it cannot lose — and their values are ontologically linked to those outcomes. `thesis-bearing` is a claim about the book, not a filing convenience.
- `state:` **decouples.** It records how substantiated a note is: a maturity marker for the vault's own material, informing which pass to run next and nothing the book asserts. That its five values happen to be the corpus's arc from atlas §V.3 is inheritance rather than necessity, and no outcome of the book depends on the vault labelling its notes with them.

A future session finding the `state:` values inconsistent with rule 1 has found a decided question, not drift — and the way to decide the next such case is the linkage test above rather than this precedent.

One consequence for the anti-ladder tension held at `ops/tensions/the metabolic arc is a developmental scheme with no anti-ladder feature.md`: renaming the five stages was that tension's third candidate resolution, and this decision removes it. Its second — requiring `privated` to name its own absence — was implemented the same day and stands.

**Extended 2026-08-02.** This directive governs the reference surface. A second directive, `naming and epistemic humility.md`, extends the same polarity into prose — the concern leads and the corpus's name is attributed rather than adopted — and adds the epistemic clause this one lacks: a name is a candidate until the author settles it, and none is settled. Where the two overlap, they agree; where this one is silent, that one governs.
