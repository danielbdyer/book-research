---
description: The index of the vault's self-knowledge — why it is configured as it is, the standing author directives, and the record of how it changes over time.
type: moc
---

# methodology

This folder records what the system knows about its own operation. The /rethink and /architect commands read from and write to it; /remember adds corrections captured from sessions.

## Contents

- `ops/derivation.md` — why each configuration choice was made, and the four author directives issued during setup.
- [[vocabulary policy]] — the standing directive on naming: denotative reference surface; narrative vocabulary as graph content.
- [[prose register]] — the standing directive on prose: expository, evidential, complete sentences, self-explanatory system references.

## How to use this folder

List the notes: `ls ops/methodology/`. Find active directives: `rg '^status: active' ops/methodology/`. Corrections captured by /remember land here as dated notes; when a correction contradicts a standing directive, the contradiction goes to `ops/tensions/` for the next /rethink review.
