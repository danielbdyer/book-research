# Region report: The company as standpoints: thinkers and readings (O3)

## 0. What I read

**The design and the law.** I read `reframe-map-and-system-2026-09-25.md` Parts I to XI in full (1,143 lines), and Parts V, VI, VII and X closely. I read `CLAUDE.md` in full (219 lines; it was supplied whole in the session context and its length was confirmed with `wc -l`). I read the brief in full.

**The region, read in full.**
- `notes/interlocutors.md` (288 lines) and `notes/research-frontier.md` (132 lines).
- `archive/encounter — the reframe conversation (2026-08-13).md` (83 lines).
- `ops/practice-model ecology — candidate next steps.md` (95 lines).
- Twenty interlocutor notes, which the vault calls "chairs" (a chair is a thinker's page recording what the thinker does for the book). I chose all twelve with `load: thesis-bearing` and the eight most-linked others: eugene gendlin, martin heidegger, utpaladeva, kshemaraja, martin buber, donald winnicott, carl rogers, joe hudson, john vervaeke, ken wilber, michael polanyi, karla mclaren, dogen, al-qushayri, werner erhard, tony robbins, soren kierkegaard, wolfgang iser, michel henry, christopher alexander. I sampled the first 30 lines of isabelle ratie, gurdjieff and ouspensky and ubuntu personhood, and checked the frontmatter and chosen lines of aristotle on privation and rainer maria rilke. I covered all 64 chairs through `notes-index.md`.
- Eight reading records in full: Gendlin 1964; Gendlin *Focusing* and *A Process Model*; Nisbett and Wilson; Schwitzgebel; the Kashmir Śaiva loci; Bhartṛhari and Kṣemarāja; Abhinavagupta on the *anupāya*; the discrimination family.

**The region, read in part.**
- `ops/reading queue.md` (371 lines). I read the header comment, "How an entry reads," the grounding backlog (clusters A to F), and Tiers 1, 1b and 2 to 6 in full. I read Tiers 7 and 8, the proposed-addition sections, the Done log and the two deferred sections with lines cut at 340 to 700 characters.
- Eight more reading records from the opening through the findings: al-Qushayrī; the completion family; Rogers; Winnicott; Buber's *I and Thou*; the participation law's arrivals; Reinhard May; the facilitated room's roots.
- The other 31 reading records at their "What was read," "Why," numbered findings and "Verdict" lines, pulled out with `grep` and cut in length. For Polanyi I read the first 14 lines.
- The three research records: their headings, plus crossover cluster lines 1–26 and 59–68, counterpoint round lines 1–14 and 76–90, and generative pass lines 1–16 and 33–35.
- The eight source notes, at about their first 12 non-empty lines each.

**Outside the region, checked only to judge fits.**
- In full: `ops/methodology/sharp questions.md`, `ops/methodology/thesis-bearing and company.md` and `templates/interlocutor.md`.
- In part:
  - `ops/methodology/the chain of understanding.md` lines 28–40.
  - `the-loci.md` lines 1–32, and `the-constellation.md` lines 1–20 and 88–100.
  - `ops/decisions.md`, through `scripts/queries/decided.sh seat` and `verification` and row 124.
  - `ops/queue/candidates.md`, its headings and lines 1–8.
  - The transcript `reframe-conversation-full-2026-08-13.md`, lines 100–160 and 2020–2034.
  - `scripts/queries/frontmatter-parse.sh` lines 100–160.
  - Three notes: `notes/nothing transforms from the audience.md` lines 1–40, `notes/aletheia and pratyabhijna converge on truth as un-forgetting.md` lines 1–12, and `notes/aristotle on privation.md` line 26.

**Commands behind the counts.** I ran every command from `/home/user/book-research`.
- Chairs: `rg -l0 '^category: interlocutor' notes/` returns 64.
- Loads, seats and disciplines: `xargs -0 rg -N --no-filename '^load:' | sort | uniq -c`, with the same form for `^seat:` and `^discipline:`.
- Missing fields: `rg --files-without-match '^discipline:'` returns 12, and `^recommendation:` is present on 58.
- Archive kinds: `ls archive | grep -c '^reading — '` returns 47; the same count gives 3 research records, 8 source notes and 1 encounter record.
- Read-only query scripts: `bash scripts/queries/lineage-sort.sh`, `candidate-seats.sh`, `link-check.sh` and `decided.sh`. I checked each script for write operations before running it.
- Inbound links: a fixed-string ripgrep for each thinker's wiki link over the-*.md and the same search over notes/.
- I state every other count where it is used, with its search terms.

## 1. Collation

This region matches the design more closely than any other part of the vault I saw.
- The design's **Locus** type is a cultivated way of seeing: a tradition, a thinker, or a practice lineage. It already exists here natively, with more detail than the design specifies.
- The vault spreads it over four containers: the chairs, the reading records, the standpoint families in `the-loci.md`, and the convergence groups in `the-constellation.md`.
- The vault sorts it chiefly by a property the design would treat as a relation: `load:`, which records what a thinker carries for the book.
- The company is almost never pointed at the two books. Only one of 64 chairs names Book I, and none names Book II.

### 1a. Types

| Type | What in this region serves it | Where (paths, counts) | Fit | Notes |
|---|---|---|---|---|
| Concern | The region holds no concern as an object. Each chair names one topic map besides `interlocutors`. `the-loci.md` asks of every locus "what does this locus let the book do?", and each group in `the-constellation.md` ends with an "Enters" line. | Chairs by topic map: relational-field 15, research-frontier 15, recognition 8, book-structure 7, felt-shift 5, container-anatomy 5, contraction-not-corruption 4, the call and the answering 3, tensions 3 (a `topics:` tally over the 64 chairs). | Partial | The vault's six doctrine maps are a different cut from the design's fifteen concerns, so a crosswalk is needed. |
| Pair | Distinctions each thinker draws at their own text: Hudson's welcome against acceptance; al-Qushayrī's state against station; Iser's completion against participation; Buber's preparation against production; Kierkegaard's knowledge against capability; James's acquaintance against knowledge-about; Aristotle's *energeia* against *kinesis*; Maturana and Varela's perturb against instruct; Wittgenstein's dissolve against disclose; Winnicott's transitional object against live other; Rogers's naming from within the person's frame against naming from an outside scheme; restraint against discrimination in the discrimination family. | The reading records and the chairs. The pairs themselves live as claim notes in other regions. | With translation: a distinction a thinker draws at their own text fills a Pair's **company** field, with the thinker quoted. | The Pair's "way in" field (a practice, encounter or figure that lets the reader feel the pair before it is named) is not recorded here. |
| Practice | Practice lineages read at their texts: *Focusing*'s six movements; Hudson's welcome and VIEW; McLaren's channeling and grief ritual; Ignatius's rules §§313–336; the Zen *makyō* instruction; Bohm's suspension; Moreno's spontaneity training and warm-up; Johnstone's status work; Dōgen's zazen. | The Gendlin, completion-family, discrimination-family, Bohm, routing-surfaces, facilitated-room and Dōgen records. | With translation: these fill a Practice's **lineage** field and its **how it goes wrong** field. | Hudson's guard is an example of the second: "as soon as you start doing it not as a form of welcoming, not as a form of invitation, but as a form of management, the tool just stops working" (`notes/joe hudson.md`). |
| Figure | Figures from the traditions, quoted in readings: Utpaladeva's maiden and her unrecognized beloved (IPK IV.1.17); Plato's barren midwife and the "wind-egg"; Kapleau's glass taken for diamond; Ignatius's sponge and stone (§335); Polanyi's pianist; Buber's tree; the Daodejing's wheel hub and uncarved block; Zhuangzi's Cook Ding and the mirror; Wittgenstein's ladder. | Quoted inside the findings of about ten records. | Partial | No record states a figure's other two fields: what it lets the reader hold, and what it over-determines. |
| Encounter | One Encounter record, whose frontmatter gives date, participants and field, followed by the sections "The field," "What was noticed," "What changed," "What emerged," "Unresolved" and "Works consulted." Three reading records set the author's own reported experience against a tradition: al-Qushayrī sorts the phrase "a level above"; Kṣemarāja is tested against "the clench"; Henry, Longchenpa and Śaṅkara are set against the "Klein bottle of a mirror." | 1 record; 3 reading records. | Partial | Native: when, where and who; conditions; what happened; what changed; what remains. Absent: the author's own dated, provisional note ("This is what I currently notice about what happened"). A session wrote the record and quoted the author's turns. |
| Locus | 64 chairs; 47 reading records; 3 research records; 8 source notes; seven standpoint families plus a quadrant grid in `the-loci.md`; the note on four ontological roots. | `notes/`, `archive/`, `the-loci.md` | Native | Field-by-field comparison in 1d. |
| Crossing | Made by sessions: the founding convergence and nine groups in `the-constellation.md`; the "family" sections in reading records; the independence tests. Held by the author, few: the founding convergence as his core-thesis candidate; the Kashmir Śaiva refusals he tested ("these refusals ring true," `ops/completed.md`:182); his 2026-08-16 ranking of three page devices; his 2026-08-20 decision on how the Śaiva terms pair. | 2 of 47 records have a section titled "The crossing left to the author" (`rg -l -i 'crossing left to the author' archive/`). | With translation | A crossing made by a session fills every Crossing field except the author's note, so it stands at the design's lowest standing, surfaced. |
| Durable perspective | One claim, still at `state: nascent`: [[a durable perspective is a recognition whose value persists across contexts]]. One question awaiting the author, sounding B3 (a sounding is a question the vault puts to the author), asks whether durability or the felt shift is his standard. | `notes/research-frontier.md`; `ops/practice-model ecology — candidate next steps.md` | Thin | The vault's "durable-perspective surfaces" in `drafts/` lie outside this region. |
| Craft move | Kierkegaard's devices: pseudonymity, double reflection, revocation, maieutic ordering, writing without authority. Iser's evocation-then-negation and the participation gap. Johnstone's teacher who takes the failure. Rogers's Condition 5. Kapleau's printed transcript of the absent teacher's replies. Moreno's warm-up. | `notes/soren kierkegaard.md`, `notes/wolfgang iser.md`, the Johnstone, Rogers, discrimination-family and routing-surfaces records | With translation: the design's "the facilitation move it scales from" and "how it goes wrong" are native. | Kierkegaard's chair: "The devices are asymmetric and manipulative by design." Both chairs record the author's ranking of three devices on 2026-08-16. |
| Passage | Nothing in this region. | Eight records say that "A copyright edition is owed before any line is set in the manuscript" or close wording (`rg -l -i 'copyright edition'`). | — | That rule is a condition on future Passages. |
| Book | The `seat:` field records apparatus positions for a single book, taken from the corpus: chapter patron (the epigraph), margin voices, reference lineage in the back matter, recommended reading, and the referral network. | Seat enum in `templates/interlocutor.md`; the roster in `notes/interlocutors.md` lines 245–258 | Partial | Book I is named in 1 chair (Buber) and Book II in none (`rg -l 'Book I[^I]'` and `'Book II'` over the 64 chairs). |

### 1b. Shared fields and registers

**Standing.** The design's standing ladder records how far the author has taken a piece of content: surfaced, encountered, inferred, believed, claimed, written. No vault field in this region is that ladder. Five things sit near it.
1. `state:` on claims records how substantiated a claim is: `nascent`, `privated` (incomplete in one named way, with a `privation:` field naming the gap, which `scripts/queries/frontmatter-parse.sh` enforces), `full`, `composting`. Readings move claims up this ladder; the recurring verdict line is "The note moves from privated to full." Twenty-eight of 47 records mention nascent or privated notes or a move between states. No chair carries `state:` (0 of 64).
2. Evidence grades: Grade A or B, [P] for primary, [S] for secondary, [C] for contested, "verified at web depth," "corpus-relay only," "from memory," "grid characterization." Fourteen records name a grade. In the queue, [S] appears 32 times, [P] 8, "Grade A" 10 and "Grade B" 9.
3. Source standing on the source notes: primary, draft or descriptive.
4. Acts by the author.
   - Seating: 28 chairs record "Seated 2026-08-16" or equivalent in their own text.
   - Loads: "A load is a proposal until the author makes it, the instrument being cosigned at 65–75%" (`notes/interlocutors.md`). The "instrument" is the mesh grid, the document of the author's that sorts thinkers by load and discipline.
   - His tests of the Kashmir Śaiva refusals.
   - Rows in the decisions register.
   - Seven soundings, B1 to B7, still unanswered.
5. Split provenance in the encounter record: "The author's turns are primary material... The model's turns are works consulted."

The translation is this. Anything a session read or a model said stands at the design's **surfaced**, even when the vault marks it `full` at Grade A. The author's acts are the vault's record of the steps above surfaced. The vault's evidence ladder runs on a separate axis, and the design has no such axis (2.4). The vault also records a partial cosign, "65–75%," which the design's ordered steps cannot express. The design comes nearest with function 6, where the author's crossing is "marked by how firmly he holds it."

**Scale.** No chair records whether it bears on self, relation or ecology. The nearest proxies are the social-theory and systems-and-design disciplines (4 and 3 chairs) and the unread Dig V shelf ("Dig V" is one of the vault's transmission digs: blind research surveys that return reading lists). The tension over the book's solitary form is, underneath, a question of scale: self against relation. **Absent** as a field.

**Lens.** No chair carries a quadrant. `the-loci.md` §8 is "The four-quadrant grid — a locus that generates loci," and the note [[wilber's four quadrants are a coordinate system, not an architecture]] holds the reframe's use of it. The Wilber reading shows that this use departs from Wilber (correction C1). **Partial, and credited to the wrong source.**

**Provenance.** **Native, and stronger than the design's.**
- Page-level locators, for example "Gendlin 1964, fn. 9" and "Knysh 2007, p. 78".
- A "How it is cited" paragraph in every reading record.
- Evidence grades.
- A rule that both halves of a correspondence are quoted, never from memory.
- Split provenance.
- Six named kinds of descent.

The design's field gives an address; the vault also records how deep the address was actually read.

**Commitments.** Rules in this region match three of the design's nine commitments.
- "**no locus becomes sovereign.**" (`the-loci.md`) is Commitment 2.
- "Preserve the difference; it is the connective gold" (`ops/methodology/the chain of understanding.md`) is Commitment 5.
- "The crossing is the author's; the reading only sets it up" (same file) is Commitment 7, applied to the relation where a crossing yields a durable perspective.

Two standing rules have no counterpart in the design.
- The load axis's first rule: "The axis allocates reading; it does not rank evidence" (`ops/methodology/thesis-bearing and company.md`).
- The author's decision on the verification standard (2.1).

**Remainder.** **Native, and much richer than the design's.**
- The reading queue has 94 numbered entries, each in the form Q, Stake, Address, Standing. Thirty-four are marked done on their own line; 33 proposed additions and 17 deferred items sit outside the numbered tiers.
- The shelf in `ops/queue/candidates.md` holds 114 pending entries (`- [ ]`), 57 evaluated (`[e]`), none marked with the author's outcome (`[x]`) and none declined.
- Every one of the 47 records has a "What the reading did not settle" section.
- Both maps close with "What remains."
- The seven soundings wait on the author.

The vault's open questions carry fields the design's Remainder lacks (2.5).

### 1c. Relations

The design's relations, each with the form this region gives it:
- **A Locus illuminates a Concern.** Each chair's topic map, with a "Relevant Notes" footer in which every link carries a worded gloss ("— the finding this chair carries"). The `load:` value says in what way the thinker bears. The design's condition, admitting what the Locus obscures, appears on only 3 chairs; what the Locus would refuse appears on 46.
- **A Crossing brings Loci to a Concern and yields a Durable perspective or a Remainder entry.** The convergence groups in `the-constellation.md` ("Reveals / leaves open," "Open edge," "Enters") and the "family" sections of the records. They yield Remainder entries in quantity and durable perspectives almost never.
- **A Practice opens a Pair / comes from a Locus.** The practice lineages on the Gendlin, Hudson and McLaren chairs.
- **An Encounter meets a Locus.** Three records put the author's reported experience against a tradition. The al-Qushayrī chair states the limit: "This is a finding about the idiom; whether the author means a station or a relation is his sounding."
- **A Craft move carries content onto the page.** The Kierkegaard and Iser chairs, in their sections headed "What his medium contributes."
- **A Book projects a Concern.** Nearly absent (1a above and 3.1).
- **A Commitment protects a function.** Stated in the directives' prose and never tied to the design's functions.
- **A Pair articulates a Concern; a Figure carries one; a Passage realizes content.** Not in this region.

The region also states relations the design lacks:
- descent, in six named kinds;
- contests, the adversary load;
- precedent, which records what happened to an earlier attempt;
- influence-suspect, a pairing demoted because the two parties had documented contact (the Reinhard May record);
- corrects the corpus, where the primary text overrules the corpus's account (the McLaren grief witness);
- referral, where the book sends a reader to a named practitioner (Hudson);
- a reading grounds a claim (nascent to full), and a reading corrects the vault's wording (nine records have such a section).

### 1d. The vault's own structures that already do the design's work

**1. The chair as a Locus.** Field against field:

| Design Locus field | Vault form | Evidence |
|---|---|---|
| its own vocabulary, quoted before translation | chair body and `clause:`; reading records quote verbatim | 19 chairs carry an "own words / own terms / at his text" marker; the Gendlin chair: "referent movement," "carrying forward," "responsive order" |
| what it discloses | "the finding this chair carries," `clause:`, "Why the sort wants him" | all 20 chairs read in full |
| what it obscures | rarely stated | 3 of 64 (`rg -l -i 'obscur|blind spot|cannot see|leaves out'`: Merleau-Ponty, Wilber, Gurdjieff) |
| what it would decline in the books | "What he would refuse" | 46 chairs with the heading; 61 mention refusal; 13 mark the refusal as derived (searches for "derived rather than sourced," "derived rather than read," "derived from his texts" and similar) |
| the three questions put to each forebear | not applied | the design's second question, "What did they mistake for the whole?", appears nowhere outside the transcript and the design (`rg -i 'mistake for the whole'`) |
| sources, with page-level addresses | `sources:`, `works:`, the record's "How it is cited" | "Knysh 2007, pp. 33, 59, 75, 77–79..." (`notes/al-qushayri.md`) |
| independent arrival, or descent | `load: independent-arrival` (13 chairs), the independence test, six kinds of descent | 34 chairs mention independence and 29 mention descent, lineage or genealogy |

The vault holds four things the design lacks:
- `load:` (six values), `discipline:` (twelve values) and `seat:` (apparatus position);
- `recommendation:`, an evaluation's result that waits on the author;
- a stated reading debt on every chair;
- the idea that a Locus can be a school, a construct or a pair rather than a person. Ten chairs are of this kind: "set and setting," "the experiential learning cycle," "the kyoto school," "internal family systems," "maturana and varela," and others.

The design holds three things the vault lacks:
- the "what it obscures" field;
- the "what did they mistake" question;
- a single object per Locus. The vault's split lets the parts drift apart. `notes/michael polanyi.md` still says "Derived rather than sourced; no primary work has been read here," although `archive/reading — polanyi, the tacit dimension (1966).md` exists (2026-08-24). `notes/aristotle on privation.md` still says "the *Physics* has not been read here, in any translation," although the Physics record exists (2026-08-09). More than two dozen thinkers and works read in the records have no chair: Plato, Laozi, Nāgārjuna, Zhuangzi, Bhartṛhari, Abhinavagupta, Engler, Kapleau, Moreno, Bohm, Weil and others. This is from my list of record titles checked against the chair list.

**2. The reading record as a Locus's sources plus a crossing set up by a session.** Each record runs through the same parts:
- "What was read": edition, pages, URL and retrieval date.
- "How it is cited".
- "Why": the question that could fail, taken from the queue.
- "What the reading settled": numbered findings, each landing on a claim.
- "What the reading did not settle": the record's own Remainder entries.
- "Corrections to the vault's wording" (nine records).
- "Seatings" (nine records, each saying "Every seating remains the author's").

The encounter record makes the equation itself: "a reading record is an Encounter for a text." By the design's own standing rule that equation does not hold. A session's reading is surfaced research. It becomes an Encounter only when the author meets the text.

**3. `the-loci.md` as the Locus at the grain of standpoints.** Its third question, "what does standing here disclose, and what does it hide?", carries the design's disclose and obscure fields. Its fifth, "what does this locus let the book do?", is the book-need rule applied to a Locus. Its one law is the design's Commitment 2.

**4. `the-constellation.md` as the register of Crossings.** Each group's "Reveals / leaves open" gives the correspondence and the difference; its "Open edge" gives what remains; its "Enters" links the group to the book. What it lacks is the author's note.

**5. The sharp-question queue as the Remainder, and as the "research invitations" of the design's lines 11524–11534.** The five properties (`ops/methodology/sharp questions.md`) add failability, a stake, a page-level address, an inheritance and a grade. The shelf rule separates surfaced names from work: "**an entry that is a name plus a topic gloss is a shelf entry, and a shelf entry is not work.**"

**6. The practice-model worklist, sections A to F, as the design's rhythm of work, labeled by who acts.** The six sections are readings, soundings ("questions only the author can answer"), filings, revisions to tension treatments, directives, and hygiene. The soundings are the design's standing ladder made into a list of the author's pending acts.

**7. The rule and the tie-break on company.** The vault's decision of 2026-08-13 on the design's Fork 23 agrees with the design that the quadrants and the four roots are lenses rather than taxonomies. It differs by keeping seat, load and discipline primary "because only they ask what the book loses if a thinker leaves" (`ops/decisions.md`). The design would organize the thinkers by the relations among Loci.

**8. How reading is ordered.** The grounding backlog orders readings by how many nascent notes each would ground. That measure looks inward at the vault's own notes. The design orders by what the books need. Section 3.2 shows one place where the two orders diverge.

### 1e. Profile-grid rows

Marks: **P** present, **T** thin, **A** absent. The marks describe this region's material only. For the Question, Book I, Book II and Durable perspective cells, most of the vault's content lies in other regions, so an A here means that this region holds nothing.

| Concern | Question | Book I | Book II | Pair | Practice | Encounter | Company | Crossing | Durable perspective | Exit |
|---|---|---|---|---|---|---|---|---|---|---|
| Company | P | T | A | P | T | T | P | P (session) / T (author) | T | P |
| Recognition | T | A | A | P | T | P | P | P / T | T | P |
| Relationship | A | T | A | P | T | T | P | P / T | T | P |
| Transformation | A | T | A | P | T | A | P | P / A | A | P |
| Power | T | T | A | P | A | T | P | T | A | P |
| Participation | A | A | A | P | T | T | P | P / A | A | P |
| Meaning | A | A | A | P | A | A | T | T | A | P |
| Awareness | A | A | A | P | A | P | P | P / T | T | P |
| Form | A | A | A | P | A | A | P | T (author ranked devices) | A | P |
| Authorship | A | A | A | P | A | P | P | T | A | T |
| Integration | A | A | A | T | A | A | T | T | A | T |
| Sufficiency | A | A | A | T | A | P | T | T | A | T |
| Technology | A | A | A | A | A | P | T | A | A | A |
| Attention | A | A | A | T | A | A | T | A | A | T |
| Sovereignty | A | A | A | T | A | A | T | T | A | T |

Evidence, cell by cell. Where a row omits a cell, that cell is an A in this region.
- **Company.**
  - Question P: the constellation's apparatus asks "what was independently reached."
  - Book I T: only the Buber and Rogers records name Book I.
  - Pair P: "company, never proof" (authorial stance); arrival against descent.
  - Practice T: the vault's methods (the independence test, both halves) are research practices, not practices for a reader.
  - Encounter T: the 2017 Landmark room ([[the central correspondence was lived nine years before it was assembled]]); the retreat in the encounter record.
  - Company P: 64 chairs and 47 records.
  - Crossing P/T: the constellation's groups, set up by sessions; held by the author, the core-thesis candidate and "these refusals ring true."
  - Durable perspective T: the nascent note.
  - Exit P: [[the unanimity claim is an artifact of how the lineages were selected]]; [[curating traditions for their overlap manufactures the unanimity it then reports]] (live).
- **Recognition.**
  - Question T: Utpaladeva's verse IV.1.18, "for people's effortless attainment."
  - Pair P: drawing-out against recollection (the Plato record); *prakāśa* against *vimarśa*; dissolve against disclose.
  - Practice T: the *anupāya*, which refuses method ("the means where there is nothing to be done").
  - Encounter P: the author's reflection put against three traditions.
  - Company P: Utpaladeva, Kṣemarāja, Heidegger, Plato, Advaita, Nāgārjuna, Wittgenstein, Henry.
  - Crossing P/T: the seamless-mirror comparison (a session's); the author's decision of 2026-08-20.
  - Durable perspective T: "recognition is already a with," a treatment drawn from the reflection and not yet decided.
  - Exit P: Heidegger's four refusals; Heidegger's 1964 retraction; the finite left behind (the Being and Time II and AN 5.57 records).
- **Relationship.**
  - Book I T: "That is the book's Book I posture — two steps back, tending conditions" (`notes/martin buber.md`).
  - Pair P: preparation against production; transitional object against live other; I–Thou against I–It.
  - Practice T: Bohm's suspension; Johnstone's offer, which "ports to a book only as a concept."
  - Encounter T: the May 2026 facilitation event (roster line).
  - Company P: Buber, Winnicott, Rogers, Benjamin, De Jaegher and Di Paolo, Ubuntu.
  - Crossing P/T: "roughly nineteen chairs with nothing else in common say *this cannot be done alone*" (`the-constellation.md`).
  - Exit P: Rogers's Conditions 1 and 6; Winnicott's live other, "real as a target and false as an identity."
- **Transformation.**
  - Book I T: Rogers generalizes his conditions beyond therapy.
  - Pair P: *energeia* against *kinesis*; state against station.
  - Practice T: Ignatius's rules.
  - Company P: Rogers, Robbins, Wilber, al-Qushayrī, Kornfield, Maslow, Lewin, Dōgen, Deci and Ryan.
  - Crossing P: the three-tradition convergence on practice as its own end; Robbins's concession.
  - Exit P: "satori can actually be unity with a fragmented world" (`notes/ken wilber.md`).
- **Power.**
  - Question T: Wasserstrom's co-optation charge.
  - Book I T: Rogers refuses "naming from an *external* scheme."
  - Pair P: naming from within the frame against naming from outside it.
  - Encounter T: the author's 2017 Forum, with the est adverse-effects papers queued.
  - Company P: Wasserstrom, Adorno, Erhard, Gurdjieff, Wilber (the colour hierarchy became "a status ladder"), Benjamin.
  - Crossing T.
  - Exit P: the precedent bench's outcomes; Kierkegaard's deception flag.
- **Participation.**
  - Pair P: perturb against instruct.
  - Practice T: Moreno's spontaneity training.
  - Encounter T: the facilitated room.
  - Company P: von Foerster, Garfinkel, Schön, Johnstone, Polanyi, Maturana and Varela, De Jaegher and Di Paolo, and the alliance meta-analysis.
  - Crossing P: "Each keeps a real refusal at the same threshold — the interior."
  - Exit P: "a text does not adjust" (`ops/reading queue.md`, entry 74, on De Jaegher and Di Paolo).
- **Meaning.**
  - Pair P: knowing about against knowing through.
  - Company T: Vervaeke (partial reading), James, Kierkegaard.
  - Crossing T: the naturalism fork kept open.
  - Exit P: Vervaeke's refusal.
- **Awareness.**
  - Pair P: *prakāśa* against *vimarśa*; *épreuve de soi* against *conscience de soi*.
  - Encounter P: the "Klein bottle of a mirror."
  - Company P: Utpaladeva, Henry, Merleau-Ponty, Longchenpa, Śaṅkara, Schwitzgebel.
  - Crossing P/T: "no one of the four keeps both terms, the seam-freedom, and the world at once" (the seamless-mirror record).
  - Exit P: Schwitzgebel on bodily introspection.
- **Form.**
  - Pair P: completion against participation.
  - Company P: Kierkegaard, Iser, Alexander, Wittgenstein, Moreno, Kapleau.
  - Crossing T: the author ranked three devices on 2026-08-16.
  - Exit P: the Tractatus ladder grounds [[a framework that teaches its own exit relates to authority differently than one seeking permanence]].
- **Authorship.**
  - Pair P: uptake (Austin).
  - Encounter P: the encounter record's lines on 810 and 820.
  - Company P: Bakhtin, Levinas, Austin, Kierkegaard.
  - Crossing T: the answerability triad.
  - Exit T.
- **Integration.**
  - Pair T: state against *tamkīn*, a state that stays and becomes stability.
  - Company T: Kornfield, Maslow, al-Qushayrī, Wilber's "stone Buddha," Dewey and Kolb.
  - Crossing T.
  - Exit T: the finite.
- **Sufficiency.**
  - Pair T.
  - Encounter P: transcript line 446, in the encounter record.
  - Company T: Dōgen ("we practice precisely because we are already buddha"), the *anupāya*, Advaita.
  - Crossing T.
  - Exit T: the *anupāya* is reserved for the most graced (the Abhinavagupta record).
- **Technology.**
  - Encounter P: lines 810 and 862 in the encounter record.
  - Company T: Vervaeke only; Borgmann, Crawford and Han are unread and have no chairs.
- **Attention.**
  - Pair T: from-to (Polanyi).
  - Company T: Polanyi and James. Rosa's chair was severed from the graph; Spolin is unread.
  - Exit T: Polanyi's pianist, a question left to the author.
- **Sovereignty.**
  - Pair T.
  - Company T: Rogers on the locus of evaluation (still owed), Kierkegaard, Robbins ("We must be the source of our change"), Ubuntu.
  - Crossing T.
  - Exit T.

Across the rows, the region is strongest on **Company** and **Exit**. The design's grid found Exit nearly empty in the transcript. In this region, Exit material is abundant: it is carried by the refusals each thinker keeps against the book. **Crossing** is plentiful when set up by sessions and thin when held by the author. **Book I** is thin and **Book II** is empty in every row.

## 2. Beyond the system

### 2.1 The verification standard and its defense

**What it is.** The author decided the book's single test on 2026-08-04: "The felt shift, in the body rather than in the argument. It is the book's test for whether anything is true and everything else runs downstream of it — one standard, not one doctrine among six. The author judges it currently underdefended" (`ops/decisions.md`). The reading queue's first tier is "the verification standard's defense."
- Four records read the standard's author and its sharpest attackers: the two Gendlin records, Nisbett and Wilson, and Schwitzgebel.
- A fifth, the discrimination family, tests every guard against mistaking a collapse for an opening.
- Six adversary readings remain unread in Tier 7: Orne, Adorno, Kirsch, Britton's MedEx-I study, Finkelstein and colleagues, and an unsourced effect-size pair.
- The defense has already reached the manuscript layer as `drafts/draft — the verification standard's defense.md` (outside this region).
- The question is open again: sounding B3 asks, "is the felt shift the standard, the durability criterion the standard, or the felt shift the instant check and durability the standard it serves?"

**Why the design cannot hold it.**
- The design has no field or register for how the books, the author or the reader tell that something landed.
- Its Commitments table has no verification row.
- Its red-team question at transcript line 14582 is a test for the author, not a standard the book states.
- It has no relation by which a Locus attacks a Commitment, so the defense's adversaries have nowhere to attach.
- The design does keep "recognition itself" outside the system, but the felt shift is a trace-level check, which is the level the design models.

**Functions it serves.**
- Function 2 (arrange the conditions for recognition).
- Function 3 (direct attention, leave meaning free): the check is the reader's own.
- Function 6 (show the author's crossing as an exemplar): the design's own test is "Did this pass through the author's own encounter?"
- Function 8 (offer a contract and keep it): the book states what it can and cannot verify.

**Expansion.** Add a candidate tenth Commitment, with its test and its standing, and a new relation, **a Locus contests a Commitment**. Record the readings that answer each contest as that Commitment's defense. The fork B3 goes into the Remainder until the author answers it.

**One real instance, in the expanded form.**
- Commitment (candidate): the felt shift certifies that a process carried forward, not that a content is true. This is Gendlin's narrowing: "'correctness' does not imply that a given set of symbols means what the felt referent alone means" (Gendlin 1964, fn. 9, `archive/reading — gendlin, a theory of personality change (1964).md`).
- Protects: functions 2, 3 and 6.
- Test: does the passage or practice produce a step that changes what can be said next ([[a genuine felt shift changes what can be said next]])?
- Standing: the author's decision of 2026-08-04, reopened by sounding B3.
- Contested by:
  - Nisbett and Wilson 1977, pp. 235–237 (read whole). They show change without any experience of change, and their account predicts that a later check is worse.
  - Schwitzgebel 2008, pp. 249–251 (read whole), which leads with emotional and bodily experience and refuses the refuge of the present tense.
  - Katz 1978 (unread for this question; evaluated only at survey depth) and Orne 1962 (unread, [S]).
- Defense: Gendlin's footnote 13 on four kinds of attention that are not focusing (read); Petitmengin 2013, trained introspection (unread).
- Remainder: "The vault holds two defenses of the felt shift against its fluent counterfeit, and this reading shows that they ask for opposite timings" (`archive/reading — nisbett and wilson, telling more than we can know (1977).md`).

### 2.2 What a thinker carries: load as a relation of six kinds

**What it is.** Every chair carries `load:`. The counts are precedent 17, independent-arrival 13, thesis-bearing 12, company 9, adversary 7, names-existing-practice 6 (`lineage-sort.sh`). The axis exists because "I think the 29 thinkers were the wrong lens all along" (the author, quoted in `notes/interlocutors.md`). A load is proposed by the grid and made by the author, and it "allocates reading and never ranks evidence."

**Why the design cannot hold it.**
- The design has one relation from a Locus to a Concern: it "illuminates."
- An adversary does not illuminate; it contests. A precedent is valued for what happened to it.
- A thinker who names an existing practice legitimizes a move the book already makes.
- The vault's single-valued field breaks on the same fact.
  - Vervaeke carries three functions (Fork 21 in the reconciliation register, the vault's list of 25 open disagreements from the reframe conversation).
  - Polanyi carries two.
  - Wilber's recommendation reads "thesis-bearing for the lattice on the claim note that carries it, precedent here."
  - Alexander exposes "the species of load the axis had no word for" — "Method-bearing is its own tier-1 species" (`notes/christopher alexander.md`).
- The load describes a thinker's bearing on a particular concern, and so it belongs on the relation rather than on the thinker.

**Functions it serves.**
- Function 5: keep company without collapsing it. Company must not be "mistaken for the argument."
- Function 7: the adversaries state what the frame hides.
- Allocating reading is apparatus work.

**Expansion.** Widen the relation to **a Locus bears on a Concern (or on a Commitment) as thesis, independent arrival, company, named practice, precedent, or adversary**. Record one relation row per thinker per concern. The axis's three rules stay attached: it allocates reading and never ranks evidence; the author makes the assignment; company is not a lesser standing.

**One real instance, in the expanded form.** Vervaeke as three rows:
1. Vervaeke → Meaning: thesis. Relevance realization is "the criterion of the cognitive" (the 2012 paper, Grade A). The extension to meaning belongs to Vervaeke and Ferraro 2013, which is unread.
2. Vervaeke → Participation: company, not independent arrival. He "roots participatory knowing in Heidegger (*Awakening* Ep 32)" (`archive/reading — the participation law's independent arrivals (...).md`).
3. Vervaeke → the aim of function 6: adversary edge, the wisdom test "Does this actually improve the agent's capacity to navigate reality?" (transcript line 2316, quoted in `notes/john vervaeke.md`).

Standing for all three: surfaced. The author has not yet settled Fork 21.

### 2.3 Descent and independence, stated as relations with a test

**What it is.**
- [[the apparatus descends from the settlement the book positions itself against]] names six kinds of descent: restatement, the originator's own correction, headless lineage, self-flagged debt, mis-addressed credit, half-traced genealogy.
- [[the convergence's independence fails where three of its names share one teacher]] applies the independence test.
- The Reinhard May record applies the both-ways-traffic test. It finds that the founding pairing "survives May's thesis intact," and it demotes one pairing to "influence-suspect."
- The facilitated-room record finds that Erhard and Lewin are "one shared channel, not two arrivals."
- By keyword search, 29 chairs discuss descent or lineage and 34 discuss independence.

**Why the design cannot hold it.** The design's Locus field is binary: the thinker arrived independently, or descends. It has no field for the kind of descent, the documented channel of contact, or which test was run and with what result, and it has no relation between one Locus and another.

**Functions it serves.**
- Function 5: "with their differences intact."
- Function 8: honest credit to the reader, the corpus's rule that "every elder [be] named on sight, on the page."
- Function 6.

**Expansion.** Add a relation, **a Locus descends from a Locus**, with three fields: kind (the six values), channel (the documented contact), and evidence (a page-level address). Add to Crossing a field, "independence: test run, result."

**Real instances, in the expanded form.**
- McLaren's grief ritual descends from Sobonfu Somé's Dagara rituals. Kind: self-flagged debt. Evidence: "With my husband Tino, I had the great good fortune to participate in a number of indigenous West African grief rituals with the late, great Sobonfu Somé" (karlamclaren.com, read 2026-09-02, `notes/karla mclaren.md`).
- The corpus's claim that grief needs a witness, credited to McLaren. Kind: mis-addressed credit. Evidence, her own sentence: "Your grief process can be undertaken individually, or in a community or family group."
- Hudson's muscular mechanism descends from Reich. Kind: headless lineage (a lineage whose head is never named). Evidence: the chair records that "the emotional repression is held in our muscles..." is "Reichian in substance and carries no attribution anywhere in the material," with "no Reich, Lowen, or Perls" named (`notes/joe hudson.md`).

### 2.4 Grades of evidence: how deep a source was actually read

**What it is.** The records carry grades such as "Grade **A**, paragraph numbers verified against Puhl's own markers" (the discrimination family). They record corrections forced by reading: nine records carry a "Corrections to the vault's wording" or "corrected in the vault" section. The Nisbett and Wilson record says: "The correction was available only by reading the paper." The records also state what is owed before quotation. The queue grades every entry's current evidence.

**Why the design cannot hold it.** Standing measures how far the author has taken something. Provenance gives an address. Neither says how deep the address was actually reached. In the design, a session's Grade A reading of Knysh at page 78 and a model's characterization from memory both sit at surfaced.

**Functions it serves.**
- Function 5: the company is quoted accurately.
- Function 8: the contract that nothing is quoted from memory.
- The future Passage: the manuscript needs copyright editions.

**Expansion.** Add a fifth shared field, **Grade**, orthogonal to Standing. It records the depth at which the content's own source was read, using the vault's values: A (primary, full text, page verified); B (reputable secondary quoting the primary with a page); web depth; corpus relay; from memory; grid characterization.

**One real instance.** al-Qushayrī's formula, "States are [divine] gifts, whereas stations are earnings."
- Grade A in English at Knysh 2007, p. 78.
- Grade B for the Arabic: "The Arabic of the formula stays at Grade B until a printed page is in hand" (`notes/al-qushayri.md`).
- Standing: surfaced, because the author has not met the text himself.

### 2.5 The Remainder as a worked queue: questions that can fail, and who can close them

**What it is.**
- The five properties of a sharp question.
- 94 numbered queue entries, each with Q, Stake, Address and Standing.
- The shelf, with 114 pending names.
- 47 "did not settle" sections.
- The worklist's split between readings, which a session can run, and soundings: "B. Soundings — questions only the author can answer."

**Why the design cannot hold it.** The design's Remainder is a list of open questions with a transcript line each. It has no field saying what would close a question (a reading, the author, a drafting session, an extraction from the corpus). It records no stake on each answer, no address, no inheritance and no grade. And it draws no line between surfaced names and work.

**Functions it serves.**
- Function 7: teach its own exit. The Remainder is the book's honest statement of what it has not seen.
- The design's own rhythm, which runs from a Locus to an Encounter.

**Expansion.** Give every Remainder entry these fields:
- the question, stated so it can fail;
- **closes by**: a reading, an author sounding, drafting, or extraction;
- the stake on each answer;
- an address;
- what it inherits;
- a grade.

Keep a separate shelf for surfaced candidates that are not yet questions.

**One real instance.** The design's Remainder row "whether saṅkoca can be read as a productive standpoint," in the expanded form:
- Question: does any classical Trika source read *saṅkoca* as productive?
- Closes by: a reading (worklist item A7), done 2026-09-02 at Grade A.
- Answer: "Kṣemarāja supplies the mechanism of the productive reading of contraction while withholding its commendation" (the Bhartṛhari and Kṣemarāja record).
- Stake met: the productive reading is the book's own.
- Inherits: the 2026-08-28 reading of the malas.
- What remains: sounding B1, "Whether his reflection carries the productive-locus revaluation." Only the author can close it.

### 2.6 Where a book gives a thinker voice: apparatus positions, and referral

**What it is.**
- The `seat:` enum: chapter patron (the epigraph), margin voices, reference lineage "hosted in the back matter," recommended reading, source tradition, and others.
- The roster of sixteen chapter patrons (`notes/interlocutors.md` line 257).
- The referral network. Walked IX says, "A somatic misfire wants Hudson, not Byron Katie" (quoted in `notes/joe hudson.md`).
- The author's seating decision of 2026-08-16.

**Why the design cannot hold it.** A Locus has no field for where a book voices it. Book has "how much of its own method it shows" but no apparatus field. Passage has a "candidate position." Sending a reader out of the book to a named teacher is not a relation in the design. The seat enum was built for one book; the design has two.

**Functions it serves.**
- Function 5: the corpus's rule that the company is named on the page.
- Function 7: referral out of the book is a concrete exit.
- Function 8: the contract says where to go when the book cannot help.
- Book I, which shows its score (the reasons behind each move, visible to the facilitator), against Book II, which keeps its method backstage.

**Expansion.** Add a relation, **a Book voices a Locus at a position** (epigraph, margin, body, back matter, reading list, referral), recorded once for each Book. Placement stays the author's act.

**One real instance.**
- Hudson → the corpus's single book at "referral."
- Evidence: "A somatic misfire wants Hudson, not Byron Katie" (walked IX).
- Book I position: not assigned. Book II position: not assigned.
- The author's seat: coaches (2026-08-16).

### 2.7 What a reader brings to a name, and what happened to earlier attempts

**What it is.**
- Heidegger's chair records his Nazi party membership, the Black Notebooks and the 1949 Bremen sentence, and seats "escorts" (Celan, Arendt, Adorno), at the author's instruction that these associations "are indeed a part of what will be a pretext to any erudite reader" (author statement, 2026-08-03, `notes/martin heidegger.md`).
- Erhard's chair: "the one figure in the book's company whose public reputation makes naming him a decision rather than a courtesy," with the est adverse-effects literature queued.
- The precedent bench records what happened to earlier attempts: Wilber's 2006 episode and "the colour hierarchy that became a status ladder among his readers"; Gurdjieff and Ouspensky as "the clearest record of how such a thing acquires authority dynamics its founder did not intend"; Csikszentmihalyi's flow, absorbed as a productivity term.
- The whole bench rests on [[the nearest prior attempts are case histories rather than interlocutors]], still at `state: privated`.
- Seventeen chairs carry the precedent load.

**Why the design cannot hold it.** A Locus is defined as a way of seeing, and its fields are all about knowing: what it discloses, obscures and declines. A thinker's public record, or the outcome of an earlier attempt at this book's project, is neither.

**Functions it serves.**
- Function 8: trust.
- Function 5.
- Book I's power concern: "The more powerful the facilitator becomes, the more important sovereignty becomes."
- Function 7.

**Expansion.** Add two Locus fields.
- **What a reader brings to this name**, with the other thinkers who stand as its witnesses.
- **What happened to it**, for precedents: the attempt, its outcome, the mechanism, and what each Book does against it.

**One real instance.** Heidegger.
- What a reader brings: the author's words above.
- Escorts: Celan (the Todtnauberg guestbook line), Arendt ("Martin Heidegger at Eighty"), Adorno (*The Jargon of Authenticity*).
- Caveat carried with it: the Bremen sentence and the guestbook line "have not been checked here against their published homes."
- Standing: the author asked for the record.

### 2.8 A tradition's own internal argument

**What it is.**
- The Ubuntu chair recommends reading Menkiti and Gyekye together "because the internal disagreement is the tradition arguing and is worth more than the position it argues about."
- Ratié's chair holds that the recognition school "earned its positions polemically and can argue back."
- Dōgen's relation to original-enlightenment thought "is contested inside his own tradition."

**Why the design cannot hold it.** The design's Locus reads as one standpoint. It has no field for the disagreements inside a tradition.

**Function it serves.** Function 5, and the design's Commitment "Difference is understood before likeness is claimed," applied inside a single Locus.

**Expansion.** Widen the Locus definition to allow **its internal disagreements**, each side quoted.

**Instance.** Ubuntu personhood.
- Menkiti: personhood is "achieved" through incorporation into a community.
- Gyekye: the individual has intrinsic standing, which community shapes rather than confers.
- Both readings are owed (the chair's own words).

### 2.9 Material that belongs to the vault's apparatus rather than to the books

**What it is.**
- The discipline-by-load grid printed by `lineage-sort.sh`, whose empty cells are "a reading question, not a verdict." One example: the poets-and-artists discipline is empty across all six loads, and Rilke carries no discipline at all.
- The shelf's 114 unworked names.
- The web-search trails in the three research records.
- The bookkeeping of seats and grades.

**Where it belongs.** None of this is content a drafting session would place in either book. It allocates the vault's reading. By the book-need rule it belongs in the apparatus. The design's evaluation test at transcript lines 12313–12315 should govern its size: reject "a more sophisticated database" that makes the author "less likely to sit down and encounter the material."

**One way it can still serve the books.** The discipline field can feed the Crossing's independence field. An arrival from "an empirical, a systems, a social-theory, and a contemplative road" counts for more than four arrivals from continental philosophy (`the-constellation.md`).

### Corrections to the design

**C1. The Lens field credits Wilber for a use that departs from him.**
- The design's Lens field, and its Locus row for Wilber, adopt "a coordinate system, rather than an ontology" (transcript 17834).
- The vault's reading of five Wilber texts on 2026-09-02 found that for Wilber the quadrants are ontological, "a 4-quadrant affair, all the way down" (Excerpt A, p. 33).
- It concludes that "the coordinate-system demotion is a departure from Wilber rather than a reading of him" (`notes/ken wilber.md`).
- His refusal is on record: "The Integral map is just a map... neither do we want to be working with an inaccurate or faulty map" (*AQAL Journal* 1(1), p. 2).
- The Lens field should credit the use to the books themselves and keep Wilber's refusal beside it.

**C2. Several Remainder entries are already closed or narrowed in the vault.**
- *How the Śaiva terms pair.* The author settled this on 2026-08-20: "saṅkoca (contraction) pairs with vikāsa (expansion) as the pulse's two phases, and vimarśa (reflexive awareness) is a distinct element held on its own relevance" (`ops/decisions.md`, row 124).
- *Whether saṅkoca can be read as productive.* Settled at the text: the tradition supplies the mechanism and withholds the commendation (2.5).
- *The text of the recognition fable* (transcript line 156: "that fable about the woman who meets her lover in his ar- always known her"). The vault holds the verse that names the recognition school at the primary Sanskrit. Utpaladeva, IPK IV.1.17: "Just like the beloved, who after much insistence finally stands in the presence of the maid in love, though he is there before her he does not give her any pleasure until she recognizes who he is" (Torella, p. 218; `archive/reading — the kashmir śaiva loci (...).md`). That this verse is the fable the author meant is **my inference**. Only he can confirm it.
- *How fully the books disclose the Śaiva underpinning.* The tension [[the tradition the book owes most has no chair in its company]] is at `status: treated`: "Kashmir Śaivism is named the book's deepest well" (the author, 2026-08-16, per `notes-index.md`).
- *The lineage between aletheia and Landmark, "answered only thinly."* The vault read Erhard and Jensen 2010: "footnote 4 says ontology is meant 'as it is explicated by Martin Heidegger (1927) in *Being and Time*,' and he quotes that book at page 33" (`notes/werner erhard.md`). Hyde and Kopp write, "Our goal—Heidegger's, Erhard's, the authors'—is the unconcealment of a powerful aspect of human being" (p. 5; `ops/reading queue.md`). So the caution in the design's Locus table, "a lot of scholars say those parallels are independent discoveries" (the model), is wrong on the Erhard side. His arrival descends from Heidegger, by page.
- *Where "nothing transforms because of the audience" comes from.* The vault attributes it to the atlas's seat for the speech-act lineage: "The lineage's one unanimous law: nothing transforms from the audience" (atlas §IX.3, quoted in `notes/nothing transforms from the audience.md`). This narrows the question and does not close it.

**C3. Vervaeke is company for participation, not an independent arrival.** The design lists him as a Locus whose findings the transcript treats as a witness. The reading of 2026-08-30 shows that he roots participatory knowing in Heidegger. It also locates the four kinds of knowing in Vervaeke and Ferraro 2013, not in the 2012 paper.

**C4. Book II's premise meets the company's one near-unanimous refusal.**
- The design gives Book II one characteristic danger: "another performance target" (14606).
- The vault's company says the work cannot be done alone: "roughly nineteen chairs with nothing else in common say *this cannot be done alone*" (`the-constellation.md`).
- The discrimination family's verdict is that "a book read alone can state the whole of the restraint and none of the discrimination."
- The readings narrow the refusal without removing it.
  - Hudson assigns his welcome as solitary practice.
  - McLaren's grief "can be undertaken individually."
  - Kapleau answers "By no means" to the question of practice without a teacher, but only as a way to "commence."
  - al-Qushayrī requires the shaykh for formation, not for reading one's own state.
- Book II's fields need this limit stated, as its exit and in its contract, and the Remainder needs it as an open fork.

**C5. A caution on the forebears' second question.** The design's second question, "What did they mistake for the whole?", runs against the stance recorded in the vault's law: "a thinker's refusal is kept so the thinker survives being cited" (`CLAUDE.md`). The vault asks, 46 times, what the thinker would refuse in the book. The design should hold its second question as the books' own reading, never as a verdict on the thinker, and always pair it with the thinker's refusal.

## 3. Unpopulated places

### 3.1 The company is not yet pointed at the two books

**What exists.**
- 1 of 64 chairs names Book I (`notes/martin buber.md`) and none names Book II.
- 2 of 47 records name Book I, the Buber and Rogers records.
- The Aristotle hits for "Book I" are *Physics* Book I, not the vault's Book I.
- 12 chairs mention facilitation and 1 mentions "two books."

**Evidence of absence.** I ran `rg -l 'Book I[^I]'`, `rg -l 'Book II'`, `rg -l -i 'facilitat'` and `rg -l -i 'two books'` over the chair list and over `archive/reading*`, and checked each hit in context.

**What would populate it.** A session can draft, for each of the twelve thesis-bearing chairs, a "Book I use / Book II use" line: which concern the thinker bears on, and whether the book shows the thinker or keeps them backstage. The author decides.

### 3.2 The facilitation-method lineage that Book I needs

**What exists.** The design's mechanism for function 3 cites Grove's Clean Language, in which "the facilitator can constrain the form of inquiry while remaining radically unconstrained about its content" (1709). The vault has:
- no chair for Grove, Heron and Reason, Roger Schwarz, Art of Hosting, Freire, hooks, Akomolafe or Mezirow;
- no chair for the author's own Authentic Relating and Circling lineage, which is a single roster line;
- one read facilitation text, Bohm's, with no chair.

The queue removed that lineage from its reading priorities because "Grove (Clean Language), Heron & Reason (co-operative inquiry), and Freire & hooks ground *no* current nascent note" (`archive/reading — bohm, on dialogue (1996).md`), so "a further facilitation-lineage pass would be collecting-without-admitting, not grounding" (`ops/reading queue.md`). That criterion is how many of the vault's own notes a reading would ground. The design's is what the books need. On this lineage the two diverge.

**Evidence of absence.** I checked whether a chair file exists for each name and counted mentions in notes and archive with `rg -l -i -w`. "Art of Hosting" has 0 hits in `notes/` and `archive/`. "Heron" has 0 hits in `notes/`. "Circling|Authentic Relating" has 12 notes and no chair. One queue entry exists, for bell hooks (proposed 2026-09-03).

**What would populate it.** Primary readings of Grove and of hooks's *Teaching to Transgress*, the latter already queued. The author's own lived practice would supply Encounters, which only he can write.

### 3.3 Crossings the author has made, and his durable perspectives

**What exists.** The rule that "The crossing is the author's" is already in place. So is a list of seven soundings, B1 to B7, none answered. Two records name the crossing they leave to him: Polanyi's (whether attending to one's own felt shift dissolves it) and Plato's (the *Theaetetus*'s drawing-out against the *Meno*'s recollection). The Henry chair records open ground: "the pairing is open territory directly adjacent to the author's own crossing." The crossover research found no predecessor "at the specific crossing the author occupies."

**Evidence of absence.** `rg -i 'crossing left to the author'` found 2 files. `rg -i "tested by him|the author tested"` found the one Kashmir Śaiva case (`ops/completed.md`:182). The durable-perspective note is `nascent`.

**What would populate it.** Only the author, by answering the soundings and by writing the note on a crossing. The vault's records have already set the crossings up.

### 3.4 Encounters beyond the one record, and the author's own note

**What exists.** One Encounter record. The author's other lived events reach this region only as named items inside other records: the Landmark Forum of 2017, the March 2026 retreat, the May 2026 facilitation event, and the 4am letter. His reflection of 2026-08-24 is quoted inside three reading records.

**Evidence of absence.** `find . -iname '*encounter*'` returns one archive record. `frontmatter-parse.sh` defines an "encounter —" kind requiring `date`, `participants` and `field`, and nothing else uses it.

**What would populate it.** A session could draft Encounter records from the provenance reconstructions, leaving the note field empty for the author. Only he can write the note.

### 3.5 What a tradition obscures, and the three questions put to each forebear

**What exists.** Three chairs state what their thinker obscures. None applies the design's three questions. The design's third question, what a thinker's work makes available, is partly answered by the load test ("what happens to the book without them") and by the transmission chairs' sections "What his medium contributes."

**Evidence of absence.** The two `rg` searches in 1d.

**What would populate it.** A session can draft these fields from the records already read. Their standing stays surfaced until the author takes them up.

### 3.6 Company for function 9 and for the ecology scale

**What exists.** Vervaeke's meaning-crisis diagnosis, read in part. The Dig V shelf is unread: Rosa, Han, Borgmann, Crawford, Maslach. The queue cites chair paths that do not exist, `notes/hartmut rosa.md`, `notes/martin orne.md`, `notes/willoughby britton.md` and `notes/j l moreno.md`, all as backtick paths, which `link-check.sh` does not test (it reported zero unresolved wiki links).

**Evidence of absence.** I checked each cited path with `[ -f ]`, and each named thinker for a chair file.

**What would populate it.** The queued primary readings, Tier 7 entries 76 to 80.

### 3.7 The verification standard's adversaries, still unread

**What exists.** "The adversary chamber reached zero primary reads" (`notes/interlocutors.md`). The six readings from Dig VI and Katz's reading remain undone.

**Evidence of absence.** Tier 1 entry 3 and Tier 7 entries 49 to 54 carry "[S]," "citation only," or "unverified."

**What would populate it.** Primary readings, which a session can run.

### 3.8 Figures from the traditions, and poets as a discipline

**What exists.** Figures are quoted inside records, and none is recorded as a Figure. The discipline value `poets-and-artists` is unused. Rilke, the first chapter patron, has no discipline. The letter-writers' bench (Seneca, Keats, Celan) is "queued, not evaluated" (`archive/research — generative pass background.md`).

**Evidence of absence.** `lineage-sort.sh` shows the poets-and-artists row empty under every load, and the Rilke chair's frontmatter has no discipline.

**What would populate it.** A drafting session can file the figures. The author is a poet, so whether poets belong in the company is his call.

### 3.9 The author's acts are recorded in three places that disagree

**What exists.**
- The author seated "Every evaluation that carries a recommendation" on 2026-08-16.
- 28 chairs record that seating and carry a seat value.
- 30 chairs still read `seat: candidate`, because their recommendations name a load ("Seat as thesis-bearing") or a reading ("Read X for Y") rather than a value in the seat list.
- The shelf marks no outcome with `[x]`.
- Two chairs contradict their own reading records (Polanyi; Aristotle on privation).

**Evidence of absence.** `candidate-seats.sh`, the `rg` searches for seating phrases, and the per-chair recommendation list.

**What would populate it.** A hygiene pass by a session, plus the author's choice of seat for the load-named recommendations. This matters for the design because Standing works only if the author's acts are recorded where the content lives.

## 4. The three findings that matter most

**First: the design's Locus already exists in this region, richer than designed. It is split across four places, sorted by a property that is really a relation, and not yet pointed at the two books.**
- Sixty-four chairs, 47 reading records, the standpoint families of `the-loci.md` and the convergence groups of `the-constellation.md` all do Locus work.
- Their fields match the design's closely. "What he would refuse" appears on 46 chairs and quoted own terms on 19. Page-level addresses are native. Independence and descent are tested.
- The design's "what it obscures" field appears on only 3 chairs, and its three forebear questions are never applied.
- The vault sorts the company by `load:`. The Vervaeke, Polanyi, Wilber and Alexander cases show that a load describes a thinker's bearing on one concern, so the design should carry it on the relation from a Locus to a Concern (2.2).
- Only Buber's chair names Book I, and no chair or record names Book II (3.1).
- The facilitation-method lineage that Book I needs most has no chairs. The vault's reading order, which counts how many of its own notes a reading would ground, set that lineage aside (3.2).

**Second: Crossings and Exits exist in quantity, but at the standing a session can give them. The author's own layer is thin and precisely listed.**
- The design found Crossing and Exit nearly empty in the transcript.
- This region holds crossings set up by sessions in the convergence groups, the "family" sections and the independence tests. It holds exits in every refusal a thinker keeps against the book.
- The vault's own rule already matches the design's: "a reading record assembles the material and names the crossing it leaves to the author; it never asserts that the correspondence holds" (`ops/methodology/the chain of understanding.md`).
- What the author has done himself is small: the core-thesis candidate, his test of the Kashmir Śaiva refusals, the ranking of three devices, and the pairing decision of 2026-08-20.
- Seven soundings wait on him (B1–B7). They are exactly the design's missing column, the author's note, already worded as questions.

**Third: the largest body the design cannot hold, and three corrections.**
- **What it cannot hold.** The verification standard, fixed by the author on 2026-08-04, heads the reading program, has a draft of its defense, and has adversaries read at page level. The design has no Commitment, field or relation for it (2.1). The design's Remainder also lacks the vault's grades, stakes and "closes by" (2.4, 2.5).
- **Correction: the reader who reads alone.** The design gives Book II no warning that the company nearly unanimously refuses solitary work. The vault's verdict is that "a book read alone can state the whole of the restraint and none of the discrimination" (C4).
- **Correction: Wilber's quadrants.** The Lens field credits Wilber for a use he refused (C1).
- **Correction: the Remainder.** Five Remainder entries are closed or narrowed in the vault, including the author's own decision on how the Śaiva terms pair. A sixth, the fable's text, is probably held at the primary text; confirming it is the author's (C2).