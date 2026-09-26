# Report O4: the structure of the books, and the drafts of the manuscript

*About this version.* Reader O4 wrote this report on 2026-09-25, reading one region of the vault against the design in `reframe-map-and-system-2026-09-25.md`. On the same day, after the author said he could not follow much of the study's writing, a session rewrote the report in plain language. The rewrite keeps the reader's findings, counts, quotations, and paths, removes repetition, and uses the plain names the design now uses (topic, tradition or thinker, comparison, the author's view, writing technique, drafted passage, the author's level, the open questions, and the topic table; `system-and-vault-collation-2026-09-25.md`, Part 2, defines each). The reader's original wording is in the repository's history at commit `418f352`. Several of the corrections below have since been made in the design document, which lists them at its top; where that is so, the report says so.

**Words used.** A *topic map* is a page gathering the claims of one concern. *Company* means thinkers who reached the same finding independently; the book cites them as others who noticed the same thing, not as evidence that it is true. A *drafting document* (the vault calls it a concern surface, or a surface to write from) is a draft document in `drafts/` that assembles the material on one of the book's concerns and stops where the author's own contribution begins. A *placement* is the author's assignment of material to a chapter. A note is *nascent* when it is stated but not yet supported by a reading of its source, and *privated* when it is complete except for one named missing reading. A *named unit* is a part of the book referred to by its name, such as the House with No Ceiling, rather than by a chapter number; the vault names units and never numbers them. Three of the corpus's documents are drafts of the book itself: `mythic-os`, the earliest, with one chapter written; `arc-gloss`, the storyboard (the vault calls it the treatment); and `abridged`, the one draft written out in full prose (the vault calls it the executed draft). The AI model that wrote these drafts to the author's specification is called *the AI collaborator* below. A book's *dramaturgy* is the sequence of experiences it arranges for its reader, as distinct from a sequence of ideas to be learned. The *chapter comparison table* is `ops/chapter concordance.md` (the vault calls it the concordance), which compares the versions of each named unit in the different drafts. The *scaffold file* is `ops/scaffold.md`, which compares eight readings of the book's structure and numbers J1 to J7 the seven places where two readings disagree and the author has to decide between them (the file calls them joints). The *arc survey* is `ops/arc ecology.md`, a survey of about sixty sequences from traditions and from the corpus. The *decision sitting* is `ops/decision sitting — 2026-09-03.md`, a numbered list of questions put to the author on 2026-09-03. A question *only the author can answer* is what the vault calls a sounding. A *tension* is a disagreement inside the book's doctrine, kept open in a note rather than resolved.

The region is the structure of the books and the drafts of the manuscript: the book-structure topic map, the 51 structure notes and 16 image notes, the scaffold file, the chapter comparison table, `ops/manuscript readiness.md`, the arc survey, `ops/the arc as kindness.md`, the survey plans in `ops/ecologies/`, the family files `the-arc.md` and `the-two-books.md`, two comparisons of the book's structural readings, and everything in `drafts/`.

## 0. What the reader read, and how the counts were made

**The design and the vault's rules.** Parts 5, 6, 7, and 10 of `reframe-map-and-system-2026-09-25.md` in full (lines 220–491 and 835–1133 in the wording of that day), and Parts 1 to 4, 8, 9, and 11 read through once. `CLAUDE.md` was in the reader's session in full.

**Region files read in full.**
- `notes/book-structure.md` (251 lines), `notes/figure glossary.md`, and `notes/the learning arc.md`, the map that orders the book's developmental sequence.
- All 16 notes with `category: image`.
- 17 of the 51 notes with `category: structure`: Book I is grounded…; both books move…; the two books mirror…; the whole arc has already been drafted once…; the drafts execute one of the seven…; the executed draft carries the arc's sequence…; the per-chapter dial…; the unfolding of the center…; the abridged edition compresses…; the earlier contents distribute…; the mythic operating system contents hold four territories…; the earliest chapter was written in a voice…; the author curated and vetoed…; the correspondence vision…; the book's only honest promise…; the book may interpret only the author…; and the arc is the instrument…. The reader described the other 34 from the shared index of notes (title, maps, state, kind of source, and description) and from a listing of their fields. The reader also read in full the claim `notes/the peak is the one unit the performing law can honor only by withdrawing.md`.
- `ops/scaffold.md` (332 lines), `ops/chapter concordance.md`, `ops/manuscript readiness.md`, `ops/arc ecology.md`, `ops/the arc as kindness.md`, and all 10 files in `ops/ecologies/`.
- `the-arc.md`, `the-two-books.md`, `skeletal-structures-venn-2026-08-21.md`, and `the-argument-and-the-read-2026-08-21.md`.
- All 8 files in `drafts/`.

**Files outside the region, opened only to judge whether material fits.**
- In full: `ops/methodology/craft evidence.md`, `ops/methodology/the four kinds of structure.md`, and `ops/methodology/the two-book architecture.md`.
- Lines 1–40 of `ops/methodology/the book's current shape.md`.
- Lines 5–60 of `ops/correspondence program.md`.
- Lines 86–132 of `reframe-derivations-2026-08-20.md`: the lists for Book I and Book II, movement by movement.
- The item headings of the decision sitting, with items 15, 17, and 20 in full.
- Rows of `ops/decisions.md` found with `scripts/queries/decided.sh` for "craft" and "person," and line 123.
- Transcript lines 286, 1181–1192, and 7565–7568.
- Read-only git: `git grep -l '^category: craft' 1efe050 -- notes/` (the state of the vault on 2026-08-08), and `git show` of three of the notes it lists.

**How the counts were made.**
- Categories: `rg -l '^category: structure' notes/ | wc -l` gives 51; the same command gives 16 for image, 0 for craft, and 9 for practice. `rg -o '^category:\s*\S+'` piped to `uniq -c` gives the count for every category.
- Counts of `state:` come from a loop over the files. Kinds of source come from `notes-index.json`, read with Python, except for the image notes (see the first caution below).
- `bash scripts/queries/scaffold-check.sh` reports 16 sections current and 0 out of date. `lens-check.sh` reports all 8 sections of `the-arc.md` and all 6 of `the-two-books.md` current.
- `placements.sh` reports no placements; `link-check.sh --count` reports 0 broken links.
- `rg -l -i 'afterglow' notes/ | wc -l` gives 8.
- `grep -c -i -w` over the transcript: "psychedelic" 0, "house" 0, "peak" 1.
- The names of the relations between versions in the chapter comparison table were counted with `grep -o | uniq -c`.

**Two cautions for whoever merges the reports.**
- **The shared index misreads ten image notes.** `notes-index.md` shows no maps and no sources ("maps: -" and "prov: none") for circle, cusp, fruit, gatekeeper, gold thread, house, ink, messenger, orchard, and racket. All ten do declare topics and sources, but they write the lists with single quotes, which the program that built the index read as empty (`rg "^(sources|topics): \['"` matches both lines in each of the ten). The reader took the image notes' sources from the files themselves.
- **The extracted corpus is missing.** `.corpus/` does not exist in this container, and the reader did not run the setup script. Every fact about the corpus below therefore comes from the vault's own quotations, which give page numbers.

## 1. Where the region's material fits in the design

### 1a. Kind by kind

