---
description: The first session — how to orient, how to read the graph, and how material becomes claims.
type: manual
generated_from: "arscontexta-0.8.0"
---

# Getting started

A session begins with orientation: the SessionStart hook prints the file tree, the goals file (`ops/goals.md`), and any maintenance conditions that have fired. Read the goals before doing anything; they are the memory that survives between sessions.

To read the graph, start at `notes/index.md`, which lists the six doctrine maps and the structural maps. Each map states its concern in a paragraph, lists its claims with one-clause explanations, and ends with a "What remains" section naming its open work. Claims are single propositions: the filename states the claim, the body expounds it, and a substantiation section anchors it to source locations.

To add material, put it in `inbox/` — a pasted passage, a half-formed thought, a link, a file. Nothing in the inbox needs formatting. When three or more items accumulate, the orientation report will suggest running /reduce, which extracts claims from them under the admission standard: only material that would actually change how the project thinks.

To add a source document (a chapter draft, a paper, a book's notes), put the file in `sources/` and create a provenance note in `archive/` from `templates/source.md`. Then /seed creates extraction tasks for it, and /reduce works them.

The standing work is listed in two files: `ops/queue/candidates.md` (thinkers and concepts awaiting evaluation) and `ops/queue/extractions.md` (source regions awaiting extraction). The /next command recommends what to do first.

Next: [[workflows]] for the full pipeline, [[skills]] for the command reference.
