# Report O3: the thinkers and the readings

*About this version.* Reader O3 wrote this report on 2026-09-25, reading one region of the vault against the design in `reframe-map-and-system-2026-09-25.md`. On the same day, after the author said he could not follow much of the study's writing, a session rewrote the report in plain language. The rewrite keeps the reader's findings, counts, quotations, and paths, removes repetition, and uses the plain names the design now uses (topic, tradition or thinker, comparison, the author's view, writing technique, drafted passage, the author's level, the open questions, and the topic table; `system-and-vault-collation-2026-09-25.md`, Part 2, defines each). The reader's original wording is in the repository's history at commit `418f352`.

**Words used.** A *thinker page* is the vault's page for a thinker (the vault calls it a chair): a note in `notes/` with `category: interlocutor`, recording what a thinker does for the book and where the thinker parts from it. Each thinker page has three sorting fields. `seat:` records the role a thinker plays for the book, such as the epigraph of a chapter or a quotation printed in the margin. `load:` records what the book's argument needs the thinker for: its thesis (`thesis-bearing`), an opponent (`adversary`), a thinker who reached the same finding independently (`independent-arrival`), a name for a practice the book already uses (`names-existing-practice`), company, or a precedent (an earlier attempt at the book's project, whose outcome is instructive). `discipline:` records the field a thinker's methods come from. A *reading record* is a file in `archive/` recording a completed reading of a thinker's own work; a *research record* records an outside survey. The *reading queue* (`ops/reading queue.md`) lists the readings still to do, each stated as a question that could turn out false. *Company* means thinkers who reached the same finding independently; the book cites them as others who noticed the same thing, not as evidence that it is true. A note is *nascent* when it is stated but not yet supported by a reading of its source, *privated* when it is complete except for one named missing reading, and *full* when a reading supports it; the vault's word for a reading that supplies the missing support is that it *grounds* the note. A *topic map* is a page gathering the claims of one concern. The seven *questions only the author can answer* are listed as B1 to B7 in `ops/practice-model ecology — candidate next steps.md`; the vault calls them soundings.

The region is the company of thinkers and the readings that support it: the interlocutors and research-frontier topic maps, the 64 thinker pages, every reading and research record in `archive/`, the record of the reframe conversation as an encounter, the reading queue, and the list of next steps in `ops/practice-model ecology — candidate next steps.md`.

## 0. What the reader read, and how the counts were made

**Read in full.** The design document (Parts 1 to 11, 1,143 lines in the wording of that day, with Parts 5, 6, 7, and 10 read closely); `CLAUDE.md` (219 lines; it was supplied whole in the session, and its length was confirmed with `wc -l`); the instructions for the study; `notes/interlocutors.md` (288 lines) and `notes/research-frontier.md` (132 lines); `archive/encounter — the reframe conversation (2026-08-13).md` (83 lines); and `ops/practice-model ecology — candidate next steps.md` (95 lines).

**Thinker pages read in full: 20.** The reader chose all twelve pages with `load: thesis-bearing` and the eight most-linked others: Eugene Gendlin, Martin Heidegger, Utpaladeva, Kṣemarāja, Martin Buber, Donald Winnicott, Carl Rogers, Joe Hudson, John Vervaeke, Ken Wilber, Michael Polanyi, Karla McLaren, Dōgen, al-Qushayrī, Werner Erhard, Tony Robbins, Søren Kierkegaard, Wolfgang Iser, Michel Henry, and Christopher Alexander. The reader read the first 30 lines of the pages for Isabelle Ratié, Gurdjieff and Ouspensky, and Ubuntu personhood, and checked the fields and chosen lines of the pages for Aristotle on privation and Rainer Maria Rilke. The reader saw all 64 thinker pages at least in the summaries of the shared index (`notes-index.md`).

**Reading records read in full: 8.** Gendlin 1964; Gendlin's *Focusing* and *A Process Model*; Nisbett and Wilson; Schwitzgebel; the Kashmir Śaiva texts; Bhartṛhari and Kṣemarāja; Abhinavagupta on the *anupāya* (the "no-means"); and the record on how Ignatius, Engler, and Kapleau tell a genuine change from a breakdown that looks like one (its title calls them "the discrimination family").

**Read in part.**
- `ops/reading queue.md` (371 lines). The header comment, the section "How an entry reads," the first section, which orders readings by how many nascent notes each would support (groups A to F; the vault calls this section the grounding backlog), and Tiers 1, 1b, and 2 to 6 were read in full. Tiers 7 and 8, the sections of proposed additions, the log of finished entries, and the two sections of deferred entries were read with lines cut at 340 to 700 characters.
- Eight more reading records, from the opening through the findings: al-Qushayrī; the record on how Hudson and McLaren describe letting a feeling run its full course (its title calls them "the completion family"); Rogers; Winnicott; Buber's *I and Thou*; the independent arrivals at the participation law (the rule that order, knowing, and meaning are made by the people taking part rather than delivered to a spectator); Reinhard May; and the record on Lewin and Johnstone as sources of the facilitated group.
- The other 31 reading records, at their "What was read," "Why," numbered findings, and "Verdict" lines, extracted with `grep` and shortened. For Polanyi, the first 14 lines.
- The three research records: their headings, plus lines 1–26 and 59–68 of the crossover survey, lines 1–14 and 76–90 of the counterpoint round, and lines 1–16 and 33–35 of the generative pass.
- The eight source notes, at about their first 12 non-empty lines each.

**Files outside the region, opened only to judge whether material fits.**
- In full: `ops/methodology/sharp questions.md`, `ops/methodology/thesis-bearing and company.md`, and `templates/interlocutor.md`.
- In part: lines 28–40 of `ops/methodology/the chain of understanding.md`; lines 1–32 of `the-loci.md`, and lines 1–20 and 88–100 of `the-constellation.md`; rows of `ops/decisions.md` found with `scripts/queries/decided.sh seat` and `verification`, and row 124; the headings and lines 1–8 of `ops/queue/candidates.md`; lines 100–160 and 2020–2034 of the transcript `reframe-conversation-full-2026-08-13.md`; lines 100–160 of `scripts/queries/frontmatter-parse.sh`; and three notes: lines 1–40 of `notes/nothing transforms from the audience.md`, lines 1–12 of `notes/aletheia and pratyabhijna converge on truth as un-forgetting.md`, and line 26 of `notes/aristotle on privation.md`.

**How the counts were made.** Every command ran from `/home/user/book-research`.
- Thinker pages: `rg -l0 '^category: interlocutor' notes/` returns 64.
- Loads, seats, and disciplines: `xargs -0 rg -N --no-filename '^load:' | sort | uniq -c`, and the same for `^seat:` and `^discipline:`.
- Missing fields: `rg --files-without-match '^discipline:'` returns 12, and `^recommendation:` is present on 58 pages.
- Kinds of archive file: `ls archive | grep -c '^reading — '` returns 47; the same count gives 3 research records, 8 source notes, and 1 encounter record.
- Read-only query scripts: `bash scripts/queries/lineage-sort.sh`, `candidate-seats.sh`, `link-check.sh`, and `decided.sh`. The reader checked each script for write operations before running it.
- Incoming links: a fixed-string `ripgrep` search for each thinker's wiki link over the `the-*.md` files, and the same search over `notes/`.
- Every other count is stated where it is used, with its search terms.

## 1. Where the region's material fits in the design

This region matches the design more closely than any other part of the vault the reader saw.
- The design's kind of material called a tradition or thinker covers a tradition, a thinker, or a lineage of practice, each with its own understanding of the books' subjects. This material already exists in this region, in more detail than the design specifies.
- The vault records it in four places: the thinker pages, the reading records, the groups of standpoints in `the-loci.md`, and the groups of convergences in `the-constellation.md`.
- The vault sorts thinkers mainly by a property the design would treat as a connection between two kinds of material: `load:`, which records what a thinker contributes to the book.
- The thinker pages almost never say which of the two books a thinker is for. One of the 64 names Book I, and none names Book II.

### 1a. Kind by kind

| Kind of material | What in this region serves it | Where, with counts | Fit | Notes |
|---|---|---|---|---|
| Topic | The region records no topic as an object of its own. Each thinker page names one topic map besides `interlocutors`. `the-loci.md` asks of every standpoint "what does this locus let the book do?", and each group in `the-constellation.md` ends with a line headed "Enters," which says where the group's material would appear in the book. | Thinker pages by topic map: relational-field 15, research-frontier 15, recognition 8, book-structure 7, felt-shift 5, container-anatomy 5, contraction-not-corruption 4, the call and the answering 3, tensions 3 (a count of the `topics:` field over the 64 pages). | Partial | The vault's six doctrine maps divide the material differently from the design's fifteen topics, so a table matching one to the other is needed. |
| Pair | Distinctions each thinker draws in their own text: Hudson's welcome against acceptance; al-Qushayrī's state against station; Iser's completion against participation; Buber's preparation against production; Kierkegaard's knowledge against capability; James's acquaintance against knowledge-about; Aristotle's *energeia* (an activity complete at every moment) against *kinesis* (a movement complete only at its end); Maturana and Varela's disturbing a system against instructing it ("perturb" against "instruct"); Wittgenstein's dissolving a false problem against disclosing a truth; Winnicott's transitional object against a living other person; Rogers's naming from within the person's own frame of reference against naming from an outside scheme; and restraint against discrimination in the record on telling an opening from a collapse. | The reading records and the thinker pages. The pairs themselves are claim notes in other regions. | Fits once translated: a distinction a thinker draws in their own text supplies a pair's **company** field, with the thinker quoted. | The region does not record a pair's "way in": a practice, encounter, or image that lets the reader experience the difference before it is named. |
| Practice | Practice lineages read in their own texts: *Focusing*'s six steps; Hudson's welcome and his method called VIEW; McLaren's practice of channeling an emotion and her grief ritual; Ignatius's rules (§§313–336); the Zen instruction on *makyō* (the visions and sensations that come during seated meditation, to which the student is told to give no meaning); Bohm's practice, in dialogue, of noticing one's own assumptions without acting on them or defending them (his word is "suspension"); Moreno's spontaneity training and warm-up; Johnstone's status exercises; Dōgen's seated meditation (zazen). | The reading records on Gendlin, on completing a feeling, on telling an opening from a collapse, on Bohm, on the corpus's referrals to other teachers, on facilitated groups, and on Dōgen. | Fits once translated: these supply a practice's **lineage** field and its **how it goes wrong** field. | Hudson's warning is an example of the second: "as soon as you start doing it not as a form of welcoming, not as a form of invitation, but as a form of management, the tool just stops working" (`notes/joe hudson.md`). |
| Image | Images from the traditions, quoted in the readings: Utpaladeva's young woman and the beloved she has not yet recognized (IPK IV.1.17); Plato's barren midwife and the "wind-egg"; Kapleau's glass taken for diamond; Ignatius's sponge and stone (§335); Polanyi's pianist; Buber's tree; the Daodejing's wheel hub and uncarved block; Zhuangzi's Cook Ding and the mirror; Wittgenstein's ladder. | Quoted inside the findings of about ten records. | Partial | No record states an image's other two fields: what it helps the reader keep in mind, and what it may suggest that nobody intended. |
| Encounter | One encounter record, whose opening fields give the date, the participants, and the setting, followed by the sections "The field," "What was noticed," "What changed," "What emerged," "Unresolved," and "Works consulted." Three reading records compare the author's own reported experience with a tradition: al-Qushayrī's categories are used to classify the author's phrase "a level above"; Kṣemarāja's account is compared with the author's "the clench"; and Henry, Longchenpa, and Śaṅkara are compared with the author's "Klein bottle of a mirror." | 1 encounter record; 3 reading records. | Partial | Present: when, where, and who; the conditions; what happened; what changed; what remains. Absent: the author's own dated, provisional note ("This is what I currently notice about what happened"). A session wrote the record and quoted the author's turns. |
| Tradition or thinker | 64 thinker pages; 47 reading records; 3 research records; 8 source notes; seven groups of standpoints plus a grid of Wilber's four quadrants in `the-loci.md`; and the note on four ontological roots (the reframe conversation's four starting points for inquiry: Vervaeke's, the recognition school's, phenomenology's, and dialogical inquiry's). | `notes/`, `archive/`, `the-loci.md` | Already present | Compared field by field in 1d. |
| Comparison | Made by sessions: the founding convergence and nine groups in `the-constellation.md`; the sections of reading records that compare a group of thinkers (headed "family"); and the tests of whether two thinkers reached a finding independently. Adopted by the author, and few: the founding convergence as his candidate for the book's central thesis; the Kashmir Śaiva refusals he tested ("these refusals ring true," `ops/completed.md`, line 182); his ranking of three devices for the page on 2026-08-16; and his decision of 2026-08-20 on how the Śaiva terms pair. | 2 of the 47 records have a section titled "The crossing left to the author" (`rg -l -i 'crossing left to the author' archive/`). | Fits once translated | A comparison made by a session supplies every field of a comparison except the author's note, so it is at the design's lowest level, "proposed." |
| The author's view | One claim, still nascent: [[a durable perspective is a recognition whose value persists across contexts]]. One question for the author, B3, asks whether durability or the felt shift is his standard. | `notes/research-frontier.md`; `ops/practice-model ecology — candidate next steps.md` | Little | The vault's drafting documents for the author's views are in `drafts/`, outside this region. |
| Writing technique | Kierkegaard's devices: writing under invented authors (pseudonymity); "double reflection," which separates a message's form from its content so the reader cannot receive the content as a conclusion; ending a book by taking it back (revocation); ordering the books so that they start from the reader's mistaken view and lead him away from it (maieutic ordering); and writing without claiming authority. Iser's technique of raising an expectation and then denying it ("evocation-then-negation"), and the places a text leaves unstated for the reader to supply (Iser's "gaps"). Johnstone's teacher who takes the blame when a student fails. Rogers's fifth condition, which allows a helper to name what the other person has not yet said, provided the naming comes from within that person's own frame of reference. Kapleau's printed transcript of an absent teacher's replies. Moreno's warm-up. | `notes/soren kierkegaard.md`, `notes/wolfgang iser.md`, and the records on Johnstone, Rogers, telling an opening from a collapse, and the corpus's referrals to other teachers | Fits once translated: the design's fields "the facilitation technique it adapts" and "how it goes wrong" are already present. | Kierkegaard's page: "The devices are asymmetric and manipulative by design." Both pages record the author's ranking of three devices on 2026-08-16. |
| Drafted passage | Nothing in this region. | Eight records say "A copyright edition is owed before any line is set in the manuscript," or close wording (`rg -l -i 'copyright edition'`). | — | That rule is a condition on future drafted passages. |
| Book | The `seat:` field records, for a single book, where a thinker is quoted or named outside the main text, using the corpus's categories: the patron of a chapter (the thinker quoted in its epigraph), quotations in the margins, the thinkers listed as sources in the back matter, recommended reading, and the list of practitioners the book refers readers to. | The allowed values of `seat:` in `templates/interlocutor.md`; the list in `notes/interlocutors.md`, lines 245–258 | Partial | Book I is named on 1 thinker page (Buber), and Book II on none (`rg -l 'Book I[^I]'` and `'Book II'` over the 64 pages). |

### 1b. The four things recorded for every kind of material, and the design's two lists

**The author's level.** The design's levels record the author's relation to a piece of material: whether it has only been proposed to him, or whether he has experienced it, inferred it, believed it, claimed it, or written it. No field in this region records those levels. Five things in the region record something similar.
1. The `state:` field on claims records how well a claim is supported: `nascent`, `privated` (incomplete in one named way, with a `privation:` field naming what is missing, which `scripts/queries/frontmatter-parse.sh` checks), `full`, or `composting` (superseded, but still used). A completed reading changes a claim's state, and the usual closing line of a reading record is "The note moves from privated to full." Twenty-eight of the 47 records mention nascent or privated notes, or a change of state. No thinker page has a `state:` field (0 of 64).
2. Grades of evidence: Grade A or B; [P] for a primary source, [S] for a secondary source, [C] for a contested one; "verified at web depth"; "corpus-relay only"; "from memory"; and "grid characterization." Fourteen records name a grade. In the reading queue, [S] appears 32 times, [P] 8, "Grade A" 10, and "Grade B" 9.
3. The standing of each source document in its source note: primary, draft, or descriptive.
4. The author's own acts:
   - Admitting thinkers to a role: 28 thinker pages record "Seated 2026-08-16," or equivalent wording, in their own text.
   - Loads: "A load is a proposal until the author makes it, the instrument being cosigned at 65–75%" (`notes/interlocutors.md`). The "instrument" is the mesh grid, a tiered document the author received on 2026-08-05 that sorts thinkers by what they contribute; he agreed with it, in his words, "about 65–75%."
   - His tests of the Kashmir Śaiva refusals.
   - Rows in the table of settled questions, `ops/decisions.md`.
   - The seven questions B1 to B7, none yet answered.
5. The encounter record's division of its sources: "The author's turns are primary material... The model's turns are works consulted."

In the design's terms, anything a session read or a model said is at the level "proposed," even when the vault marks it `full` and Grade A. The author's acts are the vault's record of the levels above "proposed." The vault's grades of evidence measure something else, which the design does not record at all (section 2.4). The vault also records a partial agreement, "65–75%," which the design's ordered levels cannot express. The design comes closest in function 6 (offering the author's own view as an example), where the view is offered "with a statement of how certain he is of it."

