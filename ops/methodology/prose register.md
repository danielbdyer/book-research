---
description: "This directive, global and standing, requires vault prose to be expository and evidential: every statement is a complete sentence, the statement stands above its substantiation, and no shorthand carries an assertion on the statement line."
category: configuration-state
created: 2026-08-01
status: active
---

# prose register

This is an author directive, issued 2026-08-01 during the initial derivation, global and standing. The governing principle is **evidential literalism**: every sentence asserts a proposition about a concretely named subject, grounded in its evidence, with no rhetorical figure standing in for that precision. The compact statement of it lives in the "Write with research diction" directive in `CLAUDE.md`, which a session reads first; this file is the fuller version.

The aim is one sentence: write like a careful graduate researcher, plainly, so the information is never lost in the prose that carries it.

## Rules for all vault prose (descriptions, note bodies, link glosses, topic maps, CLAUDE.md, the manual, ops documents)

1. **Complete sentences wherever a statement is made.** No telegraphic fragments, no "X = Y" on a statement line, no headless descriptions. A description is a proposition with a subject and a finite verb. The same holds for a bullet's opening words before a colon, where a headline otherwise substitutes for a claim.
2. **Statement on top, substantiation beneath.** A note leads with the claim in plain sentences, parseable with no prior context. Quotations, section locations, and notation live beneath the statement as recorded evidence.
3. **Notation is recorded vocabulary, not assertion.** A glyph or a formula may tag a relation the surrounding sentence has already stated in words; it never carries the assertion alone.
4. **The corpus is quoted, never impersonated.** The book's aphorisms appear in quotation marks with a source anchor, and the vault's own sentences around a quote state what it claims and where it stands. The vault's prose does not use antithesis or aphorism to simulate rigor.
5. **Exact referents.** Chapter, part, and section locations and document names appear wherever a location is meant: "the atlas records at §IV" rather than "the chemistry section says."
6. **Evidence carried in the sentence.** A claim about the corpus states its basis — which documents carry it, where, and whether they agree. A claim in all four descriptive sources says so; a claim resting on one names the one.
7. **A reference is a receipt, never the content.** Every link or file path travels with one clause stating what it points to, and a paragraph must still assert everything it asserted when its links are struck out. The test: strike the links and read what remains; if it still asserts what it asserted, the paragraph was saying; if it collapses into relations among unnamed things, it was pointing.
8. **An abstract noun that stands for something specific is expanded into the thing itself.** The sentence names the thing, not its category. A link gloss states its target's content in words, never only its kind.
9. **Figures of speech appear only inside quotation marks**, where the quoted phrasing is itself the finding. A metaphor that carries a claim, a mirrored pair, a quotable-but-unclear ending, and prose that narrates its own moves are decoding steps the reader should not have to take.
10. **A pipeline coinage is unfolded or replaced.** A word that is neither the book's own vocabulary nor plain English is the pipeline's, and it is translated where it appears — absolutely so in anything said to the author, who wrote the book these terms describe and not the terms.
11. **One register at every scale, ending on the move.** A three-claim map and a three-hundred-claim map read in the same voice; only the depth grows. An operational surface closes by naming what remains, never at "done."
12. **Readable before dense, and dense before clipped.** The author corrected this register in both directions: against ornament ("author plainly and reverently or do not write much at all") and, when a session over-corrected into fragments, against clipped density ("short and declarative is not the only way to write"). The balance is that a sentence may be long and subordinate or short and simple, so long as it unfolds in the order a reader takes it in. Complexity that delivers is welcome; compression that withholds is not. The test: a tired friend could follow it on first reading.

## How this is held now

The enforcement apparatus that once stamped these rules at fourteen surfaces, printed them before every reply through a hook, gated every file write, and verified them with a script was retired on 2026-08-09, because it discussed the vault's own writing more than it improved it, and its write-gate had logged seventeen false catches against four true ones. The insight stayed and the machinery went. What remains is a stance rather than a check: each sentence is written facing the reader, from the claim outward, rather than facing the vault, from the accumulated context inward. A session repairs prose already written but drifted with `/recompose`, and a sentence the author flags is logged in `ops/register violations.md` so the next correction has an address.

## Relationship to the vocabulary policy

The vocabulary policy (`vocabulary policy.md`) governs names: the reference surface is denotative, and connotation lives in connected notes. This directive governs sentences: the prose around those names is expository and evidence-grounded. Together they are the vault's voice — plain names, complete sentences, cited poetry.
