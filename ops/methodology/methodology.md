---
description: This map indexes the vault's self-knowledge — the derivation reasoning, the standing author directives, and the corrections accumulated over time.
type: moc
---

# methodology

This folder records what the system knows about its own operation. The /rethink command reads from and writes to it, and /remember adds corrections captured from sessions; the upstream plugin's /architect meta-command also reads it when that plugin is installed (see `manual/configuration.md`).

## Contents

- `ops/derivation.md` — why each configuration choice was made, and the four author directives issued during setup.
- [[vocabulary policy]] — the standing directive on naming: denotative reference surface; narrative vocabulary as graph content.
- [[prose register]] — the standing directive on prose: expository, evidential, complete sentences, self-explanatory system references.
- [[center of gravity]] — the standing directive on the book's centerpieces: the convergence of thinkers and the lived practice; the system vocabulary is scaffolding, and volume in the corpus is not centrality in the book.
- [[writing test]] — the standing directive on admission: material is admitted when it would satisfy future writing; what only describes the vault's state routes to ops/, and an absence is worth one seed, not an essay.
- [[reference by name]] — the standing directive on reference: the named unit is the referent for the book's material, and chapter numbers are citation locators only, because numbered reference asserts a chapter progression that is not settled.
- [[craft evidence]] — the standing directive on the craft category: record the mechanism observable in executed prose, never the manuscript's verdict on itself, and quote the author's recorded authorship conditions rather than restating them.
- [[source standing]] — the standing directive on sources: descriptive documents and manuscript drafts are read differently, a draft's arguments for itself carry no evidential weight, and agreement between a document and its own upstream input is not corroboration.

## How to use this folder

List the notes: `ls ops/methodology/`. Find active directives: `rg '^status: active' ops/methodology/`. Corrections captured by /remember land here as dated notes; when a correction contradicts a standing directive, the contradiction goes to `ops/tensions/` for the next /rethink review.
