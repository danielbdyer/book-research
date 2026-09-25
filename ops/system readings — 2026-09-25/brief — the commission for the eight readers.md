# Brief for the region readers (2026-09-25)

You are one of eight readers, four running on one model family and four on another, each reading one region of a research repository against a designed system. Your report will be merged with the other seven into three documents for the author. Read this whole brief before you start.

## 1. What the repository is

`/home/user/book-research` is the research vault for a book by one author (he/him), who is a poet and facilitator. The book is now two books, differing by where the practice happens: **Book I** is for facilitators (the facilitation of another person's participation) and is written first; **Book II** is for a practitioner facilitating their own participation. The vault stores the books' material as atomic claims (one proposition per markdown file in `notes/`, the filename states the claim), gathered by topic maps, and surrounded by a large operational layer (`ops/`), primary-reading records (`archive/`), reconstructions of the corpus's making (`provenance/`), drafts (`drafts/`), the author's own reflections (`reflections/`), and a set of whole-graph "lens family" files at the repository root (`the-*.md`). `CLAUDE.md` at the root is the vault's law; read it first, in full. It tells you, among other things:

- The book's centerpieces, by author decision, are **the convergence of thinkers** (independent arrivals at the same finding, quoted with their refusals intact) and **the lived practice**, verified in the body. The corpus's system vocabulary (the Generative Triad, the twelve primitives, the molecule formulas, the three loops) is scaffolding, not the core.
- **The primary material governs the corpus.** A thinker's own work outranks the corpus's account of that thinker; the author's poems sit beneath the seven corpus documents.
- **The stance:** convergence is company, not proof. The vault does not claim efficacy.
- **Register:** plain research diction; every claim names its source; figures of speech only inside quotation marks; the vault's own coined words are explained before use.

## 2. The system you are reading against

On 2026-09-25 a reader mapped the author's long conversation with a language model (the "reframe conversation," transcript at `reframe-conversation-full-2026-08-13.md`) and designed, from that transcript alone, a system that states what content the two books need. The design is in `reframe-map-and-system-2026-09-25.md`. It was built without reading the vault. Your job is to read the vault against it.

Read these parts of the design document in full before you read your region:
- **Part V, "How the books function"** (starts at line 220): the nine functions both books share, and what Book I and Book II each add.
- **Part VI, "The need profile"** (line 282): which kinds of content each function needs.
- **Part VII, "The system"** (line 304): the six principles; the **eleven types** (Concern, Pair, Practice, Figure, Encounter, Locus, Crossing, Durable perspective, Craft move, Passage, Book), each with its fields and relations; the four **shared fields** (Standing, Scale, Lens, Provenance); the **relations**, stated in words; the two **registers** (Commitments, the nine axioms the books must keep, with tests; and the Remainder, the open questions and unresolved forks); the rhythm of the work; the four tests; the **per-concern profile grid** (one row per Concern, columns Question, Book I, Book II, Pair, Practice, Encounter, Company, Crossing, Durable perspective, Exit); and what the system deliberately leaves unmodeled.
- **Part X, "The axiom system, enumerated"** (line 835), especially "How the axioms meet the design" (each family of axioms is the condition on one relation).

Skim the rest as you need it: Part I (the conversation), II (the seven architectures the model produced and their drifts), III (the center as roles), IV (the founding insight: two poles, contraction and expansion, neither less than the other; the pair as the books' native form of thought), VIII (crosswalks), IX (a first population of the design from the transcript alone: fifteen concerns, about seventy pairs, practices, figures, craft moves, twenty-one standpoints, the author's statements, open questions), XI (questions for this phase).

Two points about the design matter for judging fit:
- **The book-need rule.** Every type, field, and relation must name the function of the books it serves. Material that serves no function of the books is not a failure of the vault; it may belong to the vault's own apparatus rather than to the books' content. Say so plainly when that is your finding.
- **The standing ladder.** Content is *surfaced* (brought by research, conversation, or AI), then *encountered*, *inferred*, *believed*, *claimed*, *written* — and only the author raises anything above surfaced.

## 3. The three questions

The author asked for exactly this (his words): "(1) the collation of existing material at a high level inside this system (2) where the existing material goes beyond or outside of the system, and how the system expands to receive it (3) where in the system is left to populate the existing material does not have any details or information."

For your region:

1. **Collation.** Place the region's material inside the system at a high level: by bodies and classes of material, with counts and representative examples, not note by note. For each of the eleven types, the four shared fields, the two registers, and the relations: what in your region already serves it, where it lives (paths), how much of it there is, and how cleanly it fits (native; fits with a translation you state; partial). Where the vault already has its own structure that does the same job as a part of the design (for example a family file that already reads the graph by concern, or a frontmatter field that already records how developed a note is), name the correspondence exactly and say what each side has that the other lacks. Fill the per-concern profile grid for every concern your region touches, with evidence per cell.
2. **Beyond the system.** Find the material that exceeds the design or falls outside it. For each body of such material: what it is (paths, counts, one short quotation), why the design cannot hold it (which type, field, or relation fails), which function of the books it serves (by the book-need rule), and **how the system expands to receive it**: a new type, a new field, a widened definition, a new relation, a new register, or a decision that it belongs outside the books' system (in the vault's apparatus). Show one real instance from the vault written in the expanded form. Also record **corrections**: places where the vault shows the design is wrong, not just incomplete.
3. **Unpopulated places.** Find the slots the design defines that your region leaves empty or thin: types with no instances, fields no material records, relations nothing expresses, profile-grid cells left blank, functions of the books with nothing to draw on. For each: what exists (nothing, thin, or present but in a form a drafting session could not use), the evidence of absence (what you searched for and where, including the search terms), and what would populate it and who can (only the author; a primary reading; a drafting session; extraction from the corpus in `sources/`; the transcript).

