# Region report: The books' shape and the manuscript layer (O4)

## 0. What I read

**The design and the law.** In `reframe-map-and-system-2026-09-25.md` I read Parts V, VI, VII and X in full (lines 220–491 and 835–1133), and I read Parts I–IV, VIII, IX and XI through once (lines 1–220, 491–835, 1133–1143). `CLAUDE.md` was in my session context in full.

**Region files read in full:**
- `notes/book-structure.md` (251 lines), `notes/figure glossary.md`, and the spine map `notes/the learning arc.md`.
- All 16 `category: image` notes.
- 17 of the 51 `category: structure` notes: Book I is grounded…; both books move…; the two books mirror…; the whole arc has already been drafted once…; the drafts execute one of the seven…; the executed draft carries the arc's sequence…; the per-chapter dial…; the unfolding of the center…; the abridged edition compresses…; the earlier contents distribute…; the mythic operating system contents hold four territories…; the earliest chapter was written in a voice…; the author curated and vetoed…; the correspondence vision…; the book's only honest promise…; the book may interpret only the author…; the arc is the instrument…. I characterized the other 34 through the shared notes index (title, maps, state, provenance, description) and a frontmatter listing I ran. The claim `notes/the peak is the one unit the performing law can honor only by withdrawing.md` I also read in full.
- `ops/scaffold.md` (332 lines), `ops/chapter concordance.md`, `ops/manuscript readiness.md`, `ops/arc ecology.md`, `ops/the arc as kindness.md`, and all 10 files in `ops/ecologies/`.
- `the-arc.md`, `the-two-books.md`, `skeletal-structures-venn-2026-08-21.md`, `the-argument-and-the-read-2026-08-21.md`.
- All 8 files in `drafts/`.

**Outside the region, read only to judge fit:**
- `ops/methodology/craft evidence.md`, `ops/methodology/the four kinds of structure.md` and `ops/methodology/the two-book architecture.md`, all in full.
- `ops/methodology/the book's current shape.md`, lines 1–40.
- `ops/correspondence program.md`, lines 5–60.
- `reframe-derivations-2026-08-20.md`, lines 86–132: the movement-by-movement lists for Book I and Book II.
- `ops/decision sitting — 2026-09-03.md`: the item headings, with items 15, 17 and 20 in full.
- `ops/decisions.md`, through `scripts/queries/decided.sh` for the topics "craft" and "person", plus line 123.
- Transcript lines 286, 1181–1192 and 7565–7568.
- Read-only git: `git grep -l '^category: craft' 1efe050 -- notes/` (the tree of 2026-08-08), and `git show` of three of the notes it lists.

**Commands behind the counts:**
- Category counts: `rg -l '^category: structure' notes/ | wc -l` gives 51; the same command gives 16 for image, 0 for craft and 9 for practice. `rg -o '^category:\s*\S+'` piped to `uniq -c` gives every category's count.
- State counts come from a per-file loop over `state:`. Provenance classes come from `notes-index.json` through Python, except for the image notes (explained below).
- `bash scripts/queries/scaffold-check.sh` reports 16 fresh sections and 0 expired. `lens-check.sh` reports the-arc 8/8 fresh and the-two-books 6/6 fresh.
- `placements.sh` reports none; `link-check.sh --count` reports 0.
- `rg -l -i 'afterglow' notes/ | wc -l` gives 8.
- `grep -c -i -w` over the transcript: "psychedelic" 0, "house" 0, "peak" 1.
- The concordance's relation names were counted with `grep -o | uniq -c`.

**Two cautions for the merger:**
- **The shared index misreads ten image notes.** `notes-index.md` shows "maps: -" and "prov: none" for circle, cusp, fruit, gatekeeper, gold thread, house, ink, messenger, orchard and racket. All ten do declare topics and sources; they write the lists with single quotes, which the index generator read as empty (`rg "^(sources|topics): \['"` matches both lines in each of the ten). I took image-note provenance from the files.
- **The extracted corpus is absent.** `.corpus/` does not exist in this container, and I did not run bootstrap. Every corpus fact below therefore comes from the vault's own page-anchored quotations.

## 1. Collation

### 1a. Types

