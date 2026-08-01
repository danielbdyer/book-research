---
description: The bootstrap script indexes only markdown, so the seven source PDFs are absent from semantic search; the corpus must be extracted to text and added as a second collection by hand each session.
date: 2026-08-01
severity: friction
status: pending
---

# the qmd index does not cover the source documents

`scripts/bootstrap.sh` creates one qmd collection over the repository with the mask `**/*.md`. Every source document in `sources/` is a PDF, so the index it builds covers the vault's own notes and none of the material those notes are about. Semantic search over the corpus — the use CLAUDE.md documents when it says to run `qmd query` after bulk note changes — has therefore never been available in this vault without manual work.

The gap surfaced on 2026-08-01 during a pass that needed to establish what the corpus does and does not say about thirteen named territories. Making the sources searchable took three steps performed by hand: extracting each PDF to text with pypdf, staging the seven files in the session scratchpad, and adding them as a second qmd collection. The result is correct but ephemeral. The scratchpad does not survive the container, and `.qmd/` is gitignored, so the next session begins with the same absence and no record that the work was done before.

A second friction sits under the first. `pypdf` is not installed in a fresh container, and installing it required repairing a broken `cryptography` package before it would import. The bootstrap script does not install it or mention it.

Input to /rethink. The candidate resolutions are to extract the sources to text once and commit the derivatives to a tracked directory, which makes them permanently indexable at the cost of storing a derived copy alongside an immutable original; to have `scripts/bootstrap.sh` perform the extraction into an ignored directory and add the collection, which keeps the derivatives out of the repository but repeats the work per container; or to leave the index as it is and record in CLAUDE.md that semantic search covers the vault's notes only, which is the honest minimum and gives up the capability.