**Scale.** No thinker page records whether it concerns oneself, people together, or the surrounding conditions. The nearest substitutes are the disciplines of social theory and of systems and design (4 and 3 thinker pages), and the unread reading list from the fifth of the vault's seven outside surveys of what a text can do to and with a reader, which were run without access to the vault and returned reading lists (the vault calls them transmission digs, and this one Dig V). The tension over whether a book read alone can do what the book claims is also a question of scale: oneself against people together. **Absent** as a field.

**Quadrant.** No thinker page records a quadrant. Section 8 of `the-loci.md` is "The four-quadrant grid — a locus that generates loci," and the note [[wilber's four quadrants are a coordinate system, not an architecture]] records the reframe conversation's use of the quadrants. The reading of Wilber shows that this use differs from Wilber's own (correction C1). **Partial, and credited to the wrong source.**

**Source.** **The vault already records sources, more thoroughly than the design does.**
- Page-level locations, for example "Gendlin 1964, fn. 9" and "Knysh 2007, p. 78".
- A "How it is cited" paragraph in every reading record.
- Grades of evidence.
- A rule that a claimed correspondence quotes both sides, and never from memory.
- A divided source for the encounter record, separating the author's turns from the model's.
- Six named kinds of descent, meaning ways one thinker's idea came from another's.

The design's source field gives an address; the vault also records how much of the source at that address was actually read.

**The commitments.** Rules in this region match three of the design's nine commitments.
- "**no locus becomes sovereign.**" (`the-loci.md`) is the second commitment: no standpoint has authority over the others.
- "Preserve the difference; it is the connective gold" (`ops/methodology/the chain of understanding.md`) is the fifth: a difference is understood before a likeness is claimed.
- "The crossing is the author's; the reading only sets it up" (the same file) is the seventh, the author as the first participant, applied to the step in which a comparison produces one of the author's views.

Two standing rules in the region have no counterpart in the design:
- the first rule for loads: "The axis allocates reading; it does not rank evidence" (`ops/methodology/thesis-bearing and company.md`);
- the author's decision on the book's single test of truth, the felt shift (section 2.1).

**The open questions.** **The vault already keeps open questions, in a far more developed form than the design's list.**
- The reading queue has 94 numbered entries, each stating a question (Q), what depends on the answer (Stake), where to read (Address), and the current evidence (Standing). Thirty-four are marked done on their own line; 33 proposed additions and 17 deferred items are listed apart from the numbered tiers.
- The list of candidate thinkers in `ops/queue/candidates.md` has 114 entries not yet evaluated (`- [ ]`), 57 evaluated (`[e]`), none marked with the author's decision (`[x]`), and none declined.
- Every one of the 47 reading records has a section headed "What the reading did not settle."
- Both topic maps close with a "What remains" section.
- The seven questions B1 to B7 are unanswered.

The vault's open questions record things the design's list does not (section 2.5).

### 1c. Connections

The design's connections between kinds of material, each with the form this region gives it:
- **A tradition or thinker says something about a topic, showing some of it and leaving some of it out.** Each thinker page names its topic map and ends with a list of related notes, in which every link has a description ("— the finding this chair carries"). The `load:` value says in what way the thinker contributes. The design's condition, that the thinker's record states what it leaves out, is met on only 3 thinker pages; what the thinker would refuse is stated on 46.
- **A comparison brings traditions or thinkers to a topic and produces one of the author's views or an open question.** The groups of convergences in `the-constellation.md` (with the sections "Reveals / leaves open," "Open edge," and "Enters") and the comparison sections of the reading records record this. They produce many open questions and almost no views of the author's.
- **A practice lets the reader feel a pair, and comes from a tradition.** The pages for Gendlin, Hudson, and McLaren record this in their practice lineages.
- **An encounter is an event in which the author took part in a practice or a tradition.** Three records compare the author's reported experience with a tradition. The al-Qushayrī page states the limit of such a comparison: "This is a finding about the idiom; whether the author means a station or a relation is his sounding."
- **A writing technique is how material is presented on the page.** The Kierkegaard and Iser pages record this, in their sections headed "What his medium contributes."
- **Each book treats a topic in its own form.** This region nearly lacks it (1a above, and section 3.1).
- **A commitment protects a function.** The vault's standing rules state this in prose, and never tie it to the design's functions.
- **A pair states part of a topic; an image helps the reader keep a topic in mind; a drafted passage puts material into the manuscript.** None of these appears in this region.

The region also records connections the design lacks:
- descent, in six named kinds;
- opposing, the `adversary` load;
- precedent, which records what happened to an earlier attempt;
- a pairing downgraded to "influence-suspect" because the two parties had documented contact (the Reinhard May record);
- a primary text contradicting the corpus's account of it (McLaren on whether grief needs a witness);
- referral, where the book refers a reader to a named practitioner (Hudson);
- a reading supporting a claim (changing its state from nascent to full), and a reading correcting the vault's wording (nine records have a section for this).

### 1d. Structures the vault already has that serve the design's purposes

**1. The thinker page as the design's record for a tradition or thinker.** The reader compared them field by field:

| Field in the design | The vault's form | Evidence |
|---|---|---|
| its own vocabulary, quoted before it is translated | the page's text and its `clause:` field; the reading records quote word for word | 19 thinker pages mark the thinker's "own words," "own terms," or what is found "at his text"; the Gendlin page quotes "referent movement," "carrying forward," and "responsive order" |
| what it reveals | "the finding this chair carries," `clause:`, and "Why the sort wants him" | all 20 pages read in full |
| what it hides | rarely stated | 3 of 64 (`rg -l -i 'obscur|blind spot|cannot see|leaves out'`: Merleau-Ponty, Wilber, Gurdjieff) |
| what it would refuse in the books | "What he would refuse" | 46 pages have the heading; 61 mention refusal; 13 mark the refusal as worked out by a session rather than found in the thinker's text (searches for "derived rather than sourced," "derived rather than read," "derived from his texts," and similar) |
| the three questions put to each earlier thinker | not applied | the design's second question, "What did they mistake for the whole?", appears nowhere outside the transcript and the design (`rg -i 'mistake for the whole'`) |
| sources, with page-level addresses | `sources:`, `works:`, and the record's "How it is cited" | "Knysh 2007, pp. 33, 59, 75, 77–79..." (`notes/al-qushayri.md`) |
| whether it reached its finding independently, or learned it from others | `load: independent-arrival` (13 pages), the test of independence, and the six kinds of descent | 34 pages mention independence, and 29 mention descent, lineage, or genealogy |

The vault records four things the design lacks:
- `load:` (six values), `discipline:` (twelve values), and `seat:` (where the book quotes or names the thinker);
- `recommendation:`, the result of an evaluation, which awaits the author's decision;
- on every thinker page, a statement of which reading is still owed;
- the idea that a tradition or thinker can be a school, a construct, or a pair rather than one person. Ten thinker pages are of this kind, among them "set and setting," "the experiential learning cycle," "the kyoto school," "internal family systems," and "maturana and varela."

The design records three things the vault lacks:
- the field for what a tradition or thinker hides;
- the question of what they mistook for the whole;
- a single record for each tradition or thinker. Because the vault divides this material among several files, the files can come to disagree. `notes/michael polanyi.md` still says "Derived rather than sourced; no primary work has been read here," although `archive/reading — polanyi, the tacit dimension (1966).md` exists (2026-08-24). `notes/aristotle on privation.md` still says "the *Physics* has not been read here, in any translation," although the record of reading the *Physics* exists (2026-08-09). More than two dozen thinkers and works read in the records have no thinker page: Plato, Laozi, Nāgārjuna, Zhuangzi, Bhartṛhari, Abhinavagupta, Engler, Kapleau, Moreno, Bohm, Weil, and others. The reader found this by checking the list of record titles against the list of thinker pages.

**2. The reading record as a tradition's sources, plus a comparison prepared by a session.** Every record has the same parts:
- "What was read": the edition, the pages, and the web address with the date it was retrieved.
- "How it is cited."
- "Why": the question that could fail, taken from the reading queue.
- "What the reading settled": numbered findings, each applied to a claim.
- "What the reading did not settle": the record's own open questions.
- "Corrections to the vault's wording" (nine records).
- "Seatings" (nine records, each saying "Every seating remains the author's").

The encounter record states this equivalence directly: "a reading record is an Encounter for a text." By the design's own rule for the author's levels, the equivalence is not correct. A session's reading is research at the level "proposed." It becomes an encounter only when the author himself reads the text.

**3. `the-loci.md` as the design's record for traditions and thinkers, at the level of standpoints.** Its third question, "what does standing here disclose, and what does it hide?", corresponds to the design's fields for what a tradition reveals and what it hides. Its fifth, "what does this locus let the book do?", is the design's rule that every part must serve the books, applied to a tradition. Its one rule is the design's second commitment.

**4. `the-constellation.md` as the list of comparisons.** Each group's "Reveals / leaves open" gives the correspondence and the difference; its "Open edge" gives what is still undecided; its "Enters" says where the group's material would appear in the book. It lacks the author's note.

**5. The reading queue as the list of open questions, and as the design's "research invitations" (lines 11524–11534 of the transcript).** Its five properties (`ops/methodology/sharp questions.md`) add that a question can fail, what depends on it, a page-level address, what it continues from earlier work, and a grade. Its rule for the list of candidate thinkers separates names that have only been proposed from work: "**an entry that is a name plus a topic gloss is a shelf entry, and a shelf entry is not work.**"

**6. The list of next steps, sections A to F, as the design's order of work, divided by who acts.** The six sections are readings, questions for the author ("questions only the author can answer"), filings, revisions to how tensions are handled, directives, and upkeep. Each question for the author marks material that stays at the level "proposed" until he answers it.

**7. The decision on how to organize the thinkers.** The vault's decision of 2026-08-13 on the design's open choice 23 agrees with the design that the quadrants and the four ontological roots are ways of comparing thinkers, not categories to sort them into. It differs in giving priority to seat, load, and discipline "because only they ask what the book loses if a thinker leaves" (`ops/decisions.md`). The design would organize the thinkers by the connections among traditions and thinkers.

**8. How readings are ordered.** The reading queue's first section orders readings by how many nascent notes each would support. That measure counts the vault's own notes. The design orders by what the books need. Section 3.2 shows one place where the two orders differ.

### 1e. The topic table

Marks: **P** present, **L** little, **A** absent. The marks describe this region's material only. For the columns Question, Book I, Book II, and Author's view, most of the vault's material is in other regions, so an A here means only that this region has nothing.

| Topic | Question | Book I | Book II | Pair | Practice | Encounter | Company | Comparison | Author's view | What it hides |
|---|---|---|---|---|---|---|---|---|---|---|
| Company | P | L | A | P | L | L | P | P (session) / L (author) | L | P |
| Recognition | L | A | A | P | L | P | P | P / L | L | P |
| Relationship | A | L | A | P | L | L | P | P / L | L | P |
| Transformation | A | L | A | P | L | A | P | P / A | A | P |
| Power | L | L | A | P | A | L | P | L | A | P |
| Participation | A | A | A | P | L | L | P | P / A | A | P |
| Meaning | A | A | A | P | A | A | L | L | A | P |
| Awareness | A | A | A | P | A | P | P | P / L | L | P |
| Form | A | A | A | P | A | A | P | L (the author ranked devices) | A | P |
| Authorship | A | A | A | P | A | P | P | L | A | L |
| Integration | A | A | A | L | A | A | L | L | A | L |
| Sufficiency | A | A | A | L | A | P | L | L | A | L |
| Technology | A | A | A | A | A | P | L | A | A | A |
| Attention | A | A | A | L | A | A | L | A | A | L |
| Sovereignty | A | A | A | L | A | A | L | L | A | L |

The evidence for each entry follows. Where a row leaves out an entry, that entry is an A in this region.
- **Company.**
  - Question P: the groups of convergences ask "what was independently reached."
  - Book I L: only the Buber and Rogers records name Book I.
  - Pair P: "company, never proof" (the vault's rule on the author's stance); independent arrival against descent.
  - Practice L: the vault's methods (the test of independence, and the rule that a correspondence quotes both sides) are research methods, not practices for a reader.
  - Encounter L: the Landmark Forum the author attended in 2017 ([[the central correspondence was lived nine years before it was assembled]]); the retreat described in the encounter record.
  - Company P: 64 thinker pages and 47 records.
  - Comparison P/L: the groups of convergences, prepared by sessions; adopted by the author: his candidate for the book's central thesis, and his "these refusals ring true."
  - Author's view L: the one nascent note.
  - What it hides P: [[the unanimity claim is an artifact of how the lineages were selected]]; [[curating traditions for their overlap manufactures the unanimity it then reports]] (a tension still unresolved).
- **Recognition.**
  - Question L: Utpaladeva's verse IV.1.18, "for people's effortless attainment."
  - Pair P: drawing knowledge out of a person (the *Theaetetus*) against recollecting what one already knew (the *Meno*), in the Plato record; *prakāśa* (awareness as what makes things appear) against *vimarśa* (awareness aware of itself); dissolving a false problem against disclosing a truth.
  - Practice L: the *anupāya*, which rejects any method ("the means where there is nothing to be done").
  - Encounter P: the author's reflection, compared with three traditions.
  - Company P: Utpaladeva, Kṣemarāja, Heidegger, Plato, Advaita, Nāgārjuna, Wittgenstein, Henry.
  - Comparison P/L: the comparison in the record on how Henry, Longchenpa, and Śaṅkara describe a self that knows itself (its title calls it "the seamless mirror"), made by a session; the author's decision of 2026-08-20.
  - Author's view L: "recognition is already a with," a proposed way of handling a tension, taken from the author's reflection and not yet decided.
  - What it hides P: Heidegger's four refusals; Heidegger's 1964 retraction; and what the book leaves out about human finitude (the records on *Being and Time* II and on the Buddha's five remembrances, AN 5.57).
- **Relationship.**
  - Book I L: "That is the book's Book I posture — two steps back, tending conditions" (`notes/martin buber.md`).
  - Pair P: preparing for a meeting against producing it; a transitional object against a living other person; I–Thou against I–It.
  - Practice L: Bohm's "suspension" (noticing one's own assumptions without acting on them); Johnstone's "offer" in improvisation, which "ports to a book only as a concept."
  - Encounter L: the facilitation event of May 2026 (one line in the list of thinkers).
  - Company P: Buber, Winnicott, Rogers, Benjamin, De Jaegher and Di Paolo, Ubuntu.
  - Comparison P/L: "roughly nineteen chairs with nothing else in common say *this cannot be done alone*" (`the-constellation.md`).
  - What it hides P: Rogers's first and sixth conditions, which need a relationship a book does not have; Winnicott's living other person, "real as a target and false as an identity."
- **Transformation.**
  - Book I L: Rogers extends his conditions beyond therapy.
  - Pair P: *energeia* against *kinesis*; a passing state against a lasting station.
  - Practice L: Ignatius's rules.
  - Company P: Rogers, Robbins, Wilber, al-Qushayrī, Kornfield, Maslow, Lewin, Dōgen, Deci and Ryan.
  - Comparison P: three traditions agreeing that practice is its own end; Robbins's concession.
  - What it hides P: "satori can actually be unity with a fragmented world" (`notes/ken wilber.md`).
- **Power.**
  - Question L: Wasserstrom's charge of co-optation.
  - Book I L: Rogers refuses "naming from an *external* scheme."
  - Pair P: naming from within the person's frame of reference against naming from outside it.
  - Encounter L: the Landmark Forum of 2017, with the papers on harm from est (the Forum's predecessor) queued for reading.
  - Company P: Wasserstrom, Adorno, Erhard, Gurdjieff, Wilber (whose colour hierarchy became "a status ladder"), Benjamin.
  - Comparison L.
  - What it hides P: the outcomes recorded on the pages of the precedent thinkers; the warning on Kierkegaard's page that his devices deceive the reader.
- **Participation.**
  - Pair P: disturbing a system against instructing it.
  - Practice L: Moreno's spontaneity training.
  - Encounter L: the groups the author has facilitated.
  - Company P: von Foerster, Garfinkel, Schön, Johnstone, Polanyi, Maturana and Varela, De Jaegher and Di Paolo, and the meta-analysis of the therapeutic alliance.
  - Comparison P: "Each keeps a real refusal at the same threshold — the interior."
  - What it hides P: "a text does not adjust" (`ops/reading queue.md`, entry 74, on De Jaegher and Di Paolo).
- **Meaning.**
  - Pair P: knowing about against knowing through.
  - Company L: Vervaeke (read in part), James, Kierkegaard.
  - Comparison L: the question of naturalism, left undecided.
  - What it hides P: Vervaeke's refusal.
- **Awareness.**
  - Pair P: *prakāśa* against *vimarśa*; Henry's *épreuve de soi* (the self's direct feeling of itself) against *conscience de soi* (consciousness of oneself as an object).
  - Encounter P: the author's "Klein bottle of a mirror."
  - Company P: Utpaladeva, Henry, Merleau-Ponty, Longchenpa, Śaṅkara, Schwitzgebel.
  - Comparison P/L: "no one of the four keeps both terms, the seam-freedom, and the world at once" (the record on the seamless mirror).
  - What it hides P: Schwitzgebel on the unreliability of reports about bodily experience.
- **Form.**
  - Pair P: completion against participation.
  - Company P: Kierkegaard, Iser, Alexander, Wittgenstein, Moreno, Kapleau.
  - Comparison L: the author ranked three devices on 2026-08-16.
  - What it hides P: the ladder at the end of the *Tractatus*, which the reader throws away after climbing it, supports [[a framework that teaches its own exit relates to authority differently than one seeking permanence]].
- **Authorship.**
  - Pair P: Austin's "uptake," the hearer's understanding of a speech act, without which the act is incomplete.
  - Encounter P: the encounter record's passages on transcript lines 810 and 820.
  - Company P: Bakhtin, Levinas, Austin, Kierkegaard.
  - Comparison L: the record on Austin, Bakhtin, and Levinas (its title calls them "the answerability triad").
  - What it hides L.
- **Integration.**
  - Pair L: a passing state against *tamkīn*, a state that lasts and becomes stable.
  - Company L: Kornfield, Maslow, al-Qushayrī, Wilber's "stone Buddha," Dewey and Kolb.
  - Comparison L.
  - What it hides L: finitude.
- **Sufficiency.**
  - Pair L.
  - Encounter P: transcript line 446, in the encounter record.
  - Company L: Dōgen ("we practice precisely because we are already buddha"), the *anupāya*, Advaita.
  - Comparison L.
  - What it hides L: the *anupāya* is reserved for the most graced (the Abhinavagupta record).
- **Technology.**
  - Encounter P: lines 810 and 862, in the encounter record.
  - Company L: Vervaeke only; Borgmann, Crawford, and Han are unread and have no thinker pages.
- **Attention.**
  - Pair L: Polanyi's attending from one thing to another ("from-to").
  - Company L: Polanyi and James. Rosa's thinker page was deleted when many notes were removed earlier, and Spolin is unread.
  - What it hides L: Polanyi's pianist, a question left to the author.
- **Sovereignty.**
  - Pair L.
  - Company L: Rogers on where a person's judgment of value is located (his "locus of evaluation," still owed), Kierkegaard, Robbins ("We must be the source of our change"), Ubuntu.
  - Comparison L.
  - What it hides L.

Across the rows, the region has the most material for **Company** and **What it hides**. The design's table found statements of what a framework hides nearly absent in the transcript. In this region there are many, because each thinker page records the thinker's objections to the book. **Comparisons** prepared by sessions are many; comparisons the author has adopted are few. **Book I** has little in every row, and **Book II** nothing.

## 2. Material the design cannot record

### 2.1 The book's single test of truth, and its defense

**What it is.** The author decided the book's single test on 2026-08-04: "The felt shift, in the body rather than in the argument. It is the book's test for whether anything is true and everything else runs downstream of it — one standard, not one doctrine among six. The author judges it currently underdefended" (`ops/decisions.md`). The vault calls it the verification standard, and the first tier of the reading queue is "the verification standard's defense."
- Four reading records concern the standard's source and its principal critics: the two Gendlin records, Nisbett and Wilson, and Schwitzgebel.
- A fifth, the record on telling a genuine change from a breakdown that looks like one, tests every safeguard the traditions use against mistaking one for the other.
- Six readings of critics remain undone in Tier 7: Orne, Adorno, Kirsch, Britton's MedEx-I study, Finkelstein and colleagues, and a pair of effect sizes with no source.
- The defense has already been drafted, as `drafts/draft — the verification standard's defense.md` (a file not in this region).
- The question has been reopened: B3 asks, "is the felt shift the standard, the durability criterion the standard, or the felt shift the instant check and durability the standard it serves?"

**Why the design cannot record it.**
- The design has no field or list for how the books, the author, or the reader tell that something took effect.
- Its table of commitments has no row for this test.
- Its challenge question at transcript line 14582 is a test for the author, not a standard the book states.
- It has no connection by which a tradition or thinker opposes a commitment, so it cannot record the critics.
- The design deliberately does not record "recognition itself," but the felt shift is a check whose result can be written down, and that kind of record is what the design does keep.

**What it does for the books.**
- Function 2 (arrange the conditions for recognition).
- Function 3 (direct attention and leave the meaning to the reader): the check is the reader's own.
- Function 6 (offer the author's view as an example): the design's own question here is "Did this pass through the author's own encounter?"
- Function 8 (state a promise to the reader and keep it): the book states what it can and cannot verify.

**How the design would be extended.** Add a candidate tenth commitment, with its question and the author's level, and a new connection: **a tradition or thinker opposes a commitment**. Record the readings that answer each critic as that commitment's defense. Question B3 goes on the list of open questions until the author answers it.

**One real example, in the extended form.**
- Commitment (a candidate): the felt shift shows that the person's experiencing has changed and can go on (Gendlin's term is "carrying forward"), not that a statement is true. This is Gendlin's own limit on it: "'correctness' does not imply that a given set of symbols means what the felt referent alone means" (Gendlin 1964, fn. 9, `archive/reading — gendlin, a theory of personality change (1964).md`).
- Protects: functions 2, 3, and 6.
- The question to ask of a draft: does the passage or practice produce a step that changes what can be said next ([[a genuine felt shift changes what can be said next]])?
- The author's level: his decision of 2026-08-04, reopened by question B3.
- Opposed by:
  - Nisbett and Wilson 1977, pp. 235–237 (read whole). They show that people change without experiencing the change, and their account predicts that a check made later is less accurate.
  - Schwitzgebel 2008, pp. 249–251 (read whole), who starts from emotional and bodily experience and denies that reports about present experience are safe from error.
  - Katz 1978 (not read for this question; evaluated only in a survey) and Orne 1962 (not read; [S]).
- Defense: Gendlin's footnote 13, on four kinds of attention that are not focusing (read); Petitmengin 2013, on trained introspection (not read).
- Open question: "The vault holds two defenses of the felt shift against its fluent counterfeit, and this reading shows that they ask for opposite timings" (`archive/reading — nisbett and wilson, telling more than we can know (1977).md`).

### 2.2 What a thinker contributes: load as a connection of six kinds

**What it is.** Every thinker page has a `load:`. The counts are precedent 17, independent-arrival 13, thesis-bearing 12, company 9, adversary 7, and names-existing-practice 6 (`lineage-sort.sh`). The field exists because, in the author's words, "I think the 29 thinkers were the wrong lens all along" (quoted in `notes/interlocutors.md`). The mesh grid proposes a load, the author decides it, and a load "allocates reading and never ranks evidence."

**Why the design cannot record it.**
- The design has one connection from a tradition or thinker to a topic: it says something about the topic.
- An opponent does not say something about a topic in that sense; it opposes. A precedent matters because of what happened to it.
- A thinker who names an existing practice gives authority to a practice the book already uses.
- The vault's own field, which allows one value, fails for the same reason:
  - Vervaeke contributes in three ways (open choice 21 in the reconciliation register, the vault's list of 25 choices the reframe conversation left undecided).
  - Polanyi contributes in two.
  - Wilber's recommendation reads "thesis-bearing for the lattice on the claim note that carries it, precedent here."
  - Alexander shows "the species of load the axis had no word for" — "Method-bearing is its own tier-1 species" (`notes/christopher alexander.md`).
- A load describes what a thinker contributes to one particular topic, so it belongs on the connection rather than on the thinker.

**What it does for the books.**
- Function 5 (bring in others who noticed the same thing, without merging them): company must not be "mistaken for the argument."
- Function 7 (say what the framework hides): the opponents state it.
- Deciding what to read next is the vault's own planning, not a function of the books.

**How the design would be extended.** Widen the connection to **a tradition or thinker contributes to a topic (or to a commitment) as its thesis, an independent arrival, company, a named practice, a precedent, or an opponent**. Record one connection for each thinker and each topic. The three rules for loads still apply: a load is used to decide what to read and never to rank evidence; the author makes the assignment; and company is not a lesser standing.

**One real example, in the extended form.** The example records Vervaeke as three connections:
1. Vervaeke → Meaning: thesis. Relevance realization is "the criterion of the cognitive" (the 2012 paper, Grade A). The extension to meaning is in Vervaeke and Ferraro 2013, which has not been read.
2. Vervaeke → Participation: company, not an independent arrival. He "roots participatory knowing in Heidegger (*Awakening* Ep 32)" (`archive/reading — the participation law's independent arrivals (...).md`).
3. Vervaeke → the aim of function 6: partly an opponent, through his wisdom test, "Does this actually improve the agent's capacity to navigate reality?" (transcript line 2316, quoted in `notes/john vervaeke.md`).

The author's level for all three is "proposed." The author has not yet settled open choice 21.

### 2.3 Descent and independence, recorded as connections with a test

**What it is.**
- [[the apparatus descends from the settlement the book positions itself against]] names six kinds of descent: restatement (the book restates an earlier idea); the originator's own correction (the originator later corrected the idea the book uses); headless lineage (a lineage whose founder is never named); self-flagged debt (the source names its own debt); mis-addressed credit (the credit goes to the wrong person); and half-traced genealogy (a lineage traced only part of the way).
- [[the convergence's independence fails where three of its names share one teacher]] applies the test of independence.
- The Reinhard May record checks for contact in both directions between the traditions. It finds that the founding pairing "survives May's thesis intact," and it downgrades one pairing to "influence-suspect."
- The record on Lewin and Johnstone finds that Erhard and Lewin are "one shared channel, not two arrivals."
- By keyword search, 29 thinker pages discuss descent or lineage, and 34 discuss independence.

**Why the design cannot record it.** The design's field allows two answers only: the thinker reached the finding independently, or descends from someone who did. It has no field for the kind of descent, the documented contact, or which test was run and with what result, and it has no connection between one tradition or thinker and another.

**What it does for the books.**
- Function 5: "with their differences intact."
- Function 8: honest credit to the reader, the corpus's rule that "every elder [be] named on sight, on the page."
- Function 6.

**How the design would be extended.** Add a connection, **a tradition or thinker descends from another**, with three fields: the kind (the six values), the channel (the documented contact), and the evidence (a page-level address). Add a field to the comparison, *independence*, recording the test that was run and its result.

**Real examples, in the extended form.**
- McLaren's grief ritual descends from Sobonfu Somé's Dagara rituals. Kind: self-flagged debt. Evidence: "With my husband Tino, I had the great good fortune to participate in a number of indigenous West African grief rituals with the late, great Sobonfu Somé" (karlamclaren.com, read 2026-09-02, `notes/karla mclaren.md`).
- The corpus's claim that grief needs a witness, credited to McLaren. Kind: mis-addressed credit. Evidence, her own sentence: "Your grief process can be undertaken individually, or in a community or family group."
- Hudson's claim that repressed emotion is held in the muscles descends from Reich. Kind: headless lineage. Evidence: the thinker page records that "the emotional repression is held in our muscles..." is "Reichian in substance and carries no attribution anywhere in the material," with "no Reich, Lowen, or Perls" named (`notes/joe hudson.md`).

### 2.4 Grades of evidence: how much of a source was actually read

**What it is.** The records give grades such as "Grade **A**, paragraph numbers verified against Puhl's own markers" (the record on telling an opening from a collapse). They record corrections that only reading could make: nine records have a section headed "Corrections to the vault's wording" or "corrected in the vault." The Nisbett and Wilson record says: "The correction was available only by reading the paper." The records also state what is owed before a quotation can be used. The reading queue grades the current evidence of every entry.

**Why the design cannot record it.** The author's level records the author's relation to a piece of material. The source field gives an address. Neither says how much of the source at that address was actually read. In the design, a session's Grade A reading of Knysh at page 78 and a model's description from memory are both at the level "proposed."

**What it does for the books.**
- Function 5: the company is quoted accurately.
- Function 8: the promise that nothing is quoted from memory.
- Future drafted passages: the manuscript needs copyright editions.

**How the design would be extended.** Add a fifth field recorded for every kind of material, **grade**, separate from the author's level. It records how much of the material's own source was read, and how closely, with the vault's values: A (the primary text, read in full, with the page checked); B (a reputable secondary source that quotes the primary with a page); read on the web only; relayed by the corpus; from memory; and the mesh grid's description.

**One real example.** The example is al-Qushayrī's formula, "States are [divine] gifts, whereas stations are earnings."
- Grade A in English, at Knysh 2007, p. 78.
- Grade B for the Arabic: "The Arabic of the formula stays at Grade B until a printed page is in hand" (`notes/al-qushayri.md`).
- The author's level: proposed, because the author has not read the text himself.

### 2.5 The open questions as a working queue: questions that can fail, and who can close them

**What it is.**
- The five properties the vault requires of a question in the reading queue (its term is a sharp question).
- 94 numbered entries in the reading queue, each with a question, what depends on it, an address, and its current evidence.
- The list of candidate thinkers, with 114 names not yet evaluated.
- 47 sections headed "What the reading did not settle."
- The division in the list of next steps between readings, which a session can do, and questions for the author: "B. Soundings — questions only the author can answer."

**Why the design cannot record it.** The design's list of open questions gives each question with a transcript line. It has no field saying what would settle a question: a reading, the author, a drafting session, or an extraction from the corpus. It records nothing that depends on each answer, no address, nothing a question continues from earlier work, and no grade. And it does not separate names that have only been proposed from actual work.

**What it does for the books.**
- Function 7 (say what the framework hides): the list of open questions is the book's honest statement of what it does not know.
- The design's own order of work, which runs from a tradition or thinker to an encounter.

**How the design would be extended.** Give every open question these fields:
- the question, stated so that it can fail;
- **settled by**: a reading, a question for the author, drafting, or extraction from the corpus;
- what depends on each answer;
- an address;
- what it continues from earlier work;
- a grade.

Keep a separate list for proposed candidates that are not yet questions.

**One real example.** The example is the design's open question "whether saṅkoca, contraction, can be read as a useful standpoint," in the extended form:
- Question: does any classical source of the Trika (the Kashmir Śaiva school) read *saṅkoca*, contraction, as productive?
- Settled by: a reading (item A7 in the list of next steps), done on 2026-09-02 at Grade A.
- Answer: "Kṣemarāja supplies the mechanism of the productive reading of contraction while withholding its commendation" (the record on Bhartṛhari and Kṣemarāja).
- What depended on it: whether the productive reading is the tradition's or the book's own; it is the book's own.
- Continues from: the reading of the three impurities (the *malas*) on 2026-08-28.
- What remains: question B1, "Whether his reflection carries the productive-locus revaluation." Only the author can settle it.

### 2.6 Where a book quotes or names a thinker outside the main text, and referral to practitioners

**What it is.**
- The allowed values of `seat:`: chapter patron (the thinker quoted in a chapter's epigraph), `margin-voices` (quotations in the margins), reference lineage "hosted in the back matter," recommended reading, source tradition, and others.
- The list of sixteen chapter patrons (`notes/interlocutors.md`, line 257).
- The list of practitioners the book refers readers to. `walked` IX says, "A somatic misfire wants Hudson, not Byron Katie" (quoted in `notes/joe hudson.md`).
- The author's decision of 2026-08-16 giving thinkers their roles.

**Why the design cannot record it.** The design's record for a tradition or thinker has no field for where a book quotes or names it. The record for a book has "how much of its own method it shows," but no field for the margins, epigraphs, and back matter. A drafted passage has a "candidate position." Referring a reader to a named teacher outside the book is not a connection in the design. The values of `seat:` were made for one book, and the design has two.

**What it does for the books.**
- Function 5: the corpus's rule that the company is named on the page.
- Function 7: a referral to a practitioner outside the book gives the reader a concrete way to stop relying on the book.
- Function 8: the promise says where to go when the book cannot help.
- The difference between Book I, which shows the facilitator the reasons for each of its choices (the transcript's phrase is "show the score to the musicians"), and Book II, which names its method only at the end.

**How the design would be extended.** Add a connection, **a book quotes or names a tradition or thinker at a position** (epigraph, margin, body, back matter, reading list, or referral), recorded once for each book. Placing material remains the author's decision.

**One real example.**
- Hudson, in the corpus's single book, at "referral."
- Evidence: "A somatic misfire wants Hudson, not Byron Katie" (walked IX).
- Position in Book I: not assigned. Position in Book II: not assigned.
- The role the author gave him: coaches (2026-08-16).

### 2.7 What a reader already associates with a name, and what happened to earlier attempts

**What it is.**
- Heidegger's page records his membership in the Nazi party, the Black Notebooks, and his Bremen sentence of 1949, and names three writers to be quoted alongside him (the page calls them "escorts"): Celan, Arendt, and Adorno. This follows the author's instruction that these associations "are indeed a part of what will be a pretext to any erudite reader" (author statement, 2026-08-03, `notes/martin heidegger.md`).
- Erhard's page: "the one figure in the book's company whose public reputation makes naming him a decision rather than a courtesy," with the literature on harm from est queued.
- The pages of the precedent thinkers record what happened to earlier attempts: Wilber's episode of 2006 and "the colour hierarchy that became a status ladder among his readers"; Gurdjieff and Ouspensky as "the clearest record of how such a thing acquires authority dynamics its founder did not intend"; and Csikszentmihalyi's flow, adopted as a term for productivity.
- All of these depend on [[the nearest prior attempts are case histories rather than interlocutors]], still at `state: privated`.
- Seventeen thinker pages have the precedent load.

**Why the design cannot record it.** Every field in the design's record for a tradition or thinker concerns its ideas: what it reveals, what it hides, and what it would object to. A thinker's public record, or the outcome of an earlier attempt at this book's project, is neither.

**What it does for the books.**
- Function 8: the reader's trust.
- Function 5.
- Book I's topic of power: "The more powerful the facilitator becomes, the more important sovereignty becomes."
- Function 7.

**How the design would be extended.** Add two fields to the record for a tradition or thinker:
- **what a reader already associates with this name**, with the other thinkers the book quotes alongside it;
- **what happened to it**, for precedents: the attempt, its outcome, the mechanism, and what each book does to avoid the same outcome.

**One real example.** The example is Heidegger's page.
- What a reader already associates with the name: the author's words above.
- Quoted alongside him: Celan (his line in the guestbook at Todtnauberg), Arendt ("Martin Heidegger at Eighty"), and Adorno (*The Jargon of Authenticity*).
- A caution attached to the record: the Bremen sentence and the guestbook line "have not been checked here against their published homes."
- The author's level: the author asked for the record.

### 2.8 A tradition's internal disagreements

**What it is.**
- The Ubuntu page recommends reading Menkiti and Gyekye together "because the internal disagreement is the tradition arguing and is worth more than the position it argues about."
- Ratié's page argues that the recognition school "earned its positions polemically and can argue back."
- Dōgen's relation to the idea of original enlightenment "is contested inside his own tradition."

**Why the design cannot record it.** The design's record for a tradition or thinker assumes a single standpoint. It has no field for disagreements inside a tradition.

**What it does for the books.** It serves function 5, and the design's commitment "A difference is understood before a likeness is claimed," applied inside one tradition.

**How the design would be extended.** Allow the record for a tradition or thinker to include **its internal disagreements**, each side quoted.

**One real example.** The example is Ubuntu personhood.
- Menkiti: personhood is "achieved" by becoming a member of a community.
- Gyekye: the individual has standing of their own, which the community influences but does not confer.
- Both readings are still owed, as the page itself says.

### 2.9 Material that serves the vault's own planning rather than the books

**What it is.**
- The grid of disciplines against loads printed by `lineage-sort.sh`, whose empty entries are "a reading question, not a verdict." One example: the discipline of poets and artists is empty under all six loads, and Rilke has no discipline at all.
- The 114 names on the list of candidates, not yet evaluated.
- The records of web searches in the three research records.
- The record-keeping for seats and grades.

**Where it belongs.** None of this is material a drafting session would place in either book. It is used to decide what the vault reads. By the design's rule that every part must serve the books, it belongs in the vault's planning files, not in the design. The design's evaluation question at transcript lines 12313–12315 should limit its size: reject "a more sophisticated database" that makes the author "less likely to sit down and encounter the material."

**One way it can still serve the books.** The discipline field can supply the comparison's independence field. Thinkers who reached a finding by "an empirical, a systems, a social-theory, and a contemplative road" count for more than four who reached it from continental philosophy (`the-constellation.md`).

### Corrections to the design

**C1. The quadrant field credits Wilber with a use that differs from his own.**
- The design's quadrant field, and its entry for Wilber, adopt the quadrants as "a coordinate system, rather than an ontology" (transcript line 17834).
- The vault's reading of five of Wilber's texts on 2026-09-02 found that for Wilber the quadrants describe how reality itself is made: "a 4-quadrant affair, all the way down" (Excerpt A, p. 33).
- It concludes that "the coordinate-system demotion is a departure from Wilber rather than a reading of him" (`notes/ken wilber.md`).
- His refusal is on record: "The Integral map is just a map... neither do we want to be working with an inaccurate or faulty map" (*AQAL Journal* 1(1), p. 2).
- The quadrant field should credit this use to the books themselves, and record Wilber's objection with it.

**C2. Several of the design's open questions are already settled or narrowed in the vault.**
- *How the Śaiva terms pair.* The author settled this on 2026-08-20: "saṅkoca (contraction) pairs with vikāsa (expansion) as the pulse's two phases, and vimarśa (reflexive awareness) is a distinct element held on its own relevance" (`ops/decisions.md`, row 124).
- *Whether saṅkoca can be read as productive.* Settled in the text: the tradition supplies the mechanism and withholds the commendation (section 2.5).
- *The text of the recognition fable* (transcript line 156: "that fable about the woman who meets her lover in his ar- always known her"). The vault has the verse that gives the recognition school its name, read in Torella's translation of the Sanskrit. Utpaladeva, IPK IV.1.17: "Just like the beloved, who after much insistence finally stands in the presence of the maid in love, though he is there before her he does not give her any pleasure until she recognizes who he is" (Torella, p. 218; `archive/reading — the kashmir śaiva loci (...).md`). That this verse is the fable the author meant is **the reader's inference**. Only he can confirm it.
- *How fully the books disclose their basis in Kashmir Śaivism.* The tension [[the tradition the book owes most has no chair in its company]] is at `status: treated`: "Kashmir Śaivism is named the book's deepest well" (the author, 2026-08-16, according to `notes-index.md`).
- *Whether Landmark's teaching descends from Heidegger's aletheia, which the design says the transcript answers only briefly.* The vault read Erhard and Jensen 2010: "footnote 4 says ontology is meant 'as it is explicated by Martin Heidegger (1927) in *Being and Time*,' and he quotes that book at page 33" (`notes/werner erhard.md`). Hyde and Kopp write, "Our goal—Heidegger's, Erhard's, the authors'—is the unconcealment of a powerful aspect of human being" (p. 5; `ops/reading queue.md`). So the caution in the design's table of traditions and thinkers, "a lot of scholars say those parallels are independent discoveries" (the model's words), is wrong about Erhard. Erhard's version descends from Heidegger, and the pages cited show it.
- *Where "nothing transforms because of the audience" comes from.* The vault attributes it to the atlas's section on the lineage of speech acts: "The lineage's one unanimous law: nothing transforms from the audience" (atlas §IX.3, quoted in `notes/nothing transforms from the audience.md`). This makes the question more specific without settling it.

**C3. Vervaeke is company for participation, not an independent arrival.** The design lists him as a thinker whose findings the transcript treats as independent support. The reading of 2026-08-30 shows that he takes participatory knowing from Heidegger. It also finds the four kinds of knowing in Vervaeke and Ferraro 2013, not in the 2012 paper.

**C4. Book II's premise conflicts with the one objection almost all the thinkers share.**
- The design gives Book II one typical danger: "another performance target" (line 14606).
- The thinkers in the vault's company say the work cannot be done alone: "roughly nineteen chairs with nothing else in common say *this cannot be done alone*" (`the-constellation.md`).
- The conclusion of the record on telling a genuine change from a breakdown is that "a book read alone can state the whole of the restraint and none of the discrimination."
- The readings limit the objection without removing it:
  - Hudson assigns his welcome as a practice done alone.
  - McLaren's grief "can be undertaken individually."
  - Kapleau answers "By no means" to the question of practice without a teacher, but allows it as a way to "commence."
  - al-Qushayrī requires a teacher (the shaykh) for a student's formation, not for reading one's own state.
- Book II's fields need this limit stated, both as what its framework hides and in its promise to the reader, and the list of open questions needs it as an open choice.

**C5. A caution on the second question put to earlier thinkers.** The design's second question, "What did they mistake for the whole?", conflicts with the stance recorded in the vault's rules: "a thinker's refusal is kept so the thinker survives being cited" (`CLAUDE.md`). The vault asks, 46 times, what the thinker would refuse in the book. The design should treat its second question as the books' own reading, never as a verdict on the thinker, and always pair it with the thinker's refusal.

## 3. What the vault does not yet have

### 3.1 The thinker pages do not yet say which book each thinker serves

**What exists.**
- 1 of the 64 thinker pages names Book I (`notes/martin buber.md`), and none names Book II.
- 2 of the 47 reading records name Book I: the records on Buber and on Rogers.
- The Aristotle results for "Book I" are Book I of the *Physics*, not the vault's Book I.
- 12 thinker pages mention facilitation, and 1 mentions "two books."

**How the absence was checked.** The reader ran `rg -l 'Book I[^I]'`, `rg -l 'Book II'`, `rg -l -i 'facilitat'`, and `rg -l -i 'two books'` over the thinker pages and over `archive/reading*`, and checked each result in context.

**What would supply it.** For each of the twelve thinker pages with the thesis load, a session can draft a line saying how the thinker is used in Book I and in Book II: which topic the thinker contributes to, and whether the book quotes the thinker openly or uses the thinker's work without naming them. The author decides.

### 3.2 The lineage of facilitation methods that Book I needs

**What exists.** The design's account of function 3 cites Grove's Clean Language, in which "the facilitator can constrain the form of inquiry while remaining radically unconstrained about its content" (line 1709). The vault has:
- no thinker page for Grove, Heron and Reason, Roger Schwarz, the Art of Hosting, Freire, hooks, Akomolafe, or Mezirow;
- no thinker page for the author's own lineage of Authentic Relating and Circling, which is a single line in the list of thinkers;
- one facilitation text read, Bohm's, with no thinker page.

The reading queue dropped that lineage from its priorities because "Grove (Clean Language), Heron & Reason (co-operative inquiry), and Freire & hooks ground *no* current nascent note" (`archive/reading — bohm, on dialogue (1996).md`), so "a further facilitation-lineage pass would be collecting-without-admitting, not grounding" (`ops/reading queue.md`). The queue's test is how many of the vault's own notes a reading would support. The design's test is what the books need. For this lineage the two tests give different answers.

**How the absence was checked.** The reader checked whether a thinker page exists for each name and counted mentions in `notes/` and `archive/` with `rg -l -i -w`. "Art of Hosting" has 0 results in `notes/` and `archive/`. "Heron" has 0 in `notes/`. "Circling|Authentic Relating" appears in 12 notes, with no thinker page. One queue entry exists, for bell hooks (proposed 2026-09-03).

**What would supply it.** Primary readings of Grove and of hooks's *Teaching to Transgress* would supply it; the second is already queued. The author's own practice would supply encounters, which only he can write.

### 3.3 Comparisons the author has made, and his views

**What exists.** The rule that "The crossing is the author's" is in place. So is the list of seven questions for the author, B1 to B7, none answered. Two records name the comparison they leave to him: Polanyi's (whether attending to one's own felt shift dissolves it) and Plato's (the drawing-out of the *Theaetetus* against the recollection of the *Meno*). The Henry page records that this pairing has not been studied: "the pairing is open territory directly adjacent to the author's own crossing." The crossover survey found no predecessor "at the specific crossing the author occupies."

**How the absence was checked.** `rg -i 'crossing left to the author'` found 2 files. `rg -i "tested by him|the author tested"` found the one Kashmir Śaiva case (`ops/completed.md`, line 182). The note on the author's view is `nascent`.

**What would supply it.** Only the author can supply it, by answering the questions and by writing his own note on a comparison. The vault's records have already prepared the comparisons.

### 3.4 Encounters beyond the one record, and the author's own note

**What exists.** One encounter record exists. The other events of the author's life appear in this region only as items named inside other records: the Landmark Forum of 2017, the retreat of March 2026, the facilitation event of May 2026, and the letter he read at 4am. His reflection of 2026-08-24 is quoted inside three reading records.

**How the absence was checked.** `find . -iname '*encounter*'` returns one archive record. `frontmatter-parse.sh` defines a kind of file named "encounter —" that requires `date`, `participants`, and `field`, and no other file uses it.

**What would supply it.** A session could draft encounter records from the provenance reconstructions, leaving the note empty for the author. Only he can write the note.

### 3.5 What a tradition hides, and the three questions put to each earlier thinker

**What exists.** Three thinker pages state what their thinker hides. None applies the design's three questions. The design's third question, what a thinker's work makes available, is partly answered by the test for loads ("what happens to the book without them") and by the sections headed "What his medium contributes" on the pages of Kierkegaard and Iser.

**How the absence was checked.** The reader used the two `rg` searches in section 1d.

**What would supply it.** A session can draft these fields from the records already read. They stay at the level "proposed" until the author adopts them.

### 3.6 Company for function 9, and for the scale of the surrounding conditions

**What exists.** Vervaeke's diagnosis of the meaning crisis has been read in part. The reading list from the fifth outside survey (Dig V) is unread: Rosa, Han, Borgmann, Crawford, and Maslach. The reading queue cites thinker-page paths that do not exist (`notes/hartmut rosa.md`, `notes/martin orne.md`, `notes/willoughby britton.md`, and `notes/j l moreno.md`), all written as file paths in backticks, which `link-check.sh` does not test; it reported no unresolved wiki links.

**How the absence was checked.** The reader checked each cited path with `[ -f ]`, and looked for a thinker page for each thinker named.

**What would supply it.** The primary readings already queued would supply it: Tier 7, entries 76 to 80.

### 3.7 The critics of the single test of truth, still unread

**What exists.** "The adversary chamber reached zero primary reads" (`notes/interlocutors.md`). The six readings from the sixth of those outside surveys (Dig VI), and the reading of Katz, remain undone.

**How the absence was checked.** Tier 1 entry 3 and Tier 7 entries 49 to 54 are marked "[S]," "citation only," or "unverified."

**What would supply it.** Primary readings would supply it, and a session can do them.

### 3.8 Images from the traditions, and poets as a discipline

**What exists.** Images are quoted inside records, and none is recorded as an image. The discipline value `poets-and-artists` is unused. Rilke, the first chapter patron, has no discipline. The group of letter-writers (Seneca, Keats, Celan) is "queued, not evaluated" (`archive/research — generative pass background.md`).

**How the absence was checked.** `lineage-sort.sh` shows the poets-and-artists row empty under every load, and the fields of Rilke's page have no discipline.

**What would supply it.** A drafting session can record the images. The author is a poet, so whether poets belong in the company is his decision.

### 3.9 The author's acts are recorded in three places that disagree

**What exists.**
- On 2026-08-16 the author gave each evaluated thinker the role its evaluation recommended: "Every evaluation that carries a recommendation" (`ops/decisions.md`).
- 28 thinker pages record that decision and have a value in `seat:`.
- 30 thinker pages still read `seat: candidate`, because their recommendations name a load ("Seat as thesis-bearing") or a reading ("Read X for Y") rather than a value from the list of seats.
- The list of candidates marks no decision with `[x]`.
- Two thinker pages contradict their own reading records (Polanyi, and Aristotle on privation).

**How the absence was checked.** The reader used `candidate-seats.sh`, the `rg` searches for phrases about seating, and a list of each page's recommendation.

**What would supply it.** A cleanup by a session would supply it, together with the author's choice of seat for the recommendations that name a load. This matters for the design, because the author's level works only if the author's acts are recorded where the material is.

## 4. The three findings that matter most

**First: the design's record for a tradition or thinker already exists in this region, in more detail than the design asks for. It is divided among four places, sorted by a property that is really a connection, and does not yet say which book each thinker serves.**
- The 64 thinker pages, the 47 reading records, the groups of standpoints in `the-loci.md`, and the groups of convergences in `the-constellation.md` all record this material.
- Their fields match the design's closely. "What he would refuse" appears on 46 thinker pages, and the thinker's own terms, quoted, on 19. Page-level addresses are standard. Independence and descent are tested.
- The design's field for what a tradition hides appears on only 3 thinker pages, and its three questions for earlier thinkers are never applied.
- The vault sorts the company by `load:`. The cases of Vervaeke, Polanyi, Wilber, and Alexander show that a load describes a thinker's contribution to one topic, so the design should record it on the connection from a tradition or thinker to a topic (section 2.2).
- Only Buber's page names Book I, and no page or record names Book II (section 3.1).
- The lineage of facilitation methods that Book I needs most has no thinker pages. The vault's reading order, which counts how many of its own notes a reading would support, set that lineage aside (section 3.2).

**Second: comparisons, and statements of what a framework hides, exist in quantity, but only at the level a session can give them. The author's own contributions are few, and the vault lists each one.**
- The design found comparisons and statements of what a framework hides nearly absent in the transcript.
- This region has comparisons prepared by sessions in the groups of convergences, the comparison sections of the reading records, and the tests of independence. It records what the framework hides in every objection to the book that a thinker page records.
- The vault's own rule already matches the design's: "a reading record assembles the material and names the crossing it leaves to the author; it never asserts that the correspondence holds" (`ops/methodology/the chain of understanding.md`).
- What the author has done himself is small: his candidate for the book's central thesis, his test of the Kashmir Śaiva refusals, his ranking of three devices, and his decision of 2026-08-20 on how the Śaiva terms pair.
- Seven questions await his answers (B1 to B7). They correspond to the design's empty column, the author's note, and they are already worded as questions.

**Third: the largest set of material the design cannot record, and three corrections.**
- **What it cannot record.** The single test of truth, set by the author on 2026-08-04, comes first in the reading queue, has a draft of its defense, and has critics read at page level. The design has no commitment, field, or connection for it (section 2.1). The design's list of open questions also lacks the vault's grades, what depends on each answer, and what would settle each question (sections 2.4 and 2.5).
- **Correction: the reader who reads alone.** The design gives Book II no warning that almost all the thinkers in the company deny that the work can be done alone. The vault's verdict is that "a book read alone can state the whole of the restraint and none of the discrimination" (C4).
- **Correction: Wilber's quadrants.** The quadrant field credits Wilber with a use he refused (C1).
- **Correction: the open questions.** Five of the design's open questions are settled or narrowed in the vault, one of them by the author's own decision on how the Śaiva terms pair. A sixth, the text of the fable, is probably already in the vault in the primary text; only the author can confirm it (C2).