| Type | What in this region serves it | Where (paths, counts) | Fit | Notes |
|---|---|---|---|---|
| Concern | **Concern records.** None are kept in this region. **Where concerns enter.** They come in through three places. (1) Four "surfaces to write from": drafts that arrange one doctrine concern for the author, each with a stake, company, drawing-out questions and blind spots. (2) The mirror table of ten concerns in Book I and Book II forms. (3) The eight-reading overlay's join of named units to concerns. | **Surfaces:** `drafts/recognition —`, `the call and the answering —`, `felt-shift —` and `contraction-not-corruption — a surface to write from.md` (4). **Mirror:** `the-two-books.md`, `notes/the two books mirror each other on every shared concern.md` (10 rows). **Join:** `skeletal-structures-venn-2026-08-21.md` §#8. | Partial, with a translation | **Different concern sets.** The surfaces are keyed to the vault's six doctrine maps. Only "recognition" shares a name with the design's fifteen concerns. **The mirror covers ten.** Its ten rows match the design's ten mirror concerns and omit Recognition, Sufficiency, Form, Company and Power. **Stake and exit are native.** Each surface's "The still center this drains to" is the design's stake field, and "What this surface cannot see" is its exit field. |
| Pair | **What exists.** Pairs about the book's own form: event against theme (the peak), house against field (the spatial figure), completion against participation (Iser), performing against withdrawing (the peak), and inhabiting a tension against spending it. One claim ties sequence to polarity. | **Notes:** `notes/the earlier contents distribute transcendence where the arc concentrates a peak.md`, `notes/iser distinguishes completion from participation as two fates of the textual gap.md`, `notes/the arc is the instrument that holds both poles of a tension a page cannot hold at once.md` (nascent). **Tensions:** `ops/arc ecology.md` §7 (20). | Partial | These pairs concern the book's architecture rather than the reader-facing distinctions of the design's Part IX. The reader-facing pairs belong to other regions. |
| Practice | **What exists.** The concordance's three practice units (the Stance, the Kata, the Engineer's Eye). The first letter's two instructions: the pause, and finishing one sentence in one's own words. The walked document's two calibration questions. Two practice notes lifted from the old craft category. | **Concordance:** `ops/chapter concordance.md` (3 units). **Letter:** `drafts/draft — the first letter.md`. **Practice notes:** `notes/the book asks only for attention until it has given the reader something to act with.md`; `notes/the practice forms specify when to begin and not how to tell one is finished.md`. | Partial | The practices themselves belong to region F1. This region adds where a practice sits in a sequence and how it opens or closes a unit. |
| Figure | **Image notes.** 16 notes carry `category: image`: 11 figures from the corpus's image system, 4 figures from the reframe conversation, and the crosswalk (the figure glossary). **Beside them.** The Engine figure is filed as a claim. The figures ecology recipe is unrun. | **Corpus figures (11):** house, orchard, gold thread, ink, fruit, gatekeeper, tuning fork, circle, messenger, racket, cusp. **Reframe figures (4, all nascent):** catch, score, patriotism for oneself, hollow interaction. **Other:** `notes/figure glossary.md`; `ops/ecologies/the figures.md`. | Native, with a translation | **The vault holds more per figure.** Its unit is a triple equation, "image, concept, hidden grandfather" (`ops/scaffold.md` §12): image ↔ concern ↔ Kashmir Śaiva term. **The design's "what it lets the reader hold".** This is the concern the figure "carries"; 9 of the 16 descriptions use that verb. **Origin.** Recorded in layers: the author's April 2025 seed, the compiled month of July 2026, the treatment's second edition, and the reframe conversation (author or model). **Risk.** The design's "what it over-determines" is rarely recorded. |
| Encounter | **What exists.** Structure notes on the making: dated events from the author's life and production, mostly written from the provenance reconstructions and quoting the author where he spoke. Also the one sighting of the promised event (the 4am letter), and the author's statements about the book's shape. | 16 structure notes, all `state: full`, e.g. `notes/the gatekeeper has a lived referent in the author's own protective structure.md`, `notes/the seed arrived in a season of burnout and container-building on every front.md`, `notes/the central correspondence was lived nine years before it was assembled.md` | With a translation | **The note field is not the author's.** The design's note field ("This is what I currently notice…") is the author's; here it is the session's reading of consulted reconstructions. **Personal material.** It is held under `ops/methodology/personal provenance.md`. |
| Locus | **What exists.** Chapter patrons: the thinker whose epigraph opens each named unit. The precedent bench: five people held for what became of the book-like object each made. The treatment's "Guild" of five rooms of thinker material, which the executed draft dropped. Five notes on how the company is organized. | **Patrons:** 17 assignments, of which 5 have notes (Rilke, Alexander, Buber, Gendlin, McLaren; checked by filename). **Bench:** 5, in `notes/book-structure.md`. **Organization notes:** 5 structure notes. | Partial | **Region O3 holds the Loci.** This region adds a relation the design lacks, from a Locus to a Passage (patronage by epigraph), and a Locus whose relevance is an outcome (`load: precedent`). |
| Crossing | **What exists.** Each of the four surfaces stages "the crossing that is yours" and leaves it empty on purpose. No crossing in the author's own judgment is recorded here. | `drafts/*— a surface to write from.md` (4) | Native slot, unfilled by design | The recognition surface ends on a sentence left for the author: "Across all of them, what survives their refusals is ⁠ ⁠ ⁠ ⁠ ⁠ ." |
| Durable perspective | **What exists.** The surfaces withhold it ("the durable perspective is not for this surface to state"). The author's statements about the books' form do exist, in decisions and directives. | **Author statements:** "this can be book 1 and book 2" (`ops/methodology/the two-book architecture.md`); "I'd rather let them emerge organically" (`ops/manuscript readiness.md`); "I'm demoting them from architecture to instrument" and "I can't reveal something early that I didn't know until much later without breaking the thing that makes it work" (`ops/methodology/the book's current shape.md`) | Partial | These are statements about the books' shape, which the design would file as Book-level decisions rather than as a perspective on a concern. |
| Craft move | **The category is empty.** The schema's `craft` category holds 0 notes. On 2026-08-08 it held 18, retired by author decision on 2026-08-09. **Where the material now sits.** (1) At least 29 notes in other categories that state a page-level mechanism. (2) The seven designed apparatus devices, of which one was executed. (3) The concordance's "Treatment's register" column. (4) The unrun devices recipe. (5) The holding devices found by `ops/the arc as kindness.md`. | **Counts.** `rg -l '^category: craft' notes/` gives 0; `git grep` at commit 1efe050 gives 18. **The 29 other notes (my enumerated list):** 16 claim, 8 structure, 2 practice, 1 image, 1 isomorph, 1 tension. **Other places:** `ops/chapter concordance.md` (15 register cells); `ops/ecologies/the devices.md`. | Partial: native from 2026-08-01 to 08-09, then cut by the author | See §2.3 and finding 1. |
| Passage | **The concordance.** The table comparing states of one named unit across drafts. **The three corpus drafts.** Written by the collaborator under the author's curation. **The drafts/ layer.** Two briefs and two drafts, written by sessions. **The sent pilot letter.** Its text is not held. | **Concordance:** `ops/chapter concordance.md` (15 units, 11 revision-relation entries). **Drafts:** `drafts/brief —` and `drafts/draft —` (2 pairs). **Letter:** `notes/the correspondence vision was chosen and executed as a sent pilot letter.md` | With a translation | **What the vault holds.** Material shaped like Passages, standing at the lowest level, surfaced. Nothing is in the author's hand. The vault's states and revision relations go beyond the design (§2.2). |
| Book | **What exists.** The installed two-book architecture: locus of practice, order, dramaturgy, basis of authority, mirror, and the civilizational horizon. | **Files:** `the-two-books.md`; `notes/the learning arc.md`; `ops/methodology/the two-book architecture.md`; scaffold §5, §8 and joints J1–J2; `reframe-derivations-2026-08-20.md` §3–4. **Notes:** about 12 structure notes. | Native for locus, first reader, authority and ending move. Partial for contract, movement and method shown | **What the vault adds.** It separates the developmental sequence from the dramaturgy, and it records form or genre, grammatical person, the spatial figure, and each book's drafted state (banked or unwritten). See §2.1 and Corrections. |

### 1b. Shared fields and registers

**Standing.** The design's ladder (surfaced, encountered, inferred, believed, claimed, written) records how far the author has taken a piece. Nothing in this region records that quantity as a field. Several neighboring instruments do related work:

- **`state:` measures development, not the author's hold.** Its values are nascent, privated (complete except in one named way), full, flourishing and composting. Across all notes: 157 nascent, 131 full, 54 privated, 1 composting. In the region's structure notes: 23 full, 14 nascent, 2 privated, 12 with no state. In the image notes: 1 full, 4 nascent, 11 with none. The pattern is sharp. All 16 notes on the making are `full`, while 13 of the 16 structure notes that cite the reframe conversation cite nothing else, and all but one of those 13 are `nascent`.
- **Source standing records the hand and the relation to the manuscript.** Its values are descriptive, draft and primary (`ops/methodology/source standing.md`). A draft is "quoted for what it says, never credited for what it argues." This field is the vault's way of saying that the corpus drafts are not the author's claims. The design has no counterpart.
- **Grading records how firmly a source was read.** The arc survey grades each instance primary-read, corpus-relay, derived, or primary (the author's own words). The scaffold's evidence ledger (§16) sorts every anchor into attested at primary text, grid- or corpus-derived, and synthesis.
- **Standing lines use the ladder's words only in part.** 102 notes carry a "Standing:" line. The word "inferred" appears there 9 times. "Encountered", "believed" and "claimed" never do. Model turns are marked "model-elaborated" in 18 notes.
- **The author's own three tiers are the nearest match.** `ops/methodology/the book's current shape.md` sorts statements about the book's shape by his confidence: tier one settled, tier two in motion, tier three undecided. This is the closest thing in the vault to the ladder's believed and claimed rungs.

**Scale.** No frontmatter field records scale. (The frontmatter keys across all notes are topics, description, sources, category, state, works, seat, load, recommendation, privation, clause, discipline, type, treatment, status.) Scale appears only at the level of the books: "the two books explicitly occupy micro ↔ meso while the macro remains the horizon" (`ops/methodology/the two-book architecture.md`).

**Lens (the quadrants).** No field records it. The design's own phrase is held as a claim: `notes/wilber's four quadrants are a coordinate system, not an architecture.md`, gathered in the book-structure map. Nine notes mention quadrants.

**Provenance.** This field is native, and strong. `sources:` is present in 502 of 516 notes; the 14 without it are the maps. The concordance and the scaffold anchor corpus facts to the page and line ("`abridged` p. 47", "`walked` X, p. 22, ll. 807–08"). Two small defects:
- **A two-line offset.** Two notes cite the author's false-peak sentence at transcript line 284 (`notes/the book is one of the automatisms it must interrupt.md`, `notes/the pulse has a counterfeit at each phase, a false peak of expansion and a racket of forgotten contraction.md`). The transcript has it at line 286, as the design does.
- **Missing line addresses.** Some reframe-only structure notes cite a section label rather than a line. For example, `notes/both books move through recognition → relation → participation → stewardship.md` cites "(the four great movements under both books)", where the design gives 16970/16974.

**Commitments.** In this region the vault states rules a drafting session must keep, several with tests:

- **The six readiness conditions and a seventh.** `ops/manuscript readiness.md` lists six conditions, each "stated so that it could be checked rather than felt": propositions sourced, load-bearing names read, refusals recorded, tensions visible, adversary seated, constraints stated. The seventh belongs to the author: "He can say what the piece is for in one sentence, in his own words, about something he walked." It is the design's "The author is the first participant", turned into a readiness test for one piece of writing.
- **The hard limits of the first-letter brief.** `drafts/brief — the first letter.md` lists five: the disclosure order, no efficacy, the grammatical person, images held as candidates, and the fluent reader.
- **Four safeguards on any imported arc.** `ops/arc ecology.md` §10 sets them: "An arc is a dramaturgy, never an ontology"; sequence claims are "orderings of named units"; the primary layer grounds no doctrine; the sort is a gathering.
- **Withdrawal at the peak.** `notes/the peak is the one unit the performing law can honor only by withdrawing.md` makes it "not one option among several but the only performance the law permits there."
- **The promise.** `notes/the book's only honest promise is conditional testimony.md` limits the book's promise to conditional testimony.

Three of these have no counterpart among the design's nine commitments: the disclosure order, the no-efficacy or conditional-testimony rule, and the peak's withdrawal (§2.7).

**Remainder.** It is richly held here, and all of it stays the author's lane:
- the scaffold's seven joints (J1–J7);
- the Arc family's two joints and the Two Books family's five;
- the arc survey's twenty tensions and seven soundings (a sounding is the vault's word for a question only the author can answer);
- the concordance's "What remains" (4 items);
- the decision sitting's items 3, 4, 5, 14, 15, 16, 17 and 20, which are the arc as kindness, his record and the staged peak, the last phase, house or field, Book I's person and form, how far the demotion cuts, a unit for readiness, and the pilot letter's answer.

### 1c. Relations

- **"A Figure carries a Pair or a Concern."** Native, in the design's own verb. Nine image-note descriptions say the figure "carries" its concern (e.g., "The gatekeeper carries the protective part as sankoca honored as service"). The linking gloss states the relation in words, as the design asks.
- **A Figure "comes from Encounters."** Native. The making notes state the lived origin of three figures: `notes/the gatekeeper has a lived referent in the author's own protective structure.md`, `notes/the gold thread is the rainbow thread re-owned.md`, and `notes/patriotism for oneself is the felt form of the auxiliary relation to a sovereign reader.md`.
- **"A Book projects a Concern."** Present as the mirror table (10 rows). The Two Books family and the learning arc also allocate evidence by book: "The convergence of thinkers → serves Book I… The lived practice / the felt shift → serves Book II" (`notes/the learning arc.md`).
- **"A Passage realizes Concerns…"** Present only as synthesis. The eight-reading overlay's reading 8 joins units to concerns: "Third Entity→relational-field, House/Triad→container-anatomy, Open Secret→answerability, Psychedelic Moment→recognition, Stance/Kata→felt-shift" (`skeletal-structures-venn-2026-08-21.md`). The concordance itself records no concern per unit.
- **"A Craft move carries content onto the page."** Present in prose: the treatment's register cells, and claims such as "the book may interpret only the author…". Since 2026-08-09 the vault has had no record type for it.
- **"A Commitment protects a function."** Present as rules without function tags (see Commitments above).
- **Relations the vault has and the design lacks:**
  - *States of one element.* Revision relations between states of a named unit: in the concordance, "compressed into" 1, "revised into" 2, "dropped at" 2, "added at" 1, "carried unchanged into" 1, and "differ(s) between" 4 (a sixth relation the CLAUDE.md list of five does not name).
  - *Sequence.* "Carries into", a directed station-to-station edge in the learning arc ("an edge here carries direction").
  - *Patronage.* A patron's epigraph opens a named unit, and 17 such assignments were carried unchanged from the treatment to the executed draft.
  - *Plant and payoff.* An element planted early is completed late, as in "the half-erased word beside the unlabeled room; the sentence eleven chapters finish at the mirror" (atlas §IX.6c, quoted in `notes/the unfolding of the center is planted half-erased and finished at a mirror.md`).
  - *False friends.* A shared word is not agreement (scaffold §15).
  - *Coincidence across readings.* Where several readings place the same material at the same position, the overlay counts it as agreement.

### 1d. The vault's own structures that already do the design's work

1. **`ops/chapter concordance.md` against the design's Passage.** The concordance holds, per named unit:
   - its patron;
   - its executed extent in words;
   - its register, as the treatment specifies it;
   - its locator in each of four documents;
   - its revision relations between states;
   - which document is "the reference text" for each element.

   *What the concordance has and the design lacks:* several states of one element, the relations between those states, the hand behind each state (implicitly, through source standing), and the principle that positions are "data about the documents, not a claim that any ordering is settled."
   *What the design has and the concordance lacks:* which Concerns, Pairs, Practices and Encounters a unit realizes; its Book; and the Craft moves it uses (only the register column hints at them).

2. **The four surfaces in `drafts/` against the profile-grid row.** Each surface drains a concern to its stake, lists its company with each thinker's refusal, poses questions for the author's crossing, withholds the durable perspective, and names its exit.
   *What the surfaces have:* the actual company with refusals, and questions addressed to the author about Book I ("Where is the line, for Book I, between a fold a facilitator may help a person learn to open, and a wound…").
   *What the grid has:* explicit Pair, Practice, Encounter and Book II cells, and a present or absent mark on each.
   *One mismatch:* the surfaces are called "the Book I concern surfaces" (`ops/standing-consequences.md` line 48), while `notes/the learning arc.md` assigns the felt shift to Book II ("The lived practice / the felt shift → serves Book II"). The felt-shift surface nevertheless asks "Where in Book I is the reader handed a check…". The grid's two Book columns would expose this mismatch.

3. **`ops/scaffold.md`, the Venn ledger and `the-argument-and-the-read-2026-08-21.md` against the legible profile.** Each is a readout of what is settled, what is thin and what is the author's.
   *What the vault's readout has:* evidence grades, the joints, false friends, and freshness checksums (all 16 sections fresh today).
   *What the design's grid has:* one row per concern, whereas the scaffold's rows are readings and positions. The two meet on one finding reached independently. The design's grid says "Integration has the thinnest row" (Part IX), and the scaffold's joint J2 says "Book II's return is the thinnest position in the whole graph."

4. **`the-two-books.md` and `ops/methodology/the two-book architecture.md` against the Book type.** The fit is close on locus, the audience cut kept separate ("never fused"), authority, the mirror, the hinge ("the facilitator disappears"), and the civilizational horizon. The vault adds the dramaturgy allocation, the form and person questions, and each book's drafted state (§2.1).

5. **The image category, the figure glossary and `ops/ecologies/the figures.md` against Figure.** The recipe's axis is "whether a place to walk, a character to meet, an object to hold, or a movement to make", plus "which carry a mechanism and which a mood". That is a sharper version of the design's "what it over-determines". Most of the glossary is vault apparatus rather than book content: "an orbit | membership in a topic map (the `topics:` field)", and "harvest; which fruit falls | the /reduce phase". Only its second table and its image-system paragraph serve the books.

6. **`ops/methodology/craft evidence.md` and `ops/ecologies/the devices.md` against Craft move.** The directive is still marked active: "Record the mechanism, never the verdict", and "a craft note that cannot state how its claim would be checked is not yet a craft note." The recipe sorts devices by what they do to the reader's position: perform on, withdraw, ask, certify.

7. **The four kinds of structure and the arc survey against the design's thin treatment of sequence.** `ops/methodology/the four kinds of structure.md` sorts every sequence as an operator (a beat inside one unit), a method (the author's research questions), a dramaturgy (a plot the reader travels) or an ontology (a containment). `ops/arc ecology.md` sorts about sixty sequences into fourteen families by what governs a transition and what marks the exit. The design has nothing in this place (§2.1, §2.7).

8. **The family files' use of the five questions.** `the-arc.md` and `the-two-books.md` each open by specializing the reframe's five questions (Locus, Encounter, Recognition, Perspective, Practice) to their subject. The design's "one shape at four scales" makes the same five questions "the way through the system, one type for each question."

**One correction the design makes to the vault, in this region.** `notes/the learning arc.md` and scaffold §4 attach the author's "that is the question of my life" to the master question: "It is the author's own life-question ("that is the question of my life," reframe conversation, on how much form holds just enough that surprise can still happen)". The transcript puts those words (line 1190) directly after the form question at line 1183, "how do we hold just enough form so that surprise can still happen?". The master question is the model's, at line 7567. The design's Part III keeps the two roles apart. The vault's parenthetical admits the difference, but its sentence still merges them.

### 1e. Profile-grid rows

Marks: **P** present, **T** thin, **A** absent (in this region unless stated). I fill seven concerns: those my region touches most (Form, Integration, Transformation, Authorship, Sufficiency, Company), plus Recognition through its surface. Region O1 holds Recognition's full row.

**Form** — the design's question: "how do we hold just enough form so that surprise can still happen?" (1183)

| Cell | Mark | Evidence |
|---|---|---|
| Question | P, merged | It is held inside the still center rather than as its own concern (`notes/the learning arc.md`). `notes/the arc is the instrument…` cites 1183–1190 as "the surprise pair, in the author's own voice". |
| Book I | P | `notes/the book asks the middle question between mechanism and content — conditions for recognition without prescribing what is recognized.md` (nascent). This is the design's Book I form at 6955. |
| Book II | A in notes | "small enough to remain alive" appears in 0 notes. It survives only in `reframe-derivations-2026-08-20.md` M9. |
| Pair | P | Structure against surprise in `notes/the arc is the instrument…` (nascent). Also event against theme, and house against field. |
| Practice | T | The calibration questions "is she ready for it here, in sequence; does it destabilize only where destabilization serves" (walked p. 24, quoted in `ops/the arc as kindness.md`). |
| Encounter | P | `notes/constraint produces fluency and deprivation reveals the essential.md` (the author's words at line 1074; nascent). `notes/the making of the book enacts the law the book states.md` (full). |
| Company | P | Alexander, Iser, Kierkegaard (`the-arc.md`); the refusers of any arc (`ops/arc ecology.md` family 13). |
| Crossing | A | Nothing recorded. The pending sounding is decision sitting item 3. |
| Durable perspective | T | His statements exist (§1a) but are not held as a perspective on this concern. |
| Exit | P | "A spiral has no peak; it has radii" (`notes/the earlier contents distribute…`). The six-phase arc "describes the experience the book stages and not the event the author reports" (`ops/arc ecology.md` §5). |

**Integration** — the design's question: carrying complexity "without premature closure" (16612)

| Cell | Mark | Evidence |
|---|---|---|
| Question | A | "premature closure" appears in 2 notes (`notes/tensions.md`, `notes/the drive to closure has measurable costs.md`), neither stating this question. |
| Book I | T | Only the mirror row, "hold complexity". |
| Book II | T | Only the mirror row, "integrate experience". The arc's integration phase is executed in `abridged`, but "no dedicated 'the practitioner returns / stewardship of the self' claim exists" (scaffold §8). |
| Pair | A | "total coherence" appears in 0 notes. |
| Practice | P, gap named | The Stance, the Kata and the Engineer's Eye (concordance). `notes/the practice forms specify when to begin and not how to tell one is finished.md` (full). |
| Encounter | T | The author's pick "peak resolves into return" (`ops/decisions.md` line 123). Poem #16's sending as the terminal act (`ops/arc ecology.md` §5). |
| Company | P | `notes/the sufi arc completes annihilation by return rather than by staying dissolved.md`; `notes/what the big experience leaves behind depends on what follows it.md` (full). |
| Crossing | A | Nothing recorded. |
| Durable perspective | T | Only the author's "peak resolves into return". |
| Exit | T | It is named only as a tension: "Three incompatible answers and no note stating them against each other" (`ops/arc ecology.md` tension 4). The empty cell "An ending that is neither a peak nor a return" is also named. |

**Transformation** — the design's question: "What is actually happening when one human being helps another become something they could not yet see themselves becoming?" (15041)

| Cell | Mark | Evidence |
|---|---|---|
| Question | T | No note asks it. `notes/transformation is enacted participation inside a held container.md` states a thesis, not the question. |
| Book I | P | "the book tends conditions for the reader's own facilitation of recognition rather than facilitating transformation", and "facilitation is stewardship of conditions" (both listed in `the-two-books.md`). |
| Book II | T | Only the mirror row, "practice becoming". |
| Pair | P | Conditions against outcomes: "I helped create a field in which something became possible," never "I caused this transformation" (`notes/the book's only honest promise is conditional testimony.md`). |
| Practice | A | None in this region. |
| Encounter | P | `notes/the central correspondence was lived nine years before it was assembled.md` (Landmark, 2017; full). |
| Company | P | Five outside witnesses to the participation law (scaffold §9). |
| Crossing | A | Nothing recorded. |
| Durable perspective | P | The author's "the book can't verify that you've done the work" (line 266), carried in the conditional-testimony note. |
| Exit | P | `ops/the arc as kindness.md`: "the reader who finishes is not the reader who began" is "a causal claim the descriptions relay from notes the corpus does not hold". |

**Authorship** — the design's question: "What has actually become mine to say?" (17018)

| Cell | Mark | Evidence |
|---|---|---|
| Question | T | "become mine to say" appears in 0 notes. The making notes answer the question by record rather than asking it. |
| Book I | P | `notes/the book may interpret only the author because interpretation is licensed where its subject can answer back.md` (nascent). This is "Don't author another" at the scale of the sentence. |
| Book II | T | Only the mirror row, "author oneself". |
| Pair | P | Exemplar against doctrine: `notes/the book is the score not the performance.md` (image, nascent). |
| Practice | T | `notes/delegating production differs from delegating exploration, so each step should require fresh meaning-making.md`, a rule for the making. |
| Encounter | P | `notes/the author curated and vetoed while the collaborator wrote the correspondences.md`; `notes/the earliest chapter was written in a voice distilled from the first fifteen poems.md` (both full). |
| Company | P | Kierkegaard, Plato's Seventh Letter, Iser (`the-arc.md`). |
| Crossing | A | Nothing recorded. |
| Durable perspective | P | "that solo Chapter 1 draft emerged from this system prompt I created which analyzed the first 15 of the poems" (author, 2026-08-03). |
| Exit | P | `notes/writing without authority renounces the teacher's office and with it the power to correct a misreading.md`. |

**Sufficiency** — the design's question: "What does attention feel like when it is no longer organized around lack?" (16196)

| Cell | Mark | Evidence |
|---|---|---|
| Question | A | Not stated as a question. |
| Book I | A | "validation through another" appears in 0 notes. |
| Book II | P | The executed draft's literal last words are "For now, what you have is enough. Step in. — end —" (abridged p. 49, quoted in scaffold §6). The design's Book II form is "This is enough for now". "enough for now" appears in 1 note: `notes/sufficiency is the capacity to remain present without needing the next input to complete oneself.md`. |
| Pair | T | The one note above. |
| Practice | A | None in this region. |
| Encounter | P | `notes/the founding inversion restates the author's own sufficiency inheritance.md` (full). |
| Company | A | None in this region. |
| Crossing | A | Nothing recorded. |
| Durable perspective | T | The author's line 446 is carried by "allowing one's own sufficiency is a recursive condition…" (`the-two-books.md`). |
| Exit | A | Nothing recorded. |

**Company** — the design's question: "What survives the difference?" (3164)

| Cell | Mark | Evidence |
|---|---|---|
| Question | P | The question appears in 1 note: `notes/the comparative method does not collapse a correspondence before its difference is understood.md`. |
| Book I | P | "The convergence of thinkers → serves Book I" (`notes/the learning arc.md`). |
| Book II | T | "traditions as practices" appears in 0 notes. |
| Pair | P | "Convergence = company, never proof" (the overlay's list of false friends). |
| Practice | A | None for the reader in this region. |
| Encounter | P | The Landmark room of 2017 (above). |
| Company | P | 17 patron assignments, 5 with notes; the 5-person precedent bench. |
| Crossing | A | The blank left on purpose in the recognition surface. |
| Durable perspective | T | Nothing firmer is recorded here. |
| Exit | P | `notes/the unanimity claim is an artifact of how the lineages were selected.md` (full). |

**Recognition, through its surface** (`drafts/recognition — a surface to write from.md`): Question P, as the "middle question" note. Book I P: `notes/recognition is cultivated rather than caused or manufactured.md`. Book II P: "you are already participating" in 3 notes. Pair P. Practice T: the three drawing-out questions are addressed to the author. Encounter P: the 4am letter. Company P: nine loci, each with where it parts from the book. Crossing A, and Durable perspective A, both left open by design. Exit P: "What this surface cannot see".

## 2. Beyond the system

### 2.1 Book II's banked body: the arc, the house, the named units, and a sequence model

**What it is.** The author decided on 2026-08-16 that the psychedelic arc is Book II's dramaturgy: "this can be book 1 and book 2" (`ops/methodology/the two-book architecture.md`). The body behind that decision includes:
- the six phases, which only the descriptive sources name;
- five named parts;
- fifteen named units in order, plus nineteen units outside the arc (eleven of them written);
- four overlays that read the arc in parallel (Courtyard, Descent of the Word, Breath, Guild);
- the three-beat rite of van Gennep under the "sixteen days";
- the nine-room house;
- the intensity profile (a local peak in the first unit, a dip at the ninth, the apex at the eleventh);
- the two orderings (the traverse against the "concentric spirals");
- the arc survey's fourteen families of sequence.

The arc ties the rest together: "Book II [R3] ≡ the psychedelic arc [R2] ≡ the walkable house [R7] ≡ the fifteen-unit draft scheme [R1]" (`ops/scaffold.md` §2).

**Why the design cannot hold it.** The transcript contains "psychedelic" 0 times, "house" 0 times and "peak" once (grep counts). The design mentions the house only at Fork 20. The Book type has a single field, "movement and developmental steps", and Book II's value there is "Recognition → Relation → Participation → Stewardship of the self". The design has no type for a sequence, no distinction between a developmental sequence and a dramaturgy, and nothing on what governs a transition, how an apex is handled, or what marks an exit. The vault itself warns: "a stack of what-contains-what mistaken for a sequence of what-happens-next" (`ops/methodology/the four kinds of structure.md`).

**The functions it serves.**
- Function 1, meeting the reader in their sufficiency ("You already know everything in this book. You've just forgotten. Reading is remembering.").
- Functions 2 to 4, through the entry movement, which induces what the architecture movement names.
- Function 7, teaching the exit ("You can put the book down now", abridged p. 47).
- Function 8, the reading contract.

All of it serves Book II.

**Proposed expansion.** Add a type, **Sequence**, or widen the Book type with a Sequence-valued field for its dramaturgy. Its fields:
- **kind:** operator, method, dramaturgy or ontology;
- **the book** it belongs to;
- **stations:** an ordered list of named units, with who names them (the descriptive layer or the drafts);
- **governor:** what moves the reader from one station to the next;
- **apex handling:** concentrated, distributed or withdrawn;
- **return:** does it complete or recur;
- **exit:** what marks the end;
- **standing.**

Add three relations: "a Sequence orders Passages"; "a Sequence spends a Pair across its stations" (from `notes/the arc is the instrument…`); and "a Passage plants / pays off another Passage".

**One real instance, written in the expanded form.**
- **Sequence:** Book II's dramaturgy.
- **Kind:** dramaturgy.
- **Book:** II (author, 2026-08-16).
- **Stations:** preparation → onset → deepening → peak → descent → integration. The list is named only at atlas §X.1 p. 22, walked p. 21 and first-telling p. 3. The drafts name parts instead: The Clearing Opens, The Architecture Revealed, The Relational Field, The Break, The Return with Gifts.
- **Governor:** the prose's pacing ("density, tempo, and sentence-length are respiratory instruments", walked X), metered by "is she ready for it here, in sequence".
- **Apex:** withdrawn. The note on the peak says so, and the author's pick is "peak resolves into return" (`ops/decisions.md` line 123).
- **Return:** unresolved. The Stance's "The returning is the practice" makes it recur; reincorporation makes it complete (arc survey tension 4).
- **Exit:** "Welcome home" in the treatment and the three descriptions, against "Step in." in the execution (concordance row of 2026-09-03).
- **Standing:** the phases are the corpus's; whether they are "a claim about what happens to a reader, or … the shape of the holding" waits on the author (decision sitting item 3).

### 2.2 States of a passage, their hands, and the relations between states

**What it is.** The concordance keys 15 units across four documents. For each it records the executed extent (about 21,000 words in total, mean 1,160 per unit), the treatment's register and the patron, and it carries 11 entries of revision relations. Behind it sit three corpus drafts. On who wrote them, the provenance record says: "the seven documents are overwhelmingly Assistant-drafted, to your specification" (`notes/the author curated and vetoed while the collaborator wrote the correspondences.md`). The abridged edition is recorded as "Claude's own compressed versions" (`notes/the whole arc has already been drafted once in prose.md`).

**Why the design cannot hold it.** The design's Passage is "drafted language in the author's voice", and Part X adds that "A Passage realizes content only through the author's own participation." Under that definition every manuscript state the vault holds is excluded, so the type would be empty. The design also has no notion of several states of one element, no record of whose hand wrote a state, and no relations among states.

**Function served.** The manuscript itself, which the design lists as Passage's function. Drafting costs "one lookup rather than a re-reading of seven documents" (the concordance's stated purpose).

**Proposed expansion.** Widen Passage to hold **states**. Each state records its document and locator, its **hand** (the author; the collaborator under the author's curation; a session), its standing, and its extent. Add a relation among states, carried over from the vault: *carried unchanged into, revised into, compressed into, dropped at, added at, differs between*, each stated with both states and the direction. Keep "written" standing for a state in the author's hand.

**One real instance.**
- **Passage:** The House with No Ceiling. **Book:** II material, banked. **Patron:** Alexander, carried unchanged from the treatment into the executed draft.
- **States:**
  - `mythic-os` page 3: written; the contents page names it "The House with No Walls". Hand: collaborator, through the author's voice prompt.
  - `arc-gloss` ch1: storyboard; register "Highest poetic density in the book". Hand: collaborator.
  - `abridged` ch1: executed, 1,658 words. Hand: collaborator.
- **Relations:** "revised into" a separate unit from a page of a single chapter (concordance). The poem "Time Is Not Linear" was "compressed into" it "from roughly a hundred verse lines to five prose lines". That poem ends "soon I'll be thirty two". `ops/arc ecology.md` §5 quotes the same line as poem #4, so this may be an author-hand state compressed into a collaborator-hand state. That identification is my inference; I could not check it against the corpus because `.corpus/` is absent.
- **Realizes:** recognition and the container's open center, through `notes/the house with no ceiling is transcendence with plumbing.md`.
- **Standing of every state:** surfaced.

### 2.3 The apparatus and the page-level devices

**What it is.**
- **The designed apparatus.** Seven devices: inhabited margins, a verso countersign column, a planting ledger, an escrow of promises, a per-chapter dial of evocative to informative prose, interludes at the junctions, and an eight-question checklist. Only the interludes were executed: "the words *margin*, *verso*, *countersign*, *ledger*, *escrow*, and *checklist* do not appear anywhere in the edition's forty-nine pages" (`notes/the drafts execute one of the seven designed apparatus devices.md`).
- **The holding devices of the executed draft.** For example: "Pause. Breathe. You have come a long way. We are about to go deeper" (abridged p. 31); "If you find yourself disoriented, you are reading correctly. Stay." (p. 32). Both are quoted in `ops/the arc as kindness.md`.
- **The 29 notes with a page-level mechanism, and the 18 retired craft notes** (finding 1).

**Why the design cannot hold it.** Craft move's fields are what it does to attention, what it leaves free, the facilitation move it scales from, where it is used, and how it goes wrong. Several things are missing:
- whether a device was *designed* or *executed*;
- a *check* in the prose that shows it is there (the vault's rule is that "a craft note that cannot state how its claim would be checked is not yet a craft note");
- a *position in a sequence* (plant, payoff, seam);
- a device's *reader position*: performs on the reader, withdraws, asks, or certifies (`ops/ecologies/the devices.md`).

**Functions served.** Functions 3, 7 and 8. For Book I, the design itself says the facilitator reader learns from the book's moves.

**Proposed expansion.** Add four fields to Craft move: *check* (a countable mark in a draft), *status* (designed, executed, retired), *position* (plant, payoff, seam, apex, close), and *reader position*. Add the relation "plants / pays off".

**One real instance.**
- **Craft move:** the planting ledger's formula.
- **What it does to attention:** it plants Kṣemarāja's madhya-vikāsāt "as a half-erased word beside an unlabeled room" and completes it "eleven chapters later at a mirror".
- **What it leaves free:** the recognition that completes it, which arrives "as something remembered rather than something taught".
- **Position:** plant early, pay off at the peak.
- **Status:** designed in the atlas; whether "any draft executes either site is not established."
- **Check:** find both sites in `abridged`.
- **Source:** `notes/the unfolding of the center is planted half-erased and finished at a mirror.md`.

### 2.4 The writing surfaces and the briefs: a preparation layer between the graph and a passage

**What it is.**
- **Four concern surfaces.** Built between 2026-08-24 and 08-28, they are the vault's "current lead" (`ops/standing-consequences.md` line 48).
- **Two briefs.** A brief is "what the vault hands its drafting, sorted by job": the finding, the constraints as hard limits, the craft trials, the material selected, and what the two real readers are asked.

**Why the design cannot hold it.** The rhythm the design describes runs from Locus to Encounter to note to Crossing to Durable perspective to Practice or Passage. It has no object that assembles the ground for one passage or one concern and then hands the author the next move. The design's grid marks presence; it does not hand anything over.

**Function served.** Indirectly, every function, through the author's own crossing and durable perspective. It serves the design's function 6 most directly.

**Proposed expansion.** Two options:
- Add a type, **Brief**: a Passage specification with its constraints, the material selected by job, its trials, and its reader test.
- Or state that the profile row can be *rendered for the author* as a surface whose Crossing and Durable-perspective cells stay open.

**One real instance.**
- **Brief for:** the first letter (Book II material; correspondence form).
- **Constraints:** the disclosure order; no efficacy; I addressing you; "no house, no rooms, no gatekeeper"; the fluent reader.
- **Trials:** plant the standard before naming it; hooks at the opening, rest at the close; the answering instruction "something I can say now, that I could not have said an hour ago, is —".
- **Reader test:** "did you answer before continuing".
- **Source:** `drafts/brief — the first letter.md`.

### 2.5 The release: sent and answered

**What it is.** The call-and-answering concern at manuscript scale:
- `notes/seventeen chapters rest at madhyama.md` (a tension note);
- `notes/the whole arc has already been drafted once in prose.md`, which says "what is missing is not writing but a reader";
- the pilot letter, sent before 2026-08-14. "the recipients and exact date are not held in the vault" (`notes/the correspondence vision…`), and "no reply is recorded anywhere in the vault (checked 2026-09-03)" (`ops/correspondence program.md`).

**Why the design cannot hold it.** The design's standing ladder stops at *written*, "it lives in a Passage". Sending is a further act the author takes. The corpus names that act as the deciding one: a word held back "can be perfected forever but can never be answered at all" (`drafts/the call and the answering — a surface to write from.md`). The design's Remainder has "the medium" and "the third book… gated" only by implication.

**Functions served.** Function 8 (offer a contract and keep it) and the Book's ending move. The book's native genre is a letter, "the one genre whose every sentence expects an answer" (CLAUDE.md).

**Proposed expansion.** Add the rungs **sent** and **answered** to the ladder for Passages, each settable only by the author. Add the relation "a Passage is answered (a reply received, dated)". The reply itself stays outside the system as the reader's authorship. Only its trace is kept.

**One real instance.**
- **Passage:** the pilot letter. **Hand:** a session's draft, which the author cut.
- **Standing:** sent (before 2026-08-14). **Text held:** no. **Answered:** unknown (decision sitting item 20).

### 2.6 The making, as the author's crossing at the scale of production

**What it is.** The 16 `full` structure notes on the making: "the figures precede the system by a year", "the triad predates the author's contact…", "the book was written across the author's move to seattle…", and the others. The synthesis the vault draws from them is that "a man noticed some things, and then found out that other people had noticed them too" (CLAUDE.md).

**Why the design cannot fully hold it.** An Encounter's "note" is the author's own note. These notes are sessions' readings of consulted reconstructions, with the author quoted where he spoke. The design's standing ladder cannot distinguish the event from the account of it.

**Functions served.** Function 6 (show the author's crossing as an exemplar) and Book II's basis of authority, "embodied realization".

**Proposed expansion.** Add a field to Encounter, **account**, with three values: in the author's words; reconstructed from consulted works; the session's inference. Standing then applies to the account separately from the event.

**One real instance.**
- **Encounter:** the gatekeeper's original.
- **When:** "the MDMA experience of his early twenties" (the note's description).
- **Account:** reconstructed (provenance, consulted), "full".
- **Touches:** the figure "the gatekeeper is met with a bow never a fight", and contraction-not-corruption.
- **Standing of the account:** below *encountered* until the author re-states it.

### 2.7 Sequence commitments the design lacks

**What it is.**
- **The disclosure order.** "I can't reveal something early that I didn't know until much later without breaking the thing that makes it work" (author, 2026-08-04, `ops/methodology/the book's current shape.md`).
- **The correspondence's order of trust.** "The chain's fourteen steps distribute as things a friend tells a friend in the order of trust rather than the order of logic" (`ops/correspondence program.md`).
- **The rule of names over numbers.** Units are named, never numbered (`ops/methodology/reference by name.md`).
- **The ban on measuring against a structure.** The author stopped a readiness rubric keyed to the fifteen units, saying "I'd rather let them emerge organically", because "measuring against a structure is the strongest available way to reify it" (`ops/manuscript readiness.md`).

**Why the design cannot hold it.** None of the design's nine commitments constrains order. "Structure serves encounter" comes closest but says nothing about sequence.

**Functions served.** Function 6 (the crossing shown honestly), function 8 (the contract), and the Book's ordering.

**Proposed expansion.** Add a tenth commitment: **Disclosure follows the author's order of knowing.** It protects functions 6 and 8. Its test: "Does this passage state, before its position, something the author learned after it?"

**One real instance.** The first-letter brief applies exactly this commitment as its constraint 1: "The first letter carries only early knowings… absent because the writer of this letter has not met them yet, and the dating makes that honest."

### 2.8 Material that belongs in the vault's apparatus, not the books' system

Under the book-need rule, the following serve the work of drafting and not a function of the books. They belong outside the books' system, as the vault itself files them under `ops/`:
- the scaffold's machinery of checksums and caching, and the Venn's receipts;
- the ten ecology recipes (plans for surveys);
- `ops/manuscript readiness.md`;
- the half of the figure glossary that maps corpus figures to vault operations (orbit, harvest, "walked. still true.").

What those instruments *found* is book content and enters through the pipeline. The readiness conditions are the one exception worth promoting, as a test attached to a Passage.

### Corrections to the design

**C1. Craft move is not an unmodeled gap in the vault. The author cut it.** The design says: "This is the largest gap the overlay reveals: every projection modeled the inquiry, and none modeled how a page works on a reader." The vault modeled it. The `craft` category was added 2026-08-01 by author directive ("record the mechanism, never the verdict"). On 2026-08-08 it held 18 notes, among them "the voice names the move it has just made", "the peak uncouples the syntax and the descent re-couples it" and "the executed draft scripts the reader's recognition in the reader's own first person". The author then retired them: "Cut the craft-about-drafts notes too" — a research corpus studies the ideas rather than the manuscript's sentence technique (2026-08-09, `scripts/queries/decided.sh craft`). The Craft move type therefore needs either the author's reversal or a scope his decision did not consider. The two-book decision (2026-08-16) came after the cut, and the design's own rationale, that in Book I craft "is also content", is new since then.

**C2. Book II's movement is the psychedelic arc, not only the four movements.** The design gives both books "Recognition → Relation → Participation → Stewardship". The vault keeps that sequence as a developmental sequence for both books, but the author assigned the dramaturgies separately (2026-08-16). The Book type needs a separate dramaturgy field.

**C3. "Book II names its method last" is one of two conflicting vault placements, and neither is decided.** `reframe-derivations-2026-08-20.md` M12 agrees with the design: "the definition is deferred until the reader has lived it". The drafts of Book II's dramaturgy name the system in their second part, "The Architecture Revealed", so that "naming lands as recognition rather than instruction" (`notes/book-structure.md`). How far that part survives the demotion is joint J5, the author's.

**C4. Figure is not new to the vault.** The vault has 16 image notes. Of the design's 14 transcript figures, four are image notes (catch, score, patriotism for oneself, hollow interaction). "Conspire" (0 notes), the amino acid and protein (0), "musical notation" (0), "a constellation rather than a pyramid" (0 in notes) and the lover fable (0) are absent. The corpus's 11 image-system figures are absent from the design.

**C5. The author's-voice condition on Passage empties the type.** No manuscript state in the vault is in the author's hand (§2.2). The type must carry a *hand* field and accept surfaced drafts, or it has no instances.

**C6. The unranked-poles commitment meets a dramaturgy that spends toward one pole.** `notes/the arc is the instrument…` says the book "front-loads one pole and spends toward the other". The arc survey records against it: "Inhabit against spend… The same knot, both prescribed, never in one sentence" (tension 6). The design's own Book I ends in the facilitator's withdrawal, which is one pole. The design needs a Remainder entry here. Its commitment "Does this rank one pole above the other?" should say whether a dramaturgy may resolve an authority polarity in time.

**C7. The false-peak condition is already an author decision in the vault.** The design treats the false peak as raised once and never returned to (Part IV) and derives a condition from it. The vault's decisions row of 2026-08-20 records the author's pick, "peak resolves into return", with the register's gloss "the peak is an interior station, not the destination, which also answers the author's own false-peak hazard". The condition therefore stands at the author's decision, not at surfaced.

**C8. "One shape at four scales" is what the vault warns against.** The design lines up the grammar, the five questions, the system and the page as one shape. The vault's active directive reads the same four as four kinds at four altitudes: "they share vocabulary only because the model re-derived each from the others", and "shared vocabulary across them is evidence of common parentage, not of common structure" (`ops/methodology/the four kinds of structure.md`).

## 3. Unpopulated places

**3.1 Craft move instances.**
- *What exists:* 0 notes in the category; 18 retired and recoverable only from git history (commit 1efe050); 29 craft-like notes scattered across six categories.
- *Evidence of absence:* `rg -l '^category: craft' notes/` gives 0. For each of the 18 titles, `test -f` reports 18 absent. No note records the executed draft's scripted recognitions: a search for "that is what I have been doing" or "scripts the reader" in `notes/`, `ops/` and `drafts/` returns nothing.
- *The retirement left named gaps.* Two gaps the vault later named sit exactly where the retired notes were:
  - The arc survey's empty cell "**Descent craft.**… almost no craft claim says how a page performs a descent" (`ops/arc ecology.md` §6). The retired note had said: "The descent's opening re-couples in four short declaratives: 'The peak passes. The loops re-couple. Time returns to its ordinary motion. The body becomes, again, this body'".
  - The concordance's "added at" row cites `notes/the closing prompt changes genre where the book turns to praxis.md`, a retired note. So does the person decision row, which cites `notes/the drafts disagree about which person the book speaks in.md`. Both are backtick paths rather than wiki links, so `link-check.sh` (0 defects) cannot see them.
- *Who can populate:* only the author, by reversing or re-scoping the decision of 2026-08-09. After that, a drafting session working from `abridged` under the craft-evidence rule.

**3.2 Passages in the author's hand, and Book I's passages.**
- *What exists:* none of either. Book I is described as having "a spine and no body" (`the-argument-and-the-read-2026-08-21.md`). The scaffold says: "This is a finding, not a gap: it tells the drafter that Book I cannot be assembled from the existing arc material and must be composed."
- *Evidence:* `drafts/` holds 8 files and none is a Book I passage. `placements.sh` reports none.
- *Who can populate:* only the author, writing.

**3.3 The Book I fields.**
- *What exists:* the design's Book I contract ("I will not give you a bag of techniques…"), the ten steps ("I want to help"…) and "show the score to the musicians" appear nowhere in `notes/`, `ops/` or `drafts/`. They appear only in the transcript and the design (my `rg -l -i` with those three phrases). Book I's form and grammatical person are open (decision sitting item 15, "Lean: none").
- *Who can populate:* the author, at his sounding, from the transcript, where the lines exist (17060, 16818–16854, 1516).

**3.4 Book II's return, which is the design's Integration row.**
- *What exists:* thin. No note is titled for stewardship of the self or for the practitioner's return (`ls notes | grep -i return` lists 8 titles, none of them this). "Afterglow" appears in 8 notes, while the scaffold's prose still says "6". The scaffold's checksums are all fresh, yet its count is out of date.
- *Who can populate:* the author's own words on the return; reading al-Junayd at primary (the arc survey's reading 15).

**3.5 Exit criteria, and what moves a reader between phases.**
- *What exists:* none. "The vault owns one, for the word" (`ops/arc ecology.md` §6). The book's reading-side offer is "a non-criterion, 'If you finish quickly, you have not finished.'" And "nothing states what moves a person between phases".
- *Who can populate:* primary readings from the arc survey's program (Ignatius §336, Gendlin, Kolb, van Gennep), then the author.

**3.6 Missing figures, and the figures' risk field.**
- *What exists:* the figures recipe names three missing figures: "no figure for the finite — nothing in the image system touches ending, loss, or death", no figure for the second person ("the two-chair room is named and empty"), and none for the counterfeit except the racket. The design's "what it over-determines" field is stated for no image note as such.
- *Who can populate:* the poems ("the poems touch loss constantly", `ops/arc ecology.md`), the author, and the unrun figures survey.

**3.7 Crossing and durable perspective on the questions about the book's shape.**
- *What exists:* the surfaces hold both open by design.
- *Pending soundings:* the arc as kindness (item 3), the peak (item 4), integration against sending (item 5), house or field (item 14).
- *Who can populate:* only the author.

**3.8 What a Passage realizes.**
- *What exists:* no concordance row records the concerns, pairs or practices its unit realizes. Only the overlay's synthesis does.
- *Who can populate:* a session can propose these as synthesis, extracting from `abridged`. Setting them is the author's act.

**3.9 The patrons' Loci.**
- *What exists:* 11 of the 16 patron names have no note (by filename): Heraclitus, Meadows, McGilchrist, Whyte, Kimmerer, Rumi, Eliot, Tippett, Rohr, brown, hooks.
- *Who can populate:* primary readings; the reading queue already carries hooks and Meadows's case.

**3.10 Scale and Lens.**
- *What exists:* neither is recorded as a field on any note (frontmatter key census above).
- *Who can populate:* a session proposing values, which the author confirms.

**3.11 Sources the region depends on but the vault does not hold.**
- The seventeen trial chapters ("still not in `sources/`", `notes/book-structure.md`).
- The "working notes" that walked and first-telling cite for "the reader who finishes is not the reader who began".
- The sent letter's text, and any reply.

**Who can populate:** the author alone can supply these.

## 4. The three findings that matter most

**1. The vault built the design's "largest gap" and the author cut it. The cut left named gaps and an unchecked conflict.** From 2026-08-01 to 08-09 the vault held a craft category governed by an active rule ("Record the mechanism, never the verdict"). On 2026-08-08 it held 18 notes of exactly the design's Craft move kind, each with a checkable mark in the executed prose. The author retired them on 2026-08-09 ("Cut the craft-about-drafts notes too"). The schema, the template and `CLAUDE.md` still list `craft`, and 0 notes use it. The cut has two visible consequences:
- The arc survey of 2026-09-02 then named "descent craft" as an empty cell, which a retired note had filled.
- A rule derived on 2026-08-20 was never checked against the executed draft. That rule says "the reader's interior is reached in the interrogative or the optative, never diagnosed" (`notes/the book may interpret only the author…`). The retired note recorded that the executed draft scripts the reader's recognition ("Oh — that is what I have been doing", abridged ch4), which the design's commitment test "Does this passage tell the reader what they recognized?" would also flag.

Reinstating Craft move is the author's decision. The design's argument that craft is Book I content postdates his cut and the two-book decision.

**2. The design cannot hold Book II's decided shape, and the vault already has the sequence model it lacks.** The author assigned the psychedelic arc to Book II on 2026-08-16. The transcript never says "psychedelic" or "house", and the design gives Book II only the four movements. The vault holds six things the design lacks:
- a four-way taxonomy of structure;
- a sort of about sixty sequences by what governs a transition and what marks the exit;
- the concordance of states;
- the disclosure order, which is a sequence commitment in the author's own words;
- the finding that "the descriptive documents assert the arc as phenomenology, and the drafts execute it as a container";
- the author's pick "peak resolves into return", which already answers the design's false-peak condition.

The design needs a Sequence type (or a dramaturgy field on Book), a tenth commitment on disclosure order, and a Remainder entry on inhabiting a tension against spending it.

**3. The manuscript layer is shaped like Passages but is not in the author's hand, and the vault's Passage-side instruments exceed the design.** Every manuscript state the vault holds was written by the collaborator or by a session ("the seven documents are overwhelmingly Assistant-drafted"). The only passage the author took further, the pilot letter, was sent; its text is not held and no reply is recorded. The concordance already does the design's Passage work and more, through states, hands, patrons, registers and six named revision relations. The four surfaces render the design's grid row for the author and leave the Crossing and durable perspective open for him. Book I has no passage at all. Unless the design's Passage gains states, a hand field and "sent" and "answered" rungs, it will describe an empty type while the vault's real drafting material stays outside it.