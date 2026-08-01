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
- [[source standing]] — the standing directive on sources: descriptive documents and manuscript drafts are read differently, a draft's arguments for itself carry no evidential weight, and agreement between a document and its own upstream input is not corroboration.

## How to use this folder

List the notes: `ls ops/methodology/`. Find active directives: `rg '^status: active' ops/methodology/`. Corrections captured by /remember land here as dated notes; when a correction contradicts a standing directive, the contradiction goes to `ops/tensions/` for the next /rethink review.