## 4. Rules

- **Read only.** Do not edit, create, move, or delete anything inside `/home/user/book-research`. Do not run git commands that change anything. Do not run `scripts/bootstrap.sh`. You may run read-only commands (`rg`, `grep`, `find`, `wc`, `sed -n`, `head`) and the read-only query scripts in `scripts/queries/` that print to standard output. Write only your report file, at the path your assignment gives, in the scratchpad.
- **Two shared aids** are in the scratchpad next to this brief: `notes-index.md` (one line per note: title, maps, frontmatter fields, provenance classes of its sources, size, description) and `inventory.md` (every file outside `notes/`, with size and its own description). Use them to work at a high level and to find what to open. Open the files themselves for anything you assert about their content.
- **Accuracy.** Every quotation must be copied from the file, with its path. Every count must come from a command you ran or a list you actually enumerated; say which. Distinguish what you found from what you infer.
- **Depth over coverage theater.** Read the maps and family files in your region in full. Read in full the notes that carry the most weight for the books (the ones the maps and families lean on), and enough of the rest, through the index and targeted opens, to characterize each class. Say what you read fully and what you sampled.
- **Plain language.** Your report is working material for the merger, but write it plainly: complete sentences, named subjects, and when you use one of the vault's coined words, say in a clause what it refers to.
- **Keep the author's lane.** Placements into chapters, resolving tensions, seating thinkers, and raising standing are the author's acts. Report what exists and propose structure; do not decide doctrine.

## 5. Report format

Write your report as markdown to your assigned path, with exactly these sections:

```
# Region report: <your region's name> (<your label, e.g. O1>)

## 0. What I read
Paths, and how fully (in full / first N lines / via the index only). Commands you used for counts.

## 1. Collation
### 1a. Types
A table: Type | What in this region serves it | Where (paths, counts) | Fit (native / with translation: state it / partial) | Notes
One row for each of the eleven types, including those your region does not serve (write "nothing in this region").
### 1b. Shared fields and registers
Standing, Scale, Lens, Provenance, Commitments, Remainder: what the region already records that corresponds, and how exactly.
### 1c. Relations
Which of the design's relations the region already expresses, and in what form (links with worded glosses, map sections, frontmatter fields, prose).
### 1d. The vault's own structures that already do the design's work
Each correspondence, with what each side has that the other lacks.
### 1e. Profile-grid rows
For each concern your region touches: the ten cells (Question, Book I, Book II, Pair, Practice, Encounter, Company, Crossing, Durable perspective, Exit), each marked present / thin / absent, with the evidence.

## 2. Beyond the system
One subsection per body of material: what it is; why the design cannot hold it; the function of the books it serves (or none, and where it belongs instead); the proposed expansion; one real instance written in the expanded form.
### Corrections to the design

## 3. Unpopulated places
One subsection per empty or thin slot: what exists; evidence of absence (searches run); what would populate it and who can.

## 4. The three findings that matter most
One paragraph each, with evidence.
```

