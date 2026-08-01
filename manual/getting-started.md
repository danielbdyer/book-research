---
description: This page walks the first session — orienting, reading the graph, and turning material into claims.
type: manual
generated_from: "arscontexta-0.8.0"
---

# Getting started

A session begins with orientation: the SessionStart hook prints the file tree, the goals file (`ops/goals.md`), and any maintenance conditions that have fired. Read the goals before doing anything; they are the memory that survives between sessions.

To read the graph, start at `notes/index.md`, which lists the six doctrine maps and the structural maps. Each map states its concern in a paragraph, lists its claims with one-clause explanations, and ends with a "What remains" section naming its open work. Claims are single propositions: the filename states the claim, the body expounds it, and a substantiation section anchors it to source locations.

To add material, put it in `inbox/` — a pasted passage, a half-formed thought, a link, a file. Nothing in the inbox needs formatting. When three or more items accumulate, the orientation report will suggest running /reduce, which extracts claims from them under the admission standard: only material that would actually change how the project thinks.

To add a source document (a chapter draft, a paper, a book's notes), put the file in `sources/`; that folder is immutable, so the file is never moved again. Create its provenance note in `archive/`, named `source — <short title>.md` to match the four existing notes, using `templates/source.md`; the `source_file:` field carries the path into `sources/`. Choose the short citation name that claims will use for the new source, and record it in the archive note's body and in the source registry in `notes/methods.md`. Then add an entry to `ops/queue/extractions.md` naming the regions to work, and run /reduce against them. After the pass, refresh the search index with `qmd update && qmd embed`.

The standing work is listed in two files: `ops/queue/candidates.md` (thinkers and concepts awaiting evaluation) and `ops/queue/extractions.md` (source regions awaiting extraction). The /next command recommends what to do first.

Read [[workflows]] next for the full pipeline, and [[skills]] for the command reference.