| Kind of material | What in this region serves it | Where, with counts | Fit | Notes |
|---|---|---|---|---|
| Topic | **Records of topics:** none in this region. **Where topics appear:** in three places. (1) Four drafting documents, each arranging one doctrine concern for the author, with what is at stake, the company, questions that ask for the author's own answers, and what the document cannot see. (2) The table setting ten topics side by side in their Book I and Book II forms (the vault calls it the mirror). (3) The matching of named units to topics in one of the comparisons of the book's structural readings. | **Drafting documents (4):** `drafts/recognition —`, `the call and the answering —`, `felt-shift —`, and `contraction-not-corruption — a surface to write from.md`. **The two-book table:** `the-two-books.md`, and `notes/the two books mirror each other on every shared concern.md` (10 rows). **The matching:** `skeletal-structures-venn-2026-08-21.md`, section 8. | Partial; fits once translated | **The topics differ.** The drafting documents follow the vault's six doctrine maps, and only "recognition" has the same name as one of the design's fifteen topics. **The two-book table covers ten.** Its ten rows match ten of the design's topics and leave out Recognition, Sufficiency, Form, Company, and Power. **What is at stake, and what it leaves out, are already present.** Each drafting document's section headed "The still center this drains to" states the topic's central claim and how it relates to the book's master question, which corresponds to the design's field for what is at stake, and its section "What this surface cannot see" is the design's field for what the topic leaves out. |
| Pair | **What exists:** pairs about the book's own form. Event against theme (the peak); house against field (which image the book uses for the space the reader is in); completion against participation (Iser); performing against withdrawing (the peak); and keeping a tension unresolved against resolving it over the course of the book. One claim connects sequence to polarity. | **Notes:** `notes/the earlier contents distribute transcendence where the arc concentrates a peak.md`, `notes/iser distinguishes completion from participation as two fates of the textual gap.md`, and `notes/the arc is the instrument that holds both poles of a tension a page cannot hold at once.md` (nascent). **Tensions:** `ops/arc ecology.md`, section 7 (20 tensions). | Partial | These pairs concern how the book is structured, rather than the distinctions offered to the reader in Part 9 of the design. The pairs offered to the reader are in other regions. |
| Practice | **What exists:** three practice units in the chapter comparison table (named the Stance, the Kata, and the Engineer's Eye); the first letter's two instructions (to pause, and to finish one sentence in one's own words); the two questions in `walked` for judging whether the reader is ready; and two practice notes moved out of the retired craft category. | **The table:** `ops/chapter concordance.md` (3 units). **The letter:** `drafts/draft — the first letter.md`. **Practice notes:** `notes/the book asks only for attention until it has given the reader something to act with.md`; `notes/the practice forms specify when to begin and not how to tell one is finished.md`. | Partial | The practices themselves belong to reader F1's region. This region adds where a practice is placed in a sequence, and whether it begins or ends a unit. |
| Image | **Image notes:** 16 notes have `category: image`: 11 images from the corpus's set of images, 4 from the reframe conversation, and the figure glossary, which matches the corpus's images to the vault's names. **Also:** the image of the engine is filed as a claim, and a survey of the images has been planned but not done. | **Corpus images (11):** house, orchard, gold thread, ink, fruit, gatekeeper, tuning fork, circle, messenger, racket, cusp. **Images from the reframe conversation (4, all nascent):** catch, score, patriotism for oneself, hollow interaction. **Other:** `notes/figure glossary.md`; `ops/ecologies/the figures.md`. | Already present; fits once translated | **The vault records more for each image.** Its unit is a set of three, "image, concept, hidden grandfather" (`ops/scaffold.md`, section 12): an image, the topic it presents, and the Kashmir Śaiva term behind it. **What it helps the reader keep in mind:** the topic the image "carries"; 9 of the 16 descriptions use that verb. **Where it came from:** recorded at four dates: the author's first sketch of April 2025, the month of July 2026 in which the corpus was assembled, the storyboard's second edition, and the reframe conversation (the author's words or the model's). **What it may suggest that nobody intended** (the design's field for an image's risk): rarely recorded. |
| Encounter | **What exists:** structure notes on how the book was made. They record dated events from the author's life and from the work of production, mostly written from the provenance reconstructions and quoting the author where he spoke. Also the one recorded occurrence of the event the book promises (the letter read at 4am), and the author's statements about the book's shape. | 16 structure notes, all `state: full`, for example `notes/the gatekeeper has a lived referent in the author's own protective structure.md`, `notes/the seed arrived in a season of burnout and container-building on every front.md`, and `notes/the central correspondence was lived nine years before it was assembled.md` | Fits once translated | **The note is not the author's.** The design's note on an encounter ("This is what I currently notice…") is the author's own; here it is a session's reading of the reconstructions. **Personal material** is kept under `ops/methodology/personal provenance.md`. |
| Tradition or thinker | **What exists:** chapter patrons (the thinker whose epigraph opens each named unit); five people recorded as precedents, for what became of the book-like work each made; the storyboard's "Guild," five sections of material on thinkers presented as rooms, which the abridged edition dropped; and five notes on how the company is organized. | **Patrons:** 17 assignments, of which 5 have thinker pages (Rilke, Alexander, Buber, Gendlin, McLaren; checked by file name). **Precedents:** 5, in `notes/book-structure.md`. **Notes on organization:** 5 structure notes. | Partial | **Reader O3's region has the thinkers.** This region adds a connection the design lacks, from a thinker to a drafted passage (the thinker's epigraph opens the unit), and a thinker who matters because of the outcome of their work (`load: precedent`). |
| Comparison | **What exists:** each of the four drafting documents prepares "the crossing that is yours" and leaves the author's part blank on purpose. No comparison made in the author's own judgment is recorded here. | `drafts/*— a surface to write from.md` (4) | The field exists and is left blank on purpose | The recognition document ends on a sentence left for the author to finish: "Across all of them, what survives their refusals is ⁠ ⁠ ⁠ ⁠ ⁠ ." |
| The author's view | **What exists:** the drafting documents do not state it, on purpose ("the durable perspective is not for this surface to state"). The author's statements about the books' form do exist, in decisions and directives. | **The author's statements:** "this can be book 1 and book 2" (`ops/methodology/the two-book architecture.md`); "I'd rather let them emerge organically" (`ops/manuscript readiness.md`); "I'm demoting them from architecture to instrument" and "I can't reveal something early that I didn't know until much later without breaking the thing that makes it work" (`ops/methodology/the book's current shape.md`) | Partial | These are statements about the books' shape, which the design would record as decisions in its record for a book rather than as a view on a topic. |
| Writing technique | **The category is empty.** The vault's `craft` category has 0 notes. On 2026-08-08 it had 18, which the author retired on 2026-08-09. **Where the material is now:** (1) at least 29 notes in other categories that state a mechanism at the level of the page; (2) the seven devices the atlas designed to accompany the text, of which one appears in the abridged edition; (3) the chapter comparison table's column for the tone the storyboard asks for; (4) the plan for a survey of devices, not yet carried out; and (5) the passages that reassure the reader, found by `ops/the arc as kindness.md`. | **Counts:** `rg -l '^category: craft' notes/` gives 0; `git grep` at commit 1efe050 gives 18. **The 29 other notes (the reader's list):** 16 claims, 8 structure notes, 2 practices, 1 image, 1 convergence note, and 1 tension. **Other places:** `ops/chapter concordance.md` (15 entries for tone); `ops/ecologies/the devices.md`. | Partial: present from 2026-08-01 to 2026-08-09, then removed by the author | See section 2.3 and finding 1. |
| Drafted passage | **The chapter comparison table,** which compares the versions of each named unit across the drafts. **The three corpus drafts,** written by the AI collaborator with the author choosing and rejecting. **The drafts folder:** two briefs and two drafts, written by sessions. **The pilot letter that was sent:** its text is not in the vault. | **The table:** `ops/chapter concordance.md` (15 units, 11 entries on how versions relate). **Drafts:** `drafts/brief —` and `drafts/draft —` (2 pairs). **The letter:** `notes/the correspondence vision was chosen and executed as a sent pilot letter.md` | Fits once translated | **What the vault has:** material in the form of drafted passages, all at the lowest level, "proposed." None of it was written by the author. The vault's versions, and its relations between versions, are more detailed than the design (section 2.2). |
| Book | **What exists:** the two-book plan the vault has adopted: where each book's practice happens, the order of the books, each book's dramaturgy, what each book's authority rests on, the topic-by-topic table of the two books, and the society-wide third book kept as a possibility. | **Files:** `the-two-books.md`; `notes/the learning arc.md`; `ops/methodology/the two-book architecture.md`; the scaffold file's sections 5 and 8 and places J1–J2; sections 3–4 of `reframe-derivations-2026-08-20.md`. **Notes:** about 12 structure notes. | Already present for the setting of practice, the first reader, the basis of authority, and how each book ends. Partial for the promise to the reader, the movements, and how much method is shown | **What the vault adds.** It separates the developmental sequence from the dramaturgy, and it records each book's form or genre, its grammatical person, the image it uses for the reader's surroundings (house or field), and how far it has been drafted (already drafted, or not yet written). See section 2.1 and the corrections. |

### 1b. The four things recorded for every kind of material, and the design's two lists

**The author's level.** The design's levels (proposed, experienced, inferred, believed, claimed, written) record the author's relation to a piece of material. Nothing in this region records that as a field. Several things in the vault record something similar:

- **`state:` measures how well a note is supported, not how sure the author is of it.** Its values are nascent, privated, full, flourishing (other notes depend on it), and composting (superseded, but still used). Across all notes: 157 nascent, 131 full, 54 privated, and 1 composting. Among the region's structure notes: 23 full, 14 nascent, 2 privated, and 12 with no state. Among the image notes: 1 full, 4 nascent, and 11 with none. The pattern is clear. All 16 notes on how the book was made are `full`, while 13 of the 16 structure notes that cite the reframe conversation cite nothing else, and all but one of those 13 are `nascent`.
- **The standing of each source records who wrote it and how it relates to the manuscript.** Its values are descriptive, draft, and primary (`ops/methodology/source standing.md`). A draft is "quoted for what it says, never credited for what it argues." This is the vault's way of saying that the corpus drafts are not the author's claims. The design has nothing like it.
- **Grades record how thoroughly a source was read.** The arc survey grades each example as read in the primary text, relayed by the corpus, worked out by a session, or primary (the author's own words). The scaffold file's list of evidence (section 16) sorts every source it relies on into confirmed in the primary text, drawn from the mesh grid or the corpus, and synthesis.
- **"Standing:" lines use the design's level names only in part.** 102 notes have a "Standing:" line. The word "inferred" appears in them 9 times; "encountered," "believed," and "claimed" never do. The model's contributions are marked "model-elaborated" in 18 notes.
- **The author's own three tiers are the closest match.** `ops/methodology/the book's current shape.md` sorts statements about the book's shape by how sure he is: the first tier settled, the second changing, and the third undecided. This is the nearest thing in the vault to the design's levels "believed" and "claimed."

**Scale.** No field records scale. (The field names used across all notes are `topics`, `description`, `sources`, `category`, `state`, `works`, `seat`, `load`, `recommendation`, `privation`, `clause`, `discipline`, `type`, `treatment`, and `status`.) Scale appears only for the books as wholes: "the two books explicitly occupy micro ↔ meso while the macro remains the horizon" (`ops/methodology/the two-book architecture.md`), meaning that the books concern oneself and people together, and society as a whole is mentioned only as the wider context.

**Quadrant.** No field records it. The design's own phrase is recorded as a claim, `notes/wilber's four quadrants are a coordinate system, not an architecture.md`, gathered in the book-structure map. Nine notes mention the quadrants.

**Source.** **Already present, and thorough.** `sources:` is present in 502 of the 516 notes; the 14 without it are the topic maps. The chapter comparison table and the scaffold file cite corpus facts by page and line ("`abridged` p. 47", "`walked` X, p. 22, ll. 807–08"). There are two small errors:
- **A citation two lines off.** Two notes cite the author's sentence about the false peak at transcript line 284 (`notes/the book is one of the automatisms it must interrupt.md` and `notes/the pulse has a counterfeit at each phase, a false peak of expansion and a racket of forgotten contraction.md`). The transcript has it at line 286, as the design does.
- **Missing line numbers.** Some structure notes based only on the reframe conversation cite the name of a section rather than a line. For example, `notes/both books move through recognition → relation → participation → stewardship.md` cites "(the four great movements under both books)," where the design gives lines 16970 and 16974.

**The commitments.** In this region the vault states rules a drafting session must keep, several with a way to check them:

- **Six conditions for readiness, and a seventh.** `ops/manuscript readiness.md` lists six conditions a unit of writing must meet, each "stated so that it could be checked rather than felt": its propositions are stated and sourced; the thinkers its argument depends on have been read; the thinkers' refusals are recorded; its tensions are visible; an opponent has a role in the company, or the absence is named; and its constraints are stated. The seventh belongs to the author: "He can say what the piece is for in one sentence, in his own words, about something he walked." It is the design's commitment "The author is the first participant," restated as a test of whether one piece of writing is ready.
- **The fixed limits in the brief for the first letter.** `drafts/brief — the first letter.md` lists five: the order in which things are disclosed, no claims that the book works, the grammatical person, images treated as candidates, and the reader who reads fluently.
- **Four safeguards on any arc taken from elsewhere.** `ops/arc ecology.md`, section 10, sets them: "An arc is a dramaturgy, never an ontology"; sequence claims are "orderings of named units"; the poems are not used as evidence for any doctrine; and the survey's groups only collect examples, without claiming that the traditions agree.
- **Withdrawal at the peak.** `notes/the peak is the one unit the performing law can honor only by withdrawing.md` makes it "not one option among several but the only performance the law permits there."
- **The promise.** `notes/the book's only honest promise is conditional testimony.md` limits the book's promise to conditional testimony.

Three of these have no counterpart among the design's nine commitments: the order of disclosure, the rule against claiming that the book works (or the rule of conditional testimony), and the withdrawal at the peak (section 2.7).

**The open questions.** They are well recorded here, and all of them are the author's to decide:
- the scaffold file's seven places where its readings disagree (J1–J7);
- the two such places in the family file on the arc, and the five in the family file on the two books;
- the arc survey's twenty tensions and seven questions only the author can answer;
- the four items under "What remains" in the chapter comparison table;
- the decision sitting's items 3, 4, 5, 14, 15, 16, 17, and 20, which are: the arc as a kindness to the reader, his own record and the staged peak, the last phase, house or field, Book I's grammatical person and form, how much of the book the author's demotion of the system affects, a unit for judging readiness, and the answer to the pilot letter.

### 1c. Connections

- **An image helps the reader keep a pair or a topic in mind.** The vault already has this connection, in the verb the earlier version of the design used: nine descriptions of image notes say the image "carries" its topic (for example, "The gatekeeper carries the protective part as sankoca honored as service"). The link descriptions state the connection in words, as the design asks.
- **An image comes from an encounter.** The vault already has this connection. The notes on the making record where three images came from in the author's life: `notes/the gatekeeper has a lived referent in the author's own protective structure.md`, `notes/the gold thread is the rainbow thread re-owned.md`, and `notes/patriotism for oneself is the felt form of the auxiliary relation to a sovereign reader.md`.
- **Each book treats a topic in its own form.** The vault has this as the two-book table (10 rows). The family file on the two books and the learning arc also divide the evidence between the books: "The convergence of thinkers → serves Book I… The lived practice / the felt shift → serves Book II" (`notes/the learning arc.md`).
- **A drafted passage puts topics into words.** The vault has this only as a session's synthesis. The eighth reading in `skeletal-structures-venn-2026-08-21.md` matches units to topics: "Third Entity→relational-field, House/Triad→container-anatomy, Open Secret→answerability, Psychedelic Moment→recognition, Stance/Kata→felt-shift." The chapter comparison table itself records no topic for any unit.
- **A writing technique presents material on the page.** The vault has this in prose: in the table's entries on the storyboard's tone, and in claims such as "the book may interpret only the author…". Since 2026-08-09 the vault has had no kind of note for it.
- **A commitment protects a function.** Present as rules that do not name the functions they protect (see the commitments above).
- **Connections the vault has and the design lacks:**
  - *Versions of one element.* Relations between versions of a named unit, in the chapter comparison table: "compressed into" 1, "revised into" 2, "dropped at" 2, "added at" 1, "carried unchanged into" 1, and "differ(s) between" 4 (a sixth relation that the list of five in `CLAUDE.md` does not name).
  - *Sequence.* "Carries into," a connection with a direction from one step to the next, in the learning arc ("an edge here carries direction").
  - *Patronage.* A patron's epigraph opens a named unit, and 17 such assignments were carried unchanged from the storyboard to the abridged edition.
  - *Introducing early and completing late* (the vault's words are plant and payoff), as in "the half-erased word beside the unlabeled room; the sentence eleven chapters finish at the mirror" (atlas §IX.6c, quoted in `notes/the unfolding of the center is planted half-erased and finished at a mirror.md`).
  - *False friends.* A word two readings share does not show that they agree (the scaffold file, section 15).
  - *Agreement among readings.* Where several readings place the same material at the same position, the scaffold file counts that as agreement.

### 1d. Structures the vault already has that serve the design's purposes

1. **`ops/chapter concordance.md` and the design's drafted passage.** The chapter comparison table records, for each named unit:
   - its patron;
   - its length in the abridged edition, in words;
   - the tone the storyboard asks for;
   - where it is found in each of four documents;
   - how its versions relate;
   - which document is "the reference text" for each element.

   *What the table has and the design lacks:* several versions of one element, the relations between those versions, who wrote each version (implied by the standing of each source), and the principle that positions are "data about the documents, not a claim that any ordering is settled."
   *What the design has and the table lacks:* which topics, pairs, practices, and encounters a unit puts into words; which book it belongs to; and the writing techniques it uses (only the column for tone gives any indication of them).

2. **The four drafting documents in `drafts/` and the design's row in the topic table.** Each drafting document states what is at stake in a topic, lists its company with each thinker's refusal, asks questions for the author's own comparison, does not state the author's view, and says what the topic leaves out.
   *What the drafting documents have:* the actual company with its refusals, and questions for the author about Book I ("Where is the line, for Book I, between a fold a facilitator may help a person learn to open, and a wound…").
   *What the topic table has:* separate entries for Pair, Practice, Encounter, and Book II, and a mark of present or absent on each.
   *One mismatch:* the drafting documents are called "the Book I concern surfaces" (`ops/standing-consequences.md`, line 48), while `notes/the learning arc.md` assigns the felt shift to Book II ("The lived practice / the felt shift → serves Book II"). The felt-shift document nevertheless asks "Where in Book I is the reader handed a check…". The topic table's two columns for the books would show this mismatch.

3. **The scaffold file, `skeletal-structures-venn-2026-08-21.md`, and `the-argument-and-the-read-2026-08-21.md`, and the design's topic table.** Each reports what is settled, what has little material, and what is the author's to decide.
   *What the vault's reports have:* grades of evidence, the places where readings disagree, false friends, and checksums that show whether each section is out of date (all 16 sections were current that day).
   *What the design's table has:* one row per topic, whereas the scaffold file's rows are readings and positions. The two reach one finding independently. The design's topic table finds that Integration has the fewest entries of any topic (Part 9), and the scaffold file's place J2 says "Book II's return is the thinnest position in the whole graph."

4. **`the-two-books.md`, `ops/methodology/the two-book architecture.md`, and the design's record for a book.** The fit is close on where each book's practice happens; on keeping the division by audience separate ("never fused"); on the basis of authority; on the topic-by-topic table; on the point at which Book I hands its reader on to Book II ("the facilitator disappears"); and on the society-wide third book kept as a possibility. The vault adds the assignment of a dramaturgy to each book, the questions of form and grammatical person, and how far each book has been drafted (section 2.1).

5. **The image category, the figure glossary, `ops/ecologies/the figures.md`, and the design's image.** The survey plan sorts images by "whether a place to walk, a character to meet, an object to hold, or a movement to make," and by "which carry a mechanism and which a mood." That is a more exact version of the design's field for what an image may suggest that nobody intended. Most of the glossary matches corpus images to the vault's own procedures rather than supplying book content: "an orbit | membership in a topic map (the `topics:` field)," and "harvest; which fruit falls | the /reduce phase." Only its second table and its paragraph on the corpus's set of images serve the books.

6. **`ops/methodology/craft evidence.md`, `ops/ecologies/the devices.md`, and the design's writing technique.** The directive is still marked active: "Record the mechanism, never the verdict," and "a craft note that cannot state how its claim would be checked is not yet a craft note." The survey plan sorts devices by what they do to the reader: act on the reader, withdraw, ask, or certify.

7. **The four kinds of structure, the arc survey, and the design's brief treatment of sequence.** `ops/methodology/the four kinds of structure.md` sorts every sequence as one of four kinds: an operator (a step inside one unit), a method (the author's research questions), a dramaturgy (a sequence of experiences arranged for the reader), or an ontology (a statement of what contains what). `ops/arc ecology.md` sorts about sixty sequences into fourteen groups, by what causes the reader to go on from one step to the next and what marks the end. The design has nothing here (sections 2.1 and 2.7).

8. **How the family files use the five questions.** `the-arc.md` and `the-two-books.md` each open by applying the reframe conversation's five questions (about standpoint, encounter, recognition, perspective, and practice) to their subject. The earlier version of the design matched the same five questions one to one with its kinds of material; the current version has removed that table (Part 7, "Removed: a table that matched four sequences step by step").

**One correction the design makes to the vault, in this region.** `notes/the learning arc.md` and section 4 of the scaffold file attach the author's words "that is the question of my life" to the book's master question: "It is the author's own life-question ("that is the question of my life," reframe conversation, on how much form holds just enough that surprise can still happen)". The transcript puts those words (line 1190) directly after the question about form at line 1183, "how do we hold just enough form so that surprise can still happen?". The master question is the model's, at line 7567. The design keeps the two apart, and it now also states that the question at line 1183 is the model's, which the author adopted as his own at line 1190 (see its list of corrections at the top). The vault's sentence in parentheses acknowledges the difference, but the sentence as a whole still merges them.

### 1e. The topic table

Marks: **P** present, **L** little, **A** absent (in this region, unless stated). The reader filled in seven topics: the six this region concerns most (Form, Integration, Transformation, Authorship, Sufficiency, and Company), and Recognition as its drafting document shows it. Reader O1's region has the full row for Recognition.

**Form.** The design's question is "how do we hold just enough form so that surprise can still happen?" (line 1183).

| Entry | Mark | Evidence |
|---|---|---|
| Question | P, merged with another | It is included in the vault's statement of the book's center rather than recorded as a topic of its own (`notes/the learning arc.md`). `notes/the arc is the instrument…` cites lines 1183–1190 as "the surprise pair, in the author's own voice," although the question at line 1183 is the model's and the author adopted it at line 1190. |
| Book I | P | `notes/the book asks the middle question between mechanism and content — conditions for recognition without prescribing what is recognized.md` (nascent). This is the design's Book I form, at line 6955. |
| Book II | A in the notes | "small enough to remain alive" appears in 0 notes. It appears only in `reframe-derivations-2026-08-20.md`, item M9. |
| Pair | P | Structure against surprise, in `notes/the arc is the instrument…` (nascent). Also event against theme, and house against field. |
| Practice | L | The questions for judging readiness, "is she ready for it here, in sequence; does it destabilize only where destabilization serves" (`walked` p. 24, quoted in `ops/the arc as kindness.md`). |
| Encounter | P | `notes/constraint produces fluency and deprivation reveals the essential.md` (the author's words at line 1074; nascent). `notes/the making of the book enacts the law the book states.md` (full). |
| Company | P | Alexander, Iser, and Kierkegaard (`the-arc.md`); the thinkers who refuse any arc (`ops/arc ecology.md`, group 13). |
| Comparison | A | Nothing recorded. The question for the author is item 3 of the decision sitting. |
| Author's view | L | His statements exist (section 1a), but they are not recorded as a view on this topic. |
| What it hides | P | "A spiral has no peak; it has radii" (`notes/the earlier contents distribute…`). The six-phase arc "describes the experience the book stages and not the event the author reports" (`ops/arc ecology.md`, section 5). |

**Integration.** The design's question is how to become capable of carrying complexity "without premature closure" (line 16612).

| Entry | Mark | Evidence |
|---|---|---|
| Question | A | "premature closure" appears in 2 notes (`notes/tensions.md` and `notes/the drive to closure has measurable costs.md`), and neither states this question. |
| Book I | L | Only the row of the two-book table, "hold complexity." |
| Book II | L | Only the row of the two-book table, "integrate experience." The arc's phase of integration is written out in `abridged`, but "no dedicated 'the practitioner returns / stewardship of the self' claim exists" (the scaffold file, section 8). |
| Pair | A | "total coherence" appears in 0 notes. |
| Practice | P, with what it lacks named | The Stance, the Kata, and the Engineer's Eye (the chapter comparison table). `notes/the practice forms specify when to begin and not how to tell one is finished.md` (full). |
| Encounter | L | The author's choice "peak resolves into return" (`ops/decisions.md`, line 123). The sending in poem #16 as the final act (`ops/arc ecology.md`, section 5). |
| Company | P | `notes/the sufi arc completes annihilation by return rather than by staying dissolved.md`; `notes/what the big experience leaves behind depends on what follows it.md` (full). |
| Comparison | A | Nothing recorded. |
| Author's view | L | Only the author's "peak resolves into return." |
| What it hides | L | It is named only as a tension: "Three incompatible answers and no note stating them against each other" (`ops/arc ecology.md`, tension 4). The survey also names a kind of ending the book lacks: "An ending that is neither a peak nor a return." |

**Transformation.** The design's question is "What is actually happening when one human being helps another become something they could not yet see themselves becoming?" (line 15041).

| Entry | Mark | Evidence |
|---|---|---|
| Question | L | No note asks it. `notes/transformation is enacted participation inside a held container.md` states a thesis, not the question. |
| Book I | P | "the book tends conditions for the reader's own facilitation of recognition rather than facilitating transformation," and "facilitation is stewardship of conditions" (both listed in `the-two-books.md`). |
| Book II | L | Only the row of the two-book table, "practice becoming." |
| Pair | P | Conditions against outcomes: "I helped create a field in which something became possible," never "I caused this transformation" (`notes/the book's only honest promise is conditional testimony.md`). |
| Practice | A | None in this region. |
| Encounter | P | `notes/the central correspondence was lived nine years before it was assembled.md` (the Landmark Forum, 2017; full). |
| Company | P | Five thinkers from outside the book's lineages who reached the participation law independently (the scaffold file, section 9); the law is the rule that order, knowing, and meaning are made by the people taking part rather than delivered to a spectator. |
| Comparison | A | Nothing recorded. |
| Author's view | P | The author's "the book can't verify that you've done the work" (line 266), recorded in the note on conditional testimony. |
| What it hides | P | `ops/the arc as kindness.md`: "the reader who finishes is not the reader who began" is "a causal claim the descriptions relay from notes the corpus does not hold." |

**Authorship.** The design's question is "What has actually become mine to say?" (line 17018).

| Entry | Mark | Evidence |
|---|---|---|
| Question | L | "become mine to say" appears in 0 notes. The notes on the making answer the question with a record of what happened rather than asking it. |
| Book I | P | `notes/the book may interpret only the author because interpretation is licensed where its subject can answer back.md` (nascent). This is the design's Book I form of the topic, "Don't author another," applied to single sentences. |
| Book II | L | Only the row of the two-book table, "author oneself." |
| Pair | P | An example against a doctrine: `notes/the book is the score not the performance.md` (image, nascent). |
| Practice | L | `notes/delegating production differs from delegating exploration, so each step should require fresh meaning-making.md`, a rule for making the book. |
| Encounter | P | `notes/the author curated and vetoed while the collaborator wrote the correspondences.md`; `notes/the earliest chapter was written in a voice distilled from the first fifteen poems.md` (both full). |
| Company | P | Kierkegaard, Plato's Seventh Letter, and Iser (`the-arc.md`). |
| Comparison | A | Nothing recorded. |
| Author's view | P | "that solo Chapter 1 draft emerged from this system prompt I created which analyzed the first 15 of the poems" (the author, 2026-08-03). |
| What it hides | P | `notes/writing without authority renounces the teacher's office and with it the power to correct a misreading.md`. |

**Sufficiency.** The design's question is "What does attention feel like when it is no longer organized around lack?" (line 16196).

| Entry | Mark | Evidence |
|---|---|---|
| Question | A | Not stated as a question. |
| Book I | A | "validation through another" appears in 0 notes. |
| Book II | P | The last words of the abridged edition are "For now, what you have is enough. Step in. — end —" (`abridged` p. 49, quoted in the scaffold file, section 6). The design's Book II form is "This is enough for now." The phrase "enough for now" appears in 1 note: `notes/sufficiency is the capacity to remain present without needing the next input to complete oneself.md`. |
| Pair | L | The one note above. |
| Practice | A | None in this region. |
| Encounter | P | `notes/the founding inversion restates the author's own sufficiency inheritance.md` (full). |
| Company | A | None in this region. |
| Comparison | A | Nothing recorded. |
| Author's view | L | The author's words at line 446 are recorded in "allowing one's own sufficiency is a recursive condition…" (`the-two-books.md`). |
| What it hides | A | Nothing recorded. |

**Company.** The design's question is "What survives the difference?" (line 3164).

| Entry | Mark | Evidence |
|---|---|---|
| Question | P | The question appears in 1 note: `notes/the comparative method does not collapse a correspondence before its difference is understood.md`. |
| Book I | P | "The convergence of thinkers → serves Book I" (`notes/the learning arc.md`). |
| Book II | L | "traditions as practices" appears in 0 notes. |
| Pair | P | "Convergence = company, never proof" (the scaffold file's list of "false friends," shared words that do not mean agreement). |
| Practice | A | None for the reader in this region. |
| Encounter | P | The Landmark Forum of 2017 (above). |
| Company | P | 17 assignments of chapter patrons, 5 of them with thinker pages; the 5 people recorded as precedents. |
| Comparison | A | The blank left on purpose in the recognition document. |
| Author's view | L | Nothing firmer is recorded here. |
| What it hides | P | `notes/the unanimity claim is an artifact of how the lineages were selected.md` (full). |

**Recognition, as its drafting document shows it** (`drafts/recognition — a surface to write from.md`). Question P, as the note on the "middle question." Book I P: `notes/recognition is cultivated rather than caused or manufactured.md`. Book II P: "you are already participating," in 3 notes. Pair P. Practice L: the document's three questions are addressed to the author, not to the reader. Encounter P: the letter read at 4am. Company P: nine traditions and thinkers, each with the point where it disagrees with the book. Comparison A and Author's view A, both left blank on purpose. What it hides P: the section "What this surface cannot see."

## 2. Material the design cannot record

### 2.1 What is already drafted for Book II: the arc, the house, the named units, and a model of sequence

**What it is.** On 2026-08-16 the author decided that the arc of the psychedelic experience is Book II's dramaturgy: "this can be book 1 and book 2" (`ops/methodology/the two-book architecture.md`). The material behind that decision includes:
- the six phases, which only the descriptive documents name;
- five named parts;
- fifteen named units in order, plus nineteen units outside the arc (eleven of them written);
- four parallel readings of the arc (the storyboard calls them overlays: Courtyard, Descent of the Word, Breath, and Guild);
- van Gennep's three stages of a rite of passage, used to structure the "sixteen days";
- the house of nine rooms;
- the pattern of intensity across the units (a smaller peak in the first unit, a low point at the ninth, and the highest point at the eleventh);
- two orderings (reading the units once, in order, against "concentric spirals");
- the arc survey's fourteen groups of sequences.

The scaffold file treats four of its readings as one object: "Book II [R3] ≡ the psychedelic arc [R2] ≡ the walkable house [R7] ≡ the fifteen-unit draft scheme [R1]" (`ops/scaffold.md`, section 2).

**Why the design cannot record it.** The transcript contains "psychedelic" 0 times, "house" 0 times, and "peak" once (counted with `grep`). The design mentions the house only in open choice 20. The design's record for a book has one field for sequence, the order of its movements and its developmental steps, and in the version the reader read, Book II's entry there was "Recognition → Relation → Participation → Stewardship of the self." (The design now records the author's decision; see its list of corrections at the top.) The design has no kind of material for a sequence, no distinction between a developmental sequence and a dramaturgy, and nothing on what causes a reader to go on from one step to the next, how the high point is handled, or what marks the end. The vault itself warns against "a stack of what-contains-what mistaken for a sequence of what-happens-next" (`ops/methodology/the four kinds of structure.md`).

**What it does for the books.**
- Function 1 (start from what the reader already has): "You already know everything in this book. You've just forgotten. Reading is remembering."
- Functions 2 to 4, through the opening part, which brings about in the reader what the second part, "The Architecture Revealed," then names.
- Function 7 (say what the framework hides, and how the reader can set it aside): "You can put the book down now" (`abridged` p. 47).
- Function 8 (state a promise to the reader and keep it).

All of it serves Book II.

**How the design would be extended.** Add a kind of material, **sequence**, or give the record for a book a field that records a sequence for its dramaturgy. Its fields:
- **kind:** operator, method, dramaturgy, or ontology;
- **book:** the book it belongs to;
- **steps:** an ordered list of named units, with who names them (the descriptive documents or the drafts);
- **what causes the reader to go on** from one step to the next;
- **the high point:** concentrated in one place, spread out, or withheld;
- **return:** whether the sequence completes or repeats;
- **the end:** what marks it;
- **the author's level.**

Add three connections: a sequence orders drafted passages; a sequence goes from one term of a pair to the other over its steps (from `notes/the arc is the instrument…`); and a drafted passage introduces something early that another completes later.

**One real example, in the extended form.**
- **Sequence:** Book II's dramaturgy.
- **Kind:** dramaturgy.
- **Book:** II (the author, 2026-08-16).
- **Steps:** preparation → onset → deepening → peak → descent → integration. Only atlas §X.1 p. 22, `walked` p. 21, and `first-telling` p. 3 name this list. The drafts name parts instead: The Clearing Opens, The Architecture Revealed, The Relational Field, The Break, and The Return with Gifts.
- **What causes the reader to go on:** the pacing of the prose ("density, tempo, and sentence-length are respiratory instruments," `walked` X), judged by the question "is she ready for it here, in sequence."
- **The high point:** withheld. The note on the peak says so, and the author's choice is "peak resolves into return" (`ops/decisions.md`, line 123).
- **Return:** unresolved. The Stance's "The returning is the practice" makes the sequence repeat; reincorporation, the last stage of a rite of passage, makes it complete (arc survey, tension 4).
- **The end:** "Welcome home" in the storyboard and the three descriptive documents, against "Step in." in the abridged edition (the chapter comparison table's row of 2026-09-03).
- **The author's level:** the phases are the corpus's; whether they are "a claim about what happens to a reader, or … the shape of the holding" waits on the author (decision sitting, item 3).

### 2.2 Versions of a passage, who wrote each, and how the versions relate

**What it is.** The chapter comparison table compares 15 named units across four documents. For each it records the unit's length in the abridged edition (about 21,000 words in all, 1,160 per unit on average), the tone the storyboard asks for, and the patron, and it has 11 entries recording how one version relates to another. Three of the four documents are drafts of the book. On who wrote them, the provenance record says: "the seven documents are overwhelmingly Assistant-drafted, to your specification" (`notes/the author curated and vetoed while the collaborator wrote the correspondences.md`). The abridged edition is recorded as "Claude's own compressed versions" (`notes/the whole arc has already been drafted once in prose.md`).

**Why the design cannot record it.** The design defines a drafted passage as language drafted in the author's voice, and Part 10 adds that a drafted passage puts material into words only through the author's own participation. Under that definition every draft of the manuscript in the vault is excluded, so the kind would have nothing in it. The design also has no way to record several versions of one element, no record of who wrote a version, and no relations among versions.

**What it does for the books.** It serves the manuscript itself, which is what the design says drafted passages are for. With the table, a drafting session needs "one lookup rather than a re-reading of seven documents" (the table's stated purpose).

**How the design would be extended.** Let a drafted passage have **versions**. Each version records its document and location; **who wrote it** (the author; the AI collaborator with the author choosing and rejecting; or a session); the author's level; and its length. Add a relation between versions, taken from the vault: *carried unchanged into, revised into, compressed into, dropped at, added at,* and *differs between*, each stated with both versions and the direction. Keep the level "written" for a version the author wrote himself.

**One real example.**
- **Drafted passage:** the House with No Ceiling. **Book:** material already drafted for Book II. **Patron:** Alexander, carried unchanged from the storyboard into the abridged edition.
- **Versions:**
  - `mythic-os`, page 3: written; its table of contents names it "The House with No Walls." Written by the AI collaborator, through the voice prompt the author made.
  - `arc-gloss`, ch1: a storyboard entry, with the tone "Highest poetic density in the book." Written by the AI collaborator.
  - `abridged`, ch1: written out in full, 1,658 words. Written by the AI collaborator.
- **Relations:** "revised into" a separate unit from one page of a single chapter (the chapter comparison table). The poem "Time Is Not Linear" was "compressed into" it "from roughly a hundred verse lines to five prose lines." That poem ends "soon I'll be thirty two." `ops/arc ecology.md`, section 5, quotes the same line as poem #4, so this may be a version the author wrote, compressed into a version the AI collaborator wrote. That identification is the reader's inference; the reader could not check it against the corpus because `.corpus/` was missing.
- **What it puts into words:** recognition, and a house open to the sky that still has floors, walls, and a kitchen (the book's refusal to renounce ordinary life), through `notes/the house with no ceiling is transcendence with plumbing.md`.
- **The author's level for every version:** proposed.

### 2.3 Devices designed to accompany the text, and devices used in the prose

**What it is.**
- **The devices designed to accompany the text.** The atlas records seven devices, at §X.6: quotations and commentary in the margins, which form a second book with its own plot; a column on each left-hand page where readers sign that they have tried a practice (the "verso" column, where a reader writes "walked. still true."); a record that follows each image introduced early to the place where it is completed (the "planting ledger"); promises made early and visibly kept (the "escrow of promises"); a record, for each chapter, of the proportion of evocative to informative prose; interludes where the parts meet; and a checklist of eight questions every chapter must pass. Only the interludes appear in the abridged edition: "the words *margin*, *verso*, *countersign*, *ledger*, *escrow*, and *checklist* do not appear anywhere in the edition's forty-nine pages" (`notes/the drafts execute one of the seven designed apparatus devices.md`).
- **The passages in the abridged edition that reassure the reader.** Examples are "Pause. Breathe. You have come a long way. We are about to go deeper" (`abridged` p. 31) and "If you find yourself disoriented, you are reading correctly. Stay." (p. 32). Both are quoted in `ops/the arc as kindness.md`.
- **The 29 notes that state a mechanism at the level of the page, and the 18 retired craft notes** (finding 1).

**Why the design cannot record it.** The design's fields for a writing technique are what it does to the reader's attention, what it leaves to the reader, the facilitation technique it adapts, where it is used, and how it goes wrong. Several things are missing:
- whether a device was *designed* or actually *used* in a draft;
- a *check* in the prose that shows it is there (the vault's rule is that "a craft note that cannot state how its claim would be checked is not yet a craft note");
- its *position in a sequence* (introduced early, completed later, or placed where two parts meet);
- what it does to the reader: acts on the reader, withdraws, asks, or certifies (`ops/ecologies/the devices.md`).

**What it does for the books.** It serves functions 3, 7, and 8. For Book I, the design itself says that the facilitator who reads the book learns from how the book is written.

**How the design would be extended.** Add four fields to a writing technique: a *check* (a mark in a draft that can be counted); its *status* (designed, used, or retired); its *position* (introduced early, completed later, where parts meet, at the high point, or at the close); and *what it does to the reader*. Add the connection *introduces early, completes later*.

**One real example.**
- **Writing technique:** the formula from the planting ledger.
- **What it does to the reader's attention:** it introduces Kṣemarāja's madhya-vikāsāt "as a half-erased word beside an unlabeled room" and completes it "eleven chapters later at a mirror."
- **What it leaves to the reader:** the recognition that completes it, which arrives "as something remembered rather than something taught."
- **Position:** introduced early, completed at the peak.
- **Status:** designed in the atlas; whether "any draft executes either site is not established."
- **Check:** find both places in `abridged`.
- **Source:** `notes/the unfolding of the center is planted half-erased and finished at a mirror.md`.

### 2.4 The drafting documents and the briefs: a stage of preparation between the notes and a passage

**What it is.**
- **Four drafting documents.** Written between 2026-08-24 and 2026-08-28, they are the vault's "current lead" (`ops/standing-consequences.md`, line 48).
- **Two briefs.** A brief is "what the vault hands its drafting, sorted by job": the finding, the constraints as fixed limits, the writing techniques to try, the material chosen, and what the two real readers are asked.

**Why the design cannot record it.** The order of work the design describes runs from a tradition or thinker, to an encounter, to a note, to a comparison, to one of the author's views, to a practice or a drafted passage. It has no document that assembles the material for one passage or one topic and then states what the author is to do next. The design's topic table marks what is present; it does not prepare anything for the author.

**What it does for the books.** It serves every function indirectly, through the author's own comparisons and views, and function 6 (offer the author's own view as an example) most directly.

**How the design would be extended.** There are two options:
- Add a kind of material, **brief**: a specification for a drafted passage, with its constraints, the material chosen for each job, the techniques to try, and its test with a reader.
- Or state that a row of the topic table can be *prepared for the author* as a drafting document, with its Comparison and Author's view entries left blank.

**One real example.**
- **Brief for:** the first letter (material for Book II, in the form of a letter).
- **Constraints:** the order of disclosure; no claims that the book works; "I" speaking to "you"; "no house, no rooms, no gatekeeper"; the reader who reads fluently.
- **Techniques to try:** introduce the standard before naming it; put the one device that looks ahead (the writer's promise to say later what he thinks happened) in the opening third, and end quietly with the request for an answer; the instruction for answering, "something I can say now, that I could not have said an hour ago, is —".
- **Test with a reader:** "did you answer before continuing".
- **Source:** `drafts/brief — the first letter.md`.

### 2.5 Sending, and being answered

**What it is.** It is the topic of the call and the answering, at the scale of the whole manuscript:
- `notes/seventeen chapters rest at madhyama.md` (a tension note);
- `notes/the whole arc has already been drafted once in prose.md`, which says "what is missing is not writing but a reader";
- the pilot letter, sent before 2026-08-14. "the recipients and exact date are not held in the vault" (`notes/the correspondence vision…`), and "no reply is recorded anywhere in the vault (checked 2026-09-03)" (`ops/correspondence program.md`).

**Why the design cannot record it.** The design's levels stop at "written," which means the material is in a drafted passage. Sending is a further act the author takes. The corpus names that act as the deciding one: a word that is never sent "can be perfected forever but can never be answered at all" (`drafts/the call and the answering — a surface to write from.md`). The design's list of open questions includes the medium, and a third book postponed until later, only by implication.

**What it does for the books.** It serves function 8 (state a promise to the reader and keep it), and how each book ends. The book's own genre is the letter, "the one genre whose every sentence expects an answer" (`CLAUDE.md`).

**How the design would be extended.** Add the levels **sent** and **answered** for drafted passages, each set only by the author. Add the connection *a drafted passage is answered*, which records a reply received and its date. The design does not record the reply itself, which is the reader's own writing; it records only that a reply was received.

**One real example.**
- **Drafted passage:** the pilot letter. **Written by:** a session, in a draft the author cut.
- **The author's level:** sent (before 2026-08-14). **Text in the vault:** no. **Answered:** unknown (decision sitting, item 20).

### 2.6 The notes on how the book was made, and whose account they give

**What it is.** The 16 `full` structure notes on how the book was made: "the figures precede the system by a year," "the triad predates the author's contact…," "the book was written across the author's move to seattle…," and the others. The summary the vault draws from them is that "a man noticed some things, and then found out that other people had noticed them too" (`CLAUDE.md`).

**Why the design cannot fully record it.** An encounter's note is the author's own note. These notes are sessions' readings of the reconstructions, with the author quoted where he spoke. The design's levels cannot tell the event apart from the account of it.

**What it does for the books.** It serves function 6 (offer the author's own view as an example), and what Book II's authority rests on, "embodied realization."

**How the design would be extended.** Add a field to the encounter, **account**, with three values: in the author's words; reconstructed from works consulted; or a session's inference. The author's level then applies to the account separately from the event.

**One real example.**
- **Encounter:** the original of the gatekeeper.
- **When:** "the MDMA experience of his early twenties" (the note's description).
- **Account:** reconstructed from the provenance files, which are works consulted; the note is "full."
- **Involves:** the image "the gatekeeper is met with a bow never a fight," and the topic that contraction is not corruption.
- **The author's level for the account:** below "experienced," until the author states it again himself.

### 2.7 Commitments about order that the design lacks

**What it is.**
- **The order of disclosure.** "I can't reveal something early that I didn't know until much later without breaking the thing that makes it work" (the author, 2026-08-04, `ops/methodology/the book's current shape.md`).
- **The order of trust in the letters.** "The chain's fourteen steps distribute as things a friend tells a friend in the order of trust rather than the order of logic" (`ops/correspondence program.md`).
- **The rule of names over numbers.** Units are named, never numbered (`ops/methodology/reference by name.md`).
- **The ban on measuring against a structure.** The author stopped work on a measure of readiness based on the fifteen units, saying "I'd rather let them emerge organically," because "measuring against a structure is the strongest available way to reify it" (`ops/manuscript readiness.md`).

**Why the design cannot record it.** None of the design's nine commitments limits order. "The structure exists for the sake of encounters" comes closest, but says nothing about sequence.

**What it does for the books.** It serves function 6 (the author's comparison shown honestly), function 8 (the promise to the reader), and the order of each book.

**How the design would be extended.** Add a tenth commitment: **disclosure follows the order in which the author came to know things.** It protects functions 6 and 8. The question to ask of a draft: "Does this passage state, before its position, something the author learned after it?"

**One real example.** The brief for the first letter applies exactly this commitment as its first constraint: "The first letter carries only early knowings… absent because the writer of this letter has not met them yet, and the dating makes that honest."

### 2.8 Material that serves the vault's own work, not the books

By the design's rule that every part must serve the books, the following serve the work of drafting rather than any function of the books. They should not be part of the design; the vault already files them under `ops/`:
- the scaffold file's checksums and caching, and the records of evidence in `skeletal-structures-venn-2026-08-21.md`;
- the ten plans for surveys in `ops/ecologies/`;
- `ops/manuscript readiness.md`;
- the half of the figure glossary that matches corpus images to the vault's own operations (orbit, harvest, "walked. still true.").

What those files *found* is book content, and it is added to the notes through the vault's usual steps. The conditions for readiness are the one exception worth adopting, as a test attached to a drafted passage.

### Corrections to the design

**C1. The vault did record writing techniques, and the author removed them.** The design says: "This is the largest omission the seven outlines share: each one described the inquiry, and none described how a page works on a reader." The vault did record it. The `craft` category was added on 2026-08-01 by the author's directive ("record the mechanism, never the verdict"). On 2026-08-08 it had 18 notes, among them "the voice names the move it has just made," "the peak uncouples the syntax and the descent re-couples it," and "the executed draft scripts the reader's recognition in the reader's own first person." The author then retired them: "Cut the craft-about-drafts notes too," on the reasoning that a research collection studies the ideas rather than the manuscript's sentence technique (2026-08-09, found with `scripts/queries/decided.sh craft`). So the design's kind of material for writing techniques needs either the author's reversal of that decision or a scope his decision did not consider. The two-book decision (2026-08-16) came after the removal, and the design's reason for the kind, that in Book I a writing technique "is also content," is new since then.

**C2. Book II's order is the arc of the psychedelic experience, not only the four movements.** The version of the design the reader read gave both books "Recognition → Relation → Participation → Stewardship." The vault keeps that sequence as the developmental sequence of both books, but the author assigned each book its dramaturgy separately (2026-08-16). The design's record for a book needs a separate field for dramaturgy. (The design now records the decision; see its list of corrections at the top.)

**C3. "Book II names its method last" is one of two conflicting placements in the vault, and neither is decided.** `reframe-derivations-2026-08-20.md`, item M12, agrees with the design: "the definition is deferred until the reader has lived it." The drafts of Book II's dramaturgy name the system in their second part, "The Architecture Revealed," so that "naming lands as recognition rather than instruction" (`notes/book-structure.md`). How much of that part remains after the author demoted the system from architecture to instrument is place J5 in the scaffold file, and it is the author's to decide.

**C4. The image is not new to the vault.** The vault has 16 image notes. Of the design's 14 images from the transcript, four are image notes (catch, score, patriotism for oneself, and hollow interaction). "Conspire" (0 notes), the amino acid and the protein (0), "musical notation" (0), "a constellation rather than a pyramid" (0 in the notes), and the fable of the lover (0) are absent. The corpus's 11 images are absent from the design.

**C5. Requiring a drafted passage to be in the author's voice leaves the kind empty.** No draft of the manuscript in the vault was written by the author (section 2.2). The kind must record who wrote each draft and accept drafts at the level "proposed," or it will have nothing in it.

**C6. The commitment to keep the two poles unranked conflicts with a dramaturgy that begins at one pole and ends at the other.** `notes/the arc is the instrument…` says the book "front-loads one pole and spends toward the other." The arc survey records the opposite view: "Inhabit against spend… The same knot, both prescribed, never in one sentence" (tension 6). The design's own Book I ends with the facilitator withdrawing, which is one pole. The design needs an open question here. Its question "Does this rank one pole above the other?" should say whether a dramaturgy may settle a polarity about authority over the course of a book.

**C7. The condition about the false peak is already the author's decision in the vault.** The design treats the false peak as a worry raised once and never taken up again (Part 4), and it derives a condition from it. The vault's row of 2026-08-20 in the table of settled questions records the author's choice, "peak resolves into return," with the explanation "the peak is an interior station, not the destination, which also answers the author's own false-peak hazard." So the condition is at the level of the author's decision, not at "proposed." (The design now cites the decision in open choice 19.)

**C8. The design's "one shape at four scales" is what the vault warns against.** The earlier version of the design lined up four sequences as one shape: the model's reading of the Sanskrit terms, the five questions, the design's kinds of material, and what a page does to its reader. The vault's active directive reads the same four as four different kinds at four different levels: "they share vocabulary only because the model re-derived each from the others," and "shared vocabulary across them is evidence of common parentage, not of common structure" (`ops/methodology/the four kinds of structure.md`). (The design has since removed that table; see its Part 7, "Removed: a table that matched four sequences step by step.")

## 3. What the vault does not yet have

**3.1 Examples of writing techniques.**
- *What exists:* 0 notes in the category; 18 retired notes, recoverable only from the repository's history (commit 1efe050); and 29 notes like craft notes, scattered across six categories.
- *How the absence was checked:* `rg -l '^category: craft' notes/` gives 0. For each of the 18 titles, `test -f` reports the file absent. No note records the places where the abridged edition writes the reader's recognition for them: a search for "that is what I have been doing" or "scripts the reader" in `notes/`, `ops/`, and `drafts/` finds nothing.
- *After the craft notes were retired, the vault named two things as missing that the retired notes had recorded:*
  - The arc survey's entry for something missing, "**Descent craft.**… almost no craft claim says how a page performs a descent" (`ops/arc ecology.md`, section 6). The retired note had said: "The descent's opening re-couples in four short declaratives: 'The peak passes. The loops re-couple. Time returns to its ordinary motion. The body becomes, again, this body'".
  - The chapter comparison table's "added at" row cites `notes/the closing prompt changes genre where the book turns to praxis.md`, a retired note. So does the row in the table of settled questions on grammatical person, which cites `notes/the drafts disagree about which person the book speaks in.md`. Both are file paths in backticks rather than wiki links, so `link-check.sh` (0 faults) cannot see them.
- *Who can supply it:* only the author can, by reversing or narrowing his decision of 2026-08-09. After that, a drafting session can work from `abridged` under the vault's rule for evidence about writing technique.

**3.2 Drafted passages written by the author, and passages for Book I.**
- *What exists:* neither exists. Book I is described as having "a spine and no body" (`the-argument-and-the-read-2026-08-21.md`). The scaffold file says: "This is a finding, not a gap: it tells the drafter that Book I cannot be assembled from the existing arc material and must be composed."
- *How the absence was checked:* `drafts/` has 8 files, and none is a passage for Book I. `placements.sh` reports no placements.
- *Who can supply it:* only the author can, by writing.

**3.3 The fields of the record for Book I.**
- *What exists:* the design's promise for Book I ("I will not give you a bag of techniques…"), its ten steps ("I want to help"…), and "show the score to the musicians" appear nowhere in `notes/`, `ops/`, or `drafts/`. They appear only in the transcript and the design (the reader searched for the three phrases with `rg -l -i`). Book I's form and grammatical person are undecided (the decision sitting's item 15, which records no preferred answer: "Lean: none").
- *Who can supply it:* the author, when that question is put to him, working from the transcript, where the lines exist (17060, 16818–16854, and 1516).

**3.4 Book II's return, which is the design's row for Integration.**
- *What exists:* little exists. No note is titled for stewardship of the self or for the practitioner's return (`ls notes | grep -i return` lists 8 titles, none of them this). "Afterglow" appears in 8 notes, while the scaffold file still says "6." The scaffold file's checksums are all current, yet its count is out of date.
- *Who can supply it:* the author's own words on the return can supply it, and so can a reading of al-Junayd in the primary text (reading 15 in the arc survey).

**3.5 What marks the end of a phase, and what causes a reader to go on from one phase to the next.**
- *What exists:* none exists. "The vault owns one, for the word" (`ops/arc ecology.md`, section 6). What the book offers on the reader's side is "a non-criterion, 'If you finish quickly, you have not finished.'" And "nothing states what moves a person between phases."
- *Who can supply it:* primary readings from the arc survey's list (Ignatius §336, Gendlin, Kolb, and van Gennep) can supply it, and then the author.

**3.6 Missing images, and the field for an image's risk.**
- *What exists:* the survey plan for images names three missing images: "no figure for the finite — nothing in the image system touches ending, loss, or death"; no image for the second person ("the two-chair room is named and empty"); and none for a false version of an experience except the racket. No image note states, as such, what the image may suggest that nobody intended.
- *Who can supply it:* the poems ("the poems touch loss constantly," `ops/arc ecology.md`), the author, and the planned survey of images, not yet done, can supply it.

**3.7 Comparisons and the author's views on the questions about the book's shape.**
- *What exists:* the drafting documents leave both blank on purpose.
- *Questions awaiting the author:* the arc as a kindness to the reader (item 3), the peak (item 4), integration against sending (item 5), and house or field (item 14).
- *Who can supply it:* only the author can.

**3.8 What a drafted passage puts into words.**
- *What exists:* no row of the chapter comparison table records the topics, pairs, or practices its unit puts into words. Only the synthesis in `skeletal-structures-venn-2026-08-21.md` does.
- *Who can supply it:* a session can propose these as a synthesis, taken from `abridged`. Setting them is the author's act.

**3.9 The chapter patrons as traditions or thinkers.**
- *What exists:* 11 of the 16 patrons have no thinker page (checked by file name): Heraclitus, Meadows, McGilchrist, Whyte, Kimmerer, Rumi, Eliot, Tippett, Rohr, brown, and hooks.
- *Who can supply it:* primary readings; the reading queue already has hooks, and a case for Meadows.

**3.10 Scale and quadrant.**
- *What exists:* neither is recorded as a field on any note (see the list of field names above).
- *Who can supply it:* a session proposing values, which the author confirms.

**3.11 Sources the region depends on that the vault does not have.**
- The seventeen trial chapters ("still not in `sources/`," `notes/book-structure.md`).
- The "working notes" that `walked` and `first-telling` cite for "the reader who finishes is not the reader who began."
- The text of the letter that was sent, and any reply.

*Who can supply it:* only the author can.

## 4. The three findings that matter most

**1. The vault had already recorded writing techniques, which the design calls its largest omission, and the author removed them. The removal left two things missing that the vault later noticed, and a conflict that nobody checked.** From 2026-08-01 to 2026-08-09 the vault had a craft category, governed by an active rule ("Record the mechanism, never the verdict"). On 2026-08-08 it had 18 notes of exactly the design's kind of writing technique, each pointing to a mark in the written prose that could be checked. The author retired them on 2026-08-09 ("Cut the craft-about-drafts notes too"). The vault's list of categories, the template, and `CLAUDE.md` still list `craft`, and 0 notes use it. The removal has two visible consequences:
- The arc survey of 2026-09-02 named "descent craft" as missing, although a retired note had recorded it.
- A rule worked out on 2026-08-20 was never checked against the abridged edition. The rule says "the reader's interior is reached in the interrogative or the optative, never diagnosed" (`notes/the book may interpret only the author…`): the book may ask about the reader's inner life, or wish something for it, but never state what it is. The retired note recorded that the abridged edition writes the reader's recognition for them ("Oh — that is what I have been doing," `abridged` ch4), which the design's question "Does this passage tell the reader what they recognized?" would also catch.

Restoring the kind of material is the author's decision. The design's argument that writing technique is part of Book I's content comes after both his removal of the category and the two-book decision.

**2. The design cannot record the structure the author decided for Book II, and the vault already has the model of sequence the design lacks.** The author assigned the arc of the psychedelic experience to Book II on 2026-08-16. The transcript never says "psychedelic" or "house," and the version of the design the reader read gave Book II only the four movements. The vault has six things the design lacks:
- a way of sorting structures into four kinds;
- a sorting of about sixty sequences by what causes the reader to go on from one step to the next and what marks the end;
- the chapter comparison table, with its versions;
- the order of disclosure, a commitment about sequence in the author's own words;
- the finding that "the descriptive documents assert the arc as phenomenology, and the drafts execute it as a container": the descriptions present the arc as what happens to a reader, and the drafts use it as a structure that supports the reader through the experience;
- the author's choice "peak resolves into return," which already answers the design's condition about the false peak.

The design needs a kind of material for sequences (or a field for dramaturgy in its record for a book), a tenth commitment on the order of disclosure, and an open question on keeping a tension unresolved against resolving it over the course of the book.

**3. The drafts of the manuscript take the form of drafted passages, but the author wrote none of them, and the vault's records of passages are more detailed than the design's.** Every draft the vault has was written by the AI collaborator or by a session ("the seven documents are overwhelmingly Assistant-drafted"). The one passage the author acted on was the pilot letter, which he sent; its text is not in the vault, and no reply is recorded. The chapter comparison table already records what the design would record for drafted passages, and more: it records versions, who wrote each, patrons, tone, and six named relations between versions. The four drafting documents prepare the design's rows of the topic table for the author, and leave the comparison and the author's view blank for him. Book I has no passage at all. Unless the design's drafted passage gains versions, a field for who wrote each version, and the levels "sent" and "answered," it will describe a kind with nothing in it, while the drafts the vault actually has go unrecorded.