Aim for a thorough report (roughly 5,000 to 9,000 words). Tables are welcome where they carry comparison. When you finish, reply with a summary of no more than 300 words naming the three findings that matter most and the path of your report.

## 6. The eight regions

| Label | Region | Core reading |
|---|---|---|
| O1 | Recognition and contraction: the doctrine core, part one | `notes/recognition.md`, `notes/contraction-not-corruption.md`, `notes/the learning arc.md`, `notes/index.md`, and their member notes; `drafts/recognition — a surface to write from.md`, `drafts/contraction-not-corruption — a surface to write from.md`; `reflections/` (both files); the recognition and contraction sections of `the-concerns.md` |
| F1 | The felt shift, the container, and the practices: the doctrine core, part two | `notes/felt-shift.md`, `notes/container-anatomy.md`, and their member notes; all nine `category: practice` notes; `drafts/felt-shift — a surface to write from.md`, `drafts/brief — the verification standard's defense.md`, `drafts/draft — the verification standard's defense.md`; the felt-shift and container sections of `the-concerns.md`; `ops/practice-model ecology.md` |
| O2 | The relational field and the call and the answering: the doctrine core, part three | `notes/relational-field.md`, `notes/the call and the answering.md`, and their member notes; `drafts/the call and the answering — a surface to write from.md`, `drafts/brief — the first letter.md`, `drafts/draft — the first letter.md`; `ops/correspondence program.md`; `ops/second person ecology.md`; the matching sections of `the-concerns.md` |
| F2 | The whole-graph readings, top down | `the-lenses.md` and every lens family at the root (`the-loci.md`, `the-concerns.md`, `the-axioms.md`, `the-constellation.md`, `the-arc.md`, `the-making.md`, `the-paradoxes.md`, `the-two-books.md`); `the-conversation-catalog.md`; `generative-core-harvest-2026-08-21.md`; `reframe-derivations-2026-08-20.md`; `reframe-deep-harvest-2026-08-20.md`; `the-working-stance-2026-08-20.md` |
| O3 | The company as standpoints: thinkers and readings | `notes/interlocutors.md`, the 64 `category: interlocutor` notes, `notes/research-frontier.md`; every reading and research record in `archive/`, and `archive/encounter — the reframe conversation (2026-08-13).md`; `ops/reading queue.md` (its structure and tiers; sample the entries); `ops/practice-model ecology — candidate next steps.md` |
| F3 | Convergences, tensions, and what stays open | the 64 `category: isomorph` notes; `notes/tensions.md` and the 13 `category: tension` notes; `notes/open-questions.md` and the 10 `category: open-question` notes; `ops/clearing.md`; `ops/open corpus.md`; `ops/tensions/`; `ops/queue/claim candidates.md`; `ops/decision sitting — 2026-09-03.md`; `epistemic-audit-2026-08-16.md`; `second-pass-audit-2026-08-19.md` |
| O4 | The books' shape and the manuscript layer | `notes/book-structure.md`, the 51 `category: structure` and 16 `category: image` notes; `ops/scaffold.md`; `ops/chapter concordance.md`; `ops/manuscript readiness.md`; `ops/arc ecology.md`; `ops/the arc as kindness.md`; `ops/ecologies/`; `the-arc.md`; `the-two-books.md`; `skeletal-structures-venn-2026-08-21.md`; `the-argument-and-the-read-2026-08-21.md`; all of `drafts/` read as the manuscript layer (passages, craft, and the books' own forms) |
| F4 | The law, the making, and the apparatus | `CLAUDE.md`; `ops/methodology/` (all 30 files); `ops/decisions.md`; `ops/orientation.md`; `ops/standing-consequences.md`; `ops/the vault's exit.md`; `notes/methods.md` and its member notes; `templates/`; `ops/derivation.md`; `ops/plain-language lexicon.md`; `the-axioms.md`; `the-making.md`; `provenance/` (the README in full, the reconstructions sampled); `reground-transcend-and-include-2026-08-14.md`; `corpus-snapshot-2026-08-13.md`; `ops/rethink-log.md` and `ops/observations/` (sampled) |

Overlap between regions is deliberate: where two readers cover the same file, the merger compares their readings. Stay inside your region for depth, and follow a link outside it only when you need it to judge a fit.
