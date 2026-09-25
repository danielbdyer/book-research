# Region report: The relational field and the call and the answering (O2)

## 0. What I read

**The design, the law, and the brief.** I read `reframe-map-and-system-2026-09-25.md` in full (all 1,143 lines), with Parts V, VI, VII and X read closely; `CLAUDE.md` in full; and the brief in full.

**The region's core, read in full.**
- `notes/relational-field.md` (262 lines) and `notes/the call and the answering.md` (140 lines), the two topic maps.
- `drafts/the call and the answering — a surface to write from.md`, `drafts/brief — the first letter.md`, `drafts/draft — the first letter.md`.
- `ops/correspondence program.md` (58 lines) and `ops/second person ecology.md` (160 lines).
- `the-concerns.md`: its opening (lines 1–10), the relational-field section (lines 57–74), the call-and-answering section (lines 92–106), and the closing section (lines 107–115).

**Member notes read in full (28):** the field between two people does work; nothing transforms from the audience; the book is written to the relational field and enacted upon the author first; the book can only be auxiliary to a sovereign reader; one person's participation can make it more possible for another to belong to themselves; patriotism for oneself is the felt form of the auxiliary relation to a sovereign reader; patriotism for oneself is a relationship that returns each person more fully to their own life that Hegel and Winnicott each named; the book's native genre is the letter from a friend read alone; the correspondence vision was chosen and executed as a sent pilot letter; the solitary form stands against seven witnesses who hold a second person constitutive; seventeen chapters rest at madhyama; facilitation is stewardship of conditions; the facilitator disappears, success is increasing the other's capacity to facilitate themselves; the more powerful the facilitator becomes, the more important sovereignty becomes; a word at madhyama can be perfected forever a word at vaikhari can be answered; the poems end by naming the next act and leaving it undone; to be addressed as you is to be summoned into being as the one who can answer; the book occupies the second person with a polyphony of devices, none taking the whole register; the confessions is address to a thou that the reader overhears; writing for facilitators dissolves the authority double-bind; writing to facilitators turns the one-chair reading into training for the second chair; the author is the book's first audience member and that is where the promise starts; the book's only honest promise is conditional testimony; a witness kept as proof forecloses what it proves; the poems hold the one-chair question and its answered posture; the facilitated room has several independent roots and improv's distinction is theorizing play as craft; the ink that listens is the relational field at the scale of a page; the circle is the form in which the naked sentence gets met.

**Member notes read in part** (the statement layer, or the first 16–30 lines): the third entity's failure mode is withdrawal and its core skill is staying; grief cannot complete alone; transformation is enacted participation inside a held container; relationship can increase sovereignty rather than consume it; the book tends conditions for the reader's own facilitation of recognition rather than facilitating transformation; the book is the score not the performance; the fruit that falls is the word become deed; the book's doctrine of time restates a sentence the author's father told him; the deepest question is whether i can be deeply influenced without becoming dispossessed of myself (its substantiation). I characterized the remaining ~150 member notes through the shared index (`notes-index.md`) and targeted searches. Where a claim below rests on the index alone, I say so.

**Outside the region, opened to judge a fit:** `notes/Book I is grounded in what it builds toward, not in what it guards against.md` and `notes/the book's practices are facilitation moves scaled to one reader.md` (in full); `notes/the founding inversion restates the author's own sufficiency inheritance.md` (lines 1–20); `notes/the learning arc.md` (lines 1–60); `notes/tensions.md` (lines 84–96 and 137); `notes/interlocutors.md` (lines 245–256); `the-two-books.md` (lines 44–62, and line 80); `the-lenses.md` line 225; `the-conversation-catalog.md` line 48; `reframe-reconciliation-register-2026-08-13.md` lines 122–131; `reframe-deep-harvest-2026-08-20.md` line 33; `ops/orientation.md` lines 7–19; `ops/methodology/axiom register.md` lines 1–40; `ops/ecologies/the addressees.md` lines 1–25; `ops/clearing.md` (lines 23–25, 53, 64); `templates/claim-note.md` lines 1–55 and `templates/interlocutor.md` lines 1–60; the frontmatter of `archive/encounter — the reframe conversation (2026-08-13).md`; `provenance/provenance of the corpus round two.md` lines 88–150 and 262–282; `provenance/provenance of the corpus.md` lines 22–23 and 60–70; `provenance/provenance fourth addendum.md` lines 100–152; `reflections/on recognition (2026-08-24).md` lines 1–30; and these lines of `reframe-conversation-full-2026-08-13.md`: 205–222, 214, 767–775, 3704, 6275–6300, 15227, and the speaker header above each quotation I checked.

**Commands used for counts.** Region membership: `grep -l '^topics:.*relational-field' notes/*.md`, and the same for the other map. Category and state: a shell loop reading each member's frontmatter. The `sources:` counts (reframe citations, transcript line addresses, author statements): a Python YAML parse of each member's frontmatter. Map bodies: an awk count of bulleted entries under each heading of the two maps. Reconciliation: `scripts/queries/map-membership.sh` for both maps (0 missing each; 2 and 3 links to review). Settled questions: `scripts/queries/decided.sh` for "letter", "grammatical person", "which person", "Book I", "facilitator", "two books", "margins". Vault-wide category, seat and load counts: `grep -h '^category:' notes/*.md | sort | uniq -c`, and the same for `seat:` and `load:`. Deleted notes: `git log --diff-filter=D --name-only -- notes/` and `git show f1a4bb3^:<path>` (read-only). Transcript dates: a count of turn timestamps. Every other search is named where its result is used.

**Caveats.**
- The region is 186 notes: 136 declare relational-field, 58 declare the call and the answering, and 8 declare both. The shared index lists 183, because it missed three notes whose YAML uses single quotes (the circle, the ink that listens, the fruit that falls).
- The extracted corpus (`.corpus/`) is absent in this container and no PDF extractor is installed. What I report about the corpus therefore rests on the vault's own quotations of it.
- I kept temporary working lists in a scratchpad subfolder outside the repository and deleted them when the report was written.

**Terms.** A few vault terms recur below:
- A note's `state:` records how substantiated it is: *nascent* (stated, not yet substantiated by a reading), *privated* (complete except for one named missing piece), *full*.
- An *isomorph* is a note recording that two or more traditions reached the same structure.
- An interlocutor's *seat* is what a thinker does for the book. Its *load* is what the book's argument would lose without them.
- A *surface* is a writing-ready page in `drafts/` that assembles one concern for a drafting session.
- The *one-chair problem* is the vault's name for the fact that the book's deepest claim concerns two people while a book is read by one. The *second chair* is the proposed second reader or listener.
- *Re-nesting* is the vault's move of keeping an older, guarded-against concern as a guardrail beneath a newer positive statement.

## 1. Collation

**The region at a glance.**
- By category, the 186 notes are 121 `claim`, 24 `isomorph`, 18 `interlocutor`, 8 `structure`, 6 `image`, 4 `tension`, 3 `practice` and 2 `open-question`.
- By state, 72 are nascent, 25 privated and 41 full. 48 carry no state; most of these are older notes drawn from the corpus.
- 69 cite the reframe conversation (68 directly, 1 through another note). 59 cite nothing else, and all 59 are nascent.
- 15 cite an author statement, decision, direction or reflection by name.

The two maps sort the material into bodies of different origin.

`notes/relational-field.md` holds:
- a ground layer (4 notes);
- the corpus's Third Entity core, the claim that the field between two people does work neither can do alone (22);
- the field's mechanism (5);
- the participation law's independent witnesses (9);
- what the Gendlin reading added (5);
- the felt shift re-nested beneath the ground (3);
- the non-human field (2);
- the reframe layer (51), in six subsections: sovereignty 14, facilitation 15, the field turned inward 2, participation and delegation and the machine 13, the book's own participatory law 5, open questions 2;
- the transmission digs (14);
- the affirmative-way harvest of 2026-08-21 (21).

`notes/the call and the answering.md` holds:
- the ground (2);
- the corpus's speech and release doctrine, with the letter material (21);
- who the word is answerable to (3);
- pedagogy (3);
- the reframe's authority material (11);
- the transmission digs (7);
- the reader's answer as the writing's completion (12).

The relational-field map holds 137 bulleted entries, far past the vault's split line of roughly twenty-five, and it says so: "the enlarged list has passed the size at which the doctrine directs a map to divide" (`notes/relational-field.md`, line 253).

### 1a. Types

| Type | What in this region serves it | Where (paths, counts) | Fit | Notes |
|---|---|---|---|---|
| Concern | The two topic maps, each a concern gathered by theme with a worded gloss per entry, and their two sections in the concerns family | `notes/relational-field.md` (136 members); `notes/the call and the answering.md` (58 members); `the-concerns.md` lines 57–74 and 92–106; the call-and-answering surface in `drafts/` | With translation. A vault map holds one of the book's doctrines, which is larger than a design Concern. Relational-field spans at least six design Concerns (Relationship, Sovereignty, Power, Transformation, Participation, Technology). The call and the answering matches no design Concern (§2.2). | The vault's planned split of relational-field "along the sovereignty-versus-facilitation seam" (`ops/orientation.md`, line 17) moves toward the design's grain. Neither map records a stake, a per-concern Book II form, or a quadrant. |
| Pair | Claims whose titles state a distinction or a polarity | 67 titles match a pair pattern (`not`, `rather than`, `differs from`, `without`, `between`, `but`, `than`). Reading the list, about 61 are genuine pairs. Of the 67: 39 nascent, 11 privated, 9 full, 8 no state; 35 cite only the reframe | Native for the two terms. Native also for the collapses, in the polarities that name them: `sovereignty occupies the middle between everything happens to me and everything is my responsibility`; `the facilitator must become facilitable, permeability without loss of sovereignty`; `self-facilitation requires facilitating oneself without becoming controller or captive`. Partial for the design's "way in" and for the pair's own company | Several of the design's Book I pairs have no note (§3.4). |
| Practice | Three practice notes; the first letter's two instructions; chavruta's three pairs; the author's Authentic Relating moves, held only in `provenance/` | `the crisis triage collapses the diagnostic to body holding and contact`; `the affective practice completes a feeling's descent with consent between repression and venting`; `the book asks only for attention until it has given the reader something to act with`; `drafts/draft — the first letter.md` lines 23 and 27; `chavruta names three complementary pairs as the mechanism of paired study`; `provenance/provenance of the corpus round two.md` lines 118–123 | Partial. The letter's answering instruction fits natively. Its invitation is worded, its smallest form is one sentence, and its failure mode is named ("not 'did you feel something,' which invites the counterfeit"). Its standing is flagged: "Marked as a trial: this wording is the vault's inference, tested nowhere" (`drafts/brief — the first letter.md`, line 21) | No practice in the region opens a sovereignty, power, or technology pair. |
| Figure | Six image notes and one structure note on a figure's genealogy | `patriotism for oneself is the felt form of the auxiliary relation to a sovereign reader`; `the book is a tuning fork and the reader is the striking surface`; `the book is the score not the performance`; `the ink that listens...`; `the circle is the form...`; `the fruit that falls...`; `the gold thread is the rainbow thread re-owned` | Native with translation. `category: image` is the Figure type, and the vault's own verb is the design's relation: "The circle carries the facilitator's container" (`notes/the circle is the form in which the naked sentence gets met.md`). Origin is recorded in `sources:`. The risk field is partial: the patriotism note keeps the author's "despite the connotations of whatever patriotism might mean" | Three of the six are corpus image-system entries with no state; two are the model's formulations, held nascent and marked as the model's. |
| Encounter | About 12 notes whose substance is a dated, lived event of the author's (my enumeration: the 4am letter reading; the first love's letter; the February 2026 custody confession; the July 29 reader response; the pilot letter's sending; the vault-and-AI unmooring; the gold-thread seed; poems #7, #13, #14, #16; the father's sentence). There is one typed encounter record, for the reframe conversation, and more in `provenance/` | `the book's native genre is the letter from a friend read alone`; `one person's participation...`; `a witness kept as proof forecloses what it proves`; `seventeen chapters rest at madhyama`; `the correspondence vision was chosen and executed as a sent pilot letter`; `the vault-and-AI architecture had unmoored the author...`; `archive/encounter — the reframe conversation (2026-08-13).md` | Partial. The vault writes an encounter as a claim about what it shows. It does not write it as a record with when, where, conditions, the author's note, what changed and what remains. No note records a room the author facilitated (§3.1) | The 4am encounter's interpretive sentences are the AI collaborator's (Corrections, item 6). |
| Locus | 18 interlocutor notes (15 in relational-field, 3 in the call and the answering). Some thinkers were read at their primary texts but are held only inside claims (Levinas, Bakhtin, Austin, Plato, Laozi). Winnicott and Rogers have interlocutor notes outside the region's maps | `jessica benjamin`, `martin buber`, `karla mclaren`, `de jaegher and di paolo`, `michael polanyi`, `heinz von foerster`, `harold garfinkel`, `donald schon`, `keith johnstone`, `kurt lewin`, `salvador minuchin`, `ubuntu personhood`, `maturana and varela`, `viola spolin`, `victor turner` (relational-field); `the experiential learning cycle`, `werner erhard`, `wolfgang iser` (the call and the answering) | Native with translation. `load:` (independent-arrival, precedent, names-existing-practice, company, thesis-bearing, adversary) answers the design's "arrived independently or descends." The refusal each note keeps is the design's "what it would decline." `discipline:` is the design's locus-of-inquiry sense. `seat:` has no design field | `seat: facilitation` has 0 notes vault-wide; the design's facilitation Loci have none (§3.3). |
| Crossing | 24 isomorph notes; 4 tension notes; the second-person survey; the surface's company, each thinker kept with the point where they part from the book | Isomorphs: 5 full, 17 privated, 1 nascent, 1 no state. Examples: `transformation is enacted participation inside a held container`, `the relational vocabulary's ontology is buber's rather than benjamin's`; also `ops/second person ecology.md` | Partial. The vault supplies both halves of a correspondence and keeps the difference, which covers the design's fields up to "what survives." It never supplies the author's note, and this is by design: the surface stops "at the point the heading calls the crossing, where a document like this one stops and your own move begins" (`drafts/the call and the answering — a surface to write from.md`, line 39) | Every crossing in the region was assembled by a session. |
| Durable perspective | The author's own statements (15 notes cite one) and his poems (3 notes cite `poems`) | `the book is written to the relational field and enacted upon the author first` (2026-08-02); `the author is the book's first audience member...` (2026-08-05); `the book tends conditions...` (2026-08-14); `the book occupies the second person...` and `the book points at the external check...` (2026-08-16); `the poems hold the one-chair question and its answered posture` | Partial. The statements are present in the author's words, but no note records which crossings a statement survived. The surfaces leave the perspective blank: "So the durable perspective is not for this surface to state" (surface, line 43) | The vault's name "durable-perspective surface" means a drafting ground for the author's statement, not the statement. |
| Craft move | 0 notes with `category: craft` vault-wide; about 12 craft-shaped notes filed under other categories; three craft trials in the letter's brief | Examples: `a sentence built to be answered hands the reader the next move where one built to be believed closes over them`; `the book leaves its last word structurally vacant so the reader's own amen can be the act that finishes it`; `the poems end by naming the next act and leaving it undone`; `reflection that returns authorship differs from reflection that takes it`; `creating space is a condition, not an absence`; `the confessions is address to a thou that the reader overhears`; `drafts/brief — the first letter.md` lines 17–21 | Partial. The content exists, but the vault's own category for it is empty | Book I's moves made visible to the reader ("showing the score") have no note (§3.5). |
| Passage | One drafted Passage (the first letter, 1,012 words), its specification (the brief, 1,012 words), and one concern surface (2,956 words), which is a drafting ground rather than a Passage | `drafts/draft — the first letter.md`; `drafts/brief — the first letter.md`; `drafts/the call and the answering — a surface to write from.md` | Partial. The brief is native to the Passage fields (its Book, its position, what it realizes, the craft moves it uses). A session wrote the draft in the author's first person, "The author's to cut, entire," and the text actually sent is not in the vault | The draft uses room figures its own brief forbids (§3.9). |
| Book | Decision rows; the notes on Book I's authority and first reader; the correspondence form; the mirror table | `ops/decisions.md` (two books; Book I first; the locus cut primary with the audience cut layered on it; the two dramaturgies; person; margins; the external check); `Book I's authority comes from discernment and synthesis; Book II's from embodied realization`; `writing for facilitators dissolves the authority double-bind`; `the facilitator disappears...`; `ops/correspondence program.md`; `the-two-books.md` lines 44–62 | Native with translation, and more settled than the design. The locus of practice, the first reader and each book's dramaturgy are author decisions of 2026-08-16. The design lacks fields for form (genre), grammatical person, and an addressee distinct from the first reader (§2.1; Corrections, item 3) | The design's Book I contract sentences (1584, 17060) and ten steps (16818–16854) have no note: 0 hits for "bag of techniques", "I want to help", "What you discover here belongs to you". |

### 1b. Shared fields and registers

**Standing.** The vault has no field for how far the author has taken a piece of content.

Its `state:` field records how substantiated a claim is by reading, which is a different axis. A note can be `full` because a session read Laozi at the primary text while the author has never met the claim; `the helper's core verb is to let, to let learn and let be and let grow` is one. The design would call that surfaced.

The author's raising lives in four other places:
- `sources:` entries naming an author statement, decision, direction or reflection (15 notes);
- rows of `ops/decisions.md`;
- the `reflections/` folder;
- prose "Standing:" lines in note bodies (43 notes), of which 20 mark material as "model-elaborated" or as the model's words.

Translated into the design's ladder:
- the 59 reframe-only nascent notes are surfaced;
- the author-statement notes are encountered or believed;
- the decision rows are close to claimed;
- written (lives in a Passage) would be the dormant `supports:` field. No region note carries it (0), and its allowed values still name one book's chapters: "Values when used: ch1..ch17, part-i..part-v, front-matter, interlude-1, epilogue" (`templates/claim-note.md`).

Two frictions matter.

The vault sometimes uses the design's words in another sense. `the book's only honest promise is conditional testimony` says "Standing: inferred; the load-bearing premise (266) is the author's own words" of a derivation a session made. The design reserves "inferred" for the author's own act.

The vault also marks voice wrongly, or not at all, where it matters most:
- `being genuinely changed and remaining the author of what you become are one event, not a trade-off` says "the deepest-question anchor (6289) is the author's own". But lines 6289–6291 sit inside the model's cartography (the model's response begins at line 3373). The question's own note, `the deepest question is whether i can be deeply influenced without becoming dispossessed of myself`, marks the same material as "model-elaborated."
- `ops/second person ecology.md` (line 57) calls "Do not solve what the participant has not yet had the opportunity to encounter" "the author's own craft." That sentence sits inside a model response (transcript line 15227).
- None of the fifteen facilitation-craft notes says whose words it carries (§4, finding 1).

**Scale.** No note records the design's scale (self, relation, ecology). The triad exists as candidate material in two root files:
- "micro (self) / meso (relation) / macro (civilization, the horizon)" (`the-lenses.md`, line 225);
- "The two books occupy micro↔meso; the macro is the bounded horizon (the latent third book)" (`the-conversation-catalog.md`, line 48).

In the region, the triad is implicit in the relational-field map's sections: "The field turned inward" (self, 2 notes); the Third Entity core and the facilitation craft (relation); and "Participation, delegation, and the machine" (ecology, 13 notes).

The vault more often uses "scale" for another axis: the size of the unit a law is enacted at. 37 of the 186 notes use phrases such as "scaled to one reader" (11 occurrences), "at the scale of a page" (5), "at the scale of one sentence", "at the scale of one room", "at the scale of a book". §2.4 proposes holding both.

**Lens.** Nothing. A search for "quadrant" over the region's notes returned 0.

**Provenance.** Native and strong for the corpus and the primary readings. The schema requires every citation to carry a location, and the region's corpus anchors, page locators and reading records meet it. The reframe citations are weaker:
- Only 23 of the 69 notes that cite the conversation give a transcript line in `sources:`. The rest cite section labels from the model's architectures ("the facilitator's paradox", "§XCV Sovereign Intimacy", "Chapter 5 — What Is Sovereignty?").
- The vault dates the conversation 2026-08-13 in its citations. Every one of the transcript's 284 turn stamps reads 8/12/2026 (the first at 7:06:09 PM, the last at 11:15:15 PM), so the design's date is right.
- The provenance files mark voice: "Attribution convention: [D] marks your words from Human turns; [C] marks the AI’s words from Assistant turns" (`provenance/provenance of the corpus.md`, lines 22–23). The marks do not travel into the notes that quote them.

**Commitments.** The vault's analog is `ops/methodology/axiom register.md`. It holds seventeen reconciled axioms "as backstage orientations rather than propositions," each with the notes that already carry it. Of the design's nine commitments, six have a note in the region and one is a discipline of the vault's prose:
- recognition belongs to the reader: `the reader becomes author of what happens in their encounter with the text, not co-author of the text`;
- no standpoint is sovereign: `the book is one locus in an ecology of participation, not the sovereign source of the reader's recognition`;
- what is encountered may change the framework (thin): `a framework that teaches its own exit relates to authority differently than one seeking permanence`;
- the author is the first participant: `the author is the first participant and must undergo the transformation the book asks of the reader`, and the author's own stronger statement of 2026-08-02;
- structure serves encounter: `the system exists to help the author remain in relationship with the inquiry`;
- relationship can increase sovereignty: `relationship can increase sovereignty rather than consume it`, the transcript's "Axiom 12";
- difference before likeness: held as the surfaces' discipline of keeping where each thinker parts from the book.

"Form directs attention, and meaning stays free" has no note in its own terms, and the unranked poles lie mostly outside this region. The vault's register lacks the design's tests and its ties to the functions each commitment protects. The design lacks the register's record of where each axiom already lives.

**Remainder.** Rich, and more structured than the design's. The region holds:
- 4 tension notes, each with `status:` and a `treatment:` under trial: the seven witnesses (live); the author as first audience member (treated); the middle voice (treated); seventeen chapters at madhyamā (resolved 2026-08-16);
- 2 open-question notes;
- the two maps' "What remains" sections;
- the nine questions for the author in `ops/second person ecology.md` (S1–S9);
- the surface's three questions.

The vault adds a status and a treatment to each open item, which the design's Remainder lacks. It has also lost two items: the facilitation craft's two sharpest open questions were held as tension notes until the deletion of 2026-08-23 (§3.2).

### 1c. Relations

- **A Pair articulates a Concern.** Expressed by membership in `topics:` and by the map glosses, which say what a pair does for its concern. In `notes/relational-field.md`: "the three-register distinction that keeps the field's work from being mistaken for control, authorship, or knowledge that a person did not participate in."
- **A Locus illuminates a Concern.** Expressed richly in glosses that name what a thinker carries and where they refuse: "[[jessica benjamin]] — the clinical bearer of the between, ... with the master–slave refusal that lands on the facilitator's asymmetry rather than after it" (`notes/relational-field.md`, line 60). Also expressed in the concerns family's "Reveals / leaves open" lines.
- **A Crossing yields a Durable perspective or a Remainder entry.** The second half is expressed: a correspondence that will not close becomes a tension note (the seven witnesses). The first half is withheld on purpose, since the surfaces leave the yield to the author.
- **A Practice opens a Pair.** Barely expressed. The one instance is the crisis triage opening the floor of being held and in contact.
- **A Figure carries a Pair or a Concern.** Native, in the vault's own verb ("carries").
- **An Encounter grounds a Durable perspective.** Expressed in prose: the patriotism image is "the love the theorem was proven from."
- **A Craft move carries content onto the page.** Expressed once as an image ("the ink that listens is the relational field at the scale of a page") and in the letter brief's craft trials.
- **A Passage realizes content in one Book.** Native in the letter brief's section "The material, selected for this letter," which lists the notes the letter enacts "without stating."
- **A Book projects a Concern.** Expressed in the concerns family's "Enters:" lines ("the home of the book of the field between people — Book I in the reframe's split," `the-concerns.md`, line 71) and in the mirror table of `the-two-books.md`.
- **A Commitment protects a function.** Not expressed. The axiom register routes axioms by kind (orientation rather than proposition), not by the function they protect.

The vault also runs relations the design lacks:
- five directed relations between two states of one element across drafts; "carried unchanged into" is used in `the third entity's failure mode is withdrawal and its core skill is staying`;
- re-nesting, which keeps a guarded-against concern as a guardrail beneath a positive ground (§2.6);
- the shadow relation: `a witness kept as proof forecloses what it proves` is "The shadow of the book's witness doctrine";
- six relations of credit, under which grief's required witness is recorded as "a mis-address" (`grief cannot complete alone`).

### 1d. The vault's own structures that already do the design's work

1. **The concerns family sections and the design's Concern rows.** Each section of `the-concerns.md` gives:
   - the concern's finding (the design's Question);
   - "Reveals / leaves open" (disclosure plus Exit);
   - grouped "Attested" lists (Company and Pairs);
   - a "Nascent, grounding queued" list (standing by grounding);
   - an "Open edge" (Remainder);
   - "Enters:" (the Book projection).

   Its governing rule is the design's Exit column: "every concern names the refusal or the open fork that keeps it from overclaiming" (line 9). The family has per-member grounding flags and a freshness marker the design lacks. It lacks separate Book I and Book II forms, and any Practice, Encounter, Crossing or Durable perspective cell.
2. **The surfaces and a profile row rendered for drafting.** The call-and-answering surface has:
   - "The still center this drains to" (Question);
   - "The company that reached the same finding — and where each one parts from the book" (Locus and difference);
   - "The gap where the answer belongs — the crossing that is yours" (the Crossing's author's note, left blank, with three questions);
   - "What this surface cannot see" (Exit).

   It adds a prose assembly and a withdrawal that a grid cannot give. It lacks Book I and Book II forms and Pair and Practice cells.
3. **Map glosses and the design's relations stated in words.** Every entry in both maps carries a gloss written for that map (137 and 60 entries).
4. **Interlocutor `load:` and `discipline:` and the Locus fields**, as in 1a. `seat:` is the vault's own addition.
5. **`ops/methodology/axiom register.md` and the Commitments register**, as in 1b.
6. **The mirror table in `the-two-books.md` and the Book I and Book II columns.** It is the same transcript table (13854–13871) the design uses, ten concerns long. It has no rows for Power, Sufficiency, Form, Company or Recognition, which the design fills from other lines.
7. **The letter's brief and the Passage fields**, as in 1a.
8. **Decision rows and the Book fields.** The 2026-08-16 rows settle the locus of practice, the first reader and each book's dramaturgy. The 2026-08-08 row settles the person of the correspondence.
9. **Tension notes and the Remainder**, with statuses and treatments the design lacks.
10. **`ops/second person ecology.md` and a correlative Crossing on one question.** A correlative Crossing is the design's term for a synthesis an AI may surface. The survey's soundings are the questions only the author can answer.

### 1e. Profile-grid rows

P = present, T = thin, A = absent. "Address" is the vault's concern the call and the answering, which the design lacks (§2.2).

| Concern | Question | Book I | Book II | Pair | Practice | Encounter | Company | Crossing | Durable perspective | Exit |
|---|---|---|---|---|---|---|---|---|---|---|
| Relationship | P | P | T | P | T | P | P | T | P | P |
| Sovereignty | P | P | T | P | A | P | T | T | P | T |
| Power | A | P | A | T | A | A | T | A | A | T |
| Transformation | P | P | T | P | A | T | P | T | T | P |
| Participation | T | P | T | P | A | P | P | T | T | P |
| Technology | P | A | T | P | A | P | A | A | P | T |
| Authorship | T | P | T | P | T | P | P | T | P | P |
| Attention | A | T | A | A | A | A | T | A | A | A |
| Address | P | T | T | P | P | P | P | T | T | P |

**Relationship** ("How do I remain myself while genuinely allowing relationship to change me?", 18320).
- *Question P:* `the deepest question is whether i can be deeply influenced without becoming dispossessed of myself`, in the model's words (lines 6289–6291; see 1b).
- *Book I P:* the 15 facilitation-craft notes and the corpus's `the third entity's failure mode is withdrawal and its core skill is staying`.
- *Book II T:* the two notes under "The field turned inward" and `the deepest contact with your own inner life is first found alone in the presence of a non-impinging other`.
- *Pair P:* `sovereign intimacy names intimacy without surrender of authorship`, `intimacy is a tether rather than a binding`, `harmony is the joining of differences rather than a collapse into agreement`.
- *Practice T:* staying as the "core skill," the crisis triage, chavruta's pairs. The design's "Can I relate before I intervene?" (16298) and its repair sequence (16474) have 0 notes.
- *Encounter P:* the 4am letter, the first love's letter, the custody confession, poems #7 and #13.
- *Company P:* Buber, Benjamin, Winnicott, Levinas, Rogers, De Jaegher and Di Paolo, Gadamer, Abram and Kimmerer, the alliance meta-analysis.
- *Crossing T:* built by sessions (`the relational vocabulary's ontology is buber's rather than benjamin's`; the seven-witnesses tension with its four counter-instances). No relational-field surface exists.
- *Durable perspective P:* "The book itself becomes me writing to the Third Thing in order to enact its outcomes through and with and upon myself, and if it's helpful to others too, then it's helpful to others too" (author statement, 2026-08-02); "inspiring patriotism for oneself ... is exactly the source of what I'm looking to give back" (770); "opened-with - not an opened-by, or opened-into" (`reflections/on recognition (2026-08-24).md`).
- *Exit P:* the region's strongest column (§4, finding 3).

**Sovereignty** (7567).
- *Question P:* `the master question is the conditions under which a person remains the author of what they become while being genuinely changed`, the vault's declared still center (nascent).
- *Book I P:* `the more powerful the facilitator becomes, the more important sovereignty becomes`; `the other is not your project`; `the question is not how to avoid influence but how to influence without appropriating`.
- *Book II T:* `self-facilitation requires facilitating oneself without becoming controller or captive`; `sovereignty occupies the middle...`.
- *Pair P:* five sovereignty distinctions, all reframe-only and nascent.
- *Practice A:* none of the 9 practice notes vault-wide bears on it.
- *Encounter P:* the letter (770), and the letter's own words: "we each act as auxiliary for the other as we march through life with our own flags in hand" (quoted in `the book can only be auxiliary to a sovereign reader`).
- *Company T:* Winnicott 1958 is read; Hegel is "inference, grounding owed"; Rogers is read at Condition 4 (`you come to trust your own valuing because another first received it without overruling it`, privated).
- *Crossing T:* `patriotism for oneself is a relationship that returns each person more fully to their own life that Hegel and Winnicott each named` (privated, built by a session).
- *Durable perspective P:* 770; the author's locus-of-control motif (`the locus of control is better named the locus of inquiry`).
- *Exit T:* the auxiliary note records the Trika's teaching of grace (śaktipāta) against its claim that "whatever transforms, the reader did it". The Freire critique was deleted (§3.2).

**Power** ("When does facilitation become another form of colonization despite intending to liberate?", 1801).
- *Question A:* the design's question lived as a tension note until commit f1a4bb3 (2026-08-23) deleted it. No current note holds it; `rg -i 'despite intending|another form of colonization|1801' notes/` returned 0.
- *Book I P:* the facilitator's paradox; `technique without ontology becomes manipulation`; Moreno's director as someone who inserts content (`the facilitated room has several independent roots...`); Johnstone, "carrying status material the book has no equivalent for" (`notes/relational-field.md`, line 73).
- *Book II A.*
- *Pair T:* influence without appropriation; reflection that returns authorship. The design's pairs invitation/direction, emergence/compliance, guided attention/dictated interpretation, and expertise about process/expertise about the person have 0 notes.
- *Practice A.*
- *Encounter A:* no dated room.
- *Company T:* Freire and hooks "are unread and unseated" (`ops/second person ecology.md`, line 78); Benjamin's and Levinas's asymmetries.
- *Crossing A.*
- *Durable perspective A:* the author's statements at lines 244 and 214 have 0 notes (§3.4).
- *Exit T.*

**Transformation** (15041).
- *Question P:* `the facilitator tends conditions under which recognition might occur rather than transmitting a destination`.
- *Book I P:* `facilitation is stewardship of conditions`; `the book tends conditions for the reader's own facilitation of recognition rather than facilitating transformation` (full).
- *Book II T:* only outside the region.
- *Pair P:* conditions against outcomes; `an interaction can trigger a change in a living system but cannot specify it` (full).
- *Practice A.*
- *Encounter T:* `the author is the book's first audience member...` names his own therapy and integration, undated.
- *Company P:* Maturana and Varela, Moreno, Lewin, the alliance meta-analysis.
- *Crossing T:* the six-lineage law, counted once and marked a selection artifact.
- *Durable perspective T:* "It is two steps back from the outcome" (author direction, 2026-08-14).
- *Exit P:* `the book must respect that it cannot verify the reader has done the work`; `the book's only honest promise is conditional testimony`.

**Participation** (12652).
- *Question T:* held as a law rather than a question (`nothing transforms from the audience`).
- *Book I P:* `facilitation is a technology of relationship whose success is increased capacity for participation, not efficient production of an output`.
- *Book II T.*
- *Pair P:* `information about an experience is not participation in the experience`; `the value of participation lies not in the output but in what it does to the participant`.
- *Practice A.*
- *Encounter P:* the 2017 Landmark room (through a linked note outside the region); the unmooring (810).
- *Company P:* the region's best-grounded column. Polanyi, von Foerster, Garfinkel, Schön and Johnstone reached the finding independently; Moreno; Lewin; 295 studies of the working alliance.
- *Crossing T.*
- *Durable perspective T:* "that's my book" (934) has 0 notes.
- *Exit P:* `indirect communication is built to isolate the individual, so a participatory book cannot borrow its devices and reverse their purpose`; `a solitary reader can run every guard that declines to evaluate and none that discriminates`.

**Technology** (18594).
- *Question P:* an open-question note in the design's own wording.
- *Book I A.*
- *Book II T:* `the same technology can amplify sovereignty or erode it depending on the locus from which it is used`.
- *Pair P:* four delegation distinctions.
- *Practice A:* "What am I delegating?" (16567) has 0 notes.
- *Encounter P:* `the vault-and-AI architecture had unmoored the author...` (810).
- *Company A:* all 13 notes in that section cite only the reframe.
- *Crossing A.*
- *Durable perspective P:* 810, and 820 in `delegating production differs from delegating exploration, so each step should require fresh meaning-making`.
- *Exit T.*

**Authorship** (17018).
- *Question T.*
- *Book I P:* `the other is not your project`; `the facilitator can supply meaning where the participant might have discovered it...`.
- *Book II T.*
- *Pair P:* `the reader becomes author of what happens in their encounter with the text, not co-author of the text`; `a vocabulary can assist recognition but cannot own it`.
- *Practice T:* the letter's answering instruction.
- *Encounter P:* 810; the 2026-08-05 statement.
- *Company P:* Bakhtin, Austin and Levinas, read 2026-08-28; Iser a candidate.
- *Crossing T.*
- *Durable perspective P:* 820; 2026-08-02.
- *Exit P:* `writing without authority renounces the teacher's office and with it the power to correct a misreading`.

**Attention** (16180).
- *Book I T:* `attention is contagious, making it one of the facilitator's most powerful interventions`. These are the model's words: the phrase first appears at line 15534, inside a model response.
- *Company T:* Spolin's shared point of concentration (`viola spolin`).
- Every other cell is absent in this region.

**Address — the call and the answering.**
- *Question P:* "an unspoken word can be revised forever, and a spoken word can be answered" (the map's description).
- *Book I T:* `Book I's authority comes from discernment and synthesis...`; `writing for facilitators dissolves the authority double-bind`. The surface puts Book I's form to the author as a question.
- *Book II T:* `naming aloud is part of what is happening rather than a report about it`.
- *Pair P:* madhyamā against vaikharī (the unspoken, revisable sentence against the spoken, answerable one); the sentence built to be believed against the one built to be answered; audience against correspondent; declaration against disclosure.
- *Practice P:* the letter's pause and answering instruction; naming aloud; the affective practice.
- *Encounter P:* the 4am event; the sent pilot letter; the July 29 reader response; the endings of poems #14 and #16.
- *Company P:* Bhartṛhari and Abhinavagupta (read 2026-09-02), Bakhtin, Austin, Levinas, Buber, Augustine, Keats, Celan, Seneca.
- *Crossing T:* scaffolded; the author's note is blank.
- *Durable perspective T:* only the poems' endings.
- *Exit P:* the surface's "What this surface cannot see."

## 2. Beyond the system

### 2.1 The letter as the books' form and as a deed

**What it is.** The vault holds the letter in four roles at once:
- **An Encounter:** the one confirmed sighting of the book's promised event, reading a decade-old letter alone at 4am on 1 July 2026.
- **A Figure, twice over:** patriotism for oneself and the gold thread. In the vault's words, "two of the book's load-bearing figures descend from the same friendship" (`notes/patriotism for oneself is the felt form of the auxiliary relation to a sovereign reader.md`).
- **The Book's form:** the author picked the correspondence (twelve to twenty dated letters) on 2026-08-08, and closed the person to "I addressing you" for it.
- **A Passage that was sent:** the pilot letter went out before 2026-08-14, reconciled on his word on 2026-08-16.

Eleven notes carry it: the native-genre note, the correspondence note, seventeen chapters, the madhyamā note, ripeness, the fruit that falls, the whole arc drafted once, the poems' endings, the correspondent note, the vacant last word, and the reply as the final movement. So do `ops/correspondence program.md`, the letter's brief and draft, and three decision rows. The form's own rule: "Between letters the reader is asked to answer before going on, because a letter never answered has failed as a letter" (`ops/correspondence program.md`, line 19).

**Why the design cannot hold it.**
- The design holds the letter only as the aim's source: a Figure row ("patriotism for oneself, from a first love's letter | 770") and the aim sentence of Part X.
- The Book type has no field for form or grammatical person, though the vault records both as live questions: "Book I's form and grammatical person are open questions" (`ops/correspondence program.md`, line 11).
- The standing ladder stops at written. This whole concern is about the step after it: a word is not a deed until it is sent, and not complete until it is answered.
- No relation holds sending or answering.
- The Passage type presumes the author's voice, while the one Passage that was sent exists in the vault only as a session's draft.

**Function served.**
- Function 8 (offer a contract and keep it). The draft states the contract: "What I can promise is smaller and I can keep it: I will not tell you anything I did not walk, I will date every letter so you can see what I knew when, and I will never claim to know your life better than you do" (`drafts/draft — the first letter.md`, line 29).
- Function 1 (meet the reader in their sufficiency). The letter opens "You already went."
- Function 7 (teach its own exit). The program names where its bet fails: "the form bets that address can do the work of witness" (line 21).
- The manuscript itself.

**Proposed expansion.**
- Add two Book fields: *form* (letter, correspondence, essay, or open) and *person of address* (I to you, we, overheard address).
- Add a seventh standing level after written, *sent*: the author's act of releasing a Passage to one or more real readers, with date and recipients at the specificity the record supplies.
- Add a companion record, *answered*: a reader's reply, held as that reader's encounter and admitted only if the author wants it held.
- Add a relation: *a Passage is sent to a reader, and a reader's answer completes it*.
- Add one Passage field, *hand*: who drafted it (the author, or a session writing in the author's voice).

**Instance, written in the expanded form.**
> **Passage: the first letter** (`drafts/draft — the first letter.md`).
> - *Book:* the correspondence form, banked for Book II by the program's 2026-08-16 note; Book I's form is open.
> - *Candidate position:* the opening letter.
> - *Realizes:* address (the call and the answering); the sovereign reader; the reader premise ("You already went").
> - *Craft moves:* plant the standard before naming it; hooks at the opening and rest at the close; the answering instruction with its verification condition.
> - *Form:* letter.
> - *Person of address:* I addressing you (decision, 2026-08-08, scoped to the correspondence).
> - *Hand:* a session; "The author's to cut, entire."
> - *Standing:* sent, before 2026-08-14. Recipients and date not recorded; the sent text is not held.
> - *Answered:* no reply recorded ("checked 2026-09-03"); the author's question S5 is open.

### 2.2 The reader addressed as "you": address as a concern

**What it is.** The call-and-answering map (58 notes) and its surface (2,956 words) hold a concern the design has no row for: what makes a word answerable rather than obeyed, and what sending does to it. It includes:
- the corpus's speech doctrine, now read at its source: Bhartṛhari's levels of speech, and Abhinavagupta's clause that the descent to the spoken word loses nothing (read 2026-09-02);
- the grammatical second person: `to be addressed as you is to be summoned into being as the one who can answer`; `the confessions is address to a thou that the reader overhears`; `the book occupies the second person with a polyphony of devices, none taking the whole register`;
- the reader's reply as the writing's completion (12 notes, 2026-08-21).

The map calls it "the vault's most drafting-ready concern" (line 135). The vault counts its own gap: "The vault holds fifteen notes on address and never sorts the addressees by what each is asked to do" (`ops/ecologies/the addressees.md`, line 9).

**Why the design cannot hold it.** The design's fifteen concerns come from the transcript, and the transcript does not carry the speech doctrine. Pieces of the concern scatter across the design's Authorship, Form and Meaning rows, but none holds its question, and the Book type has no place for address.

**Function served.** Functions 1, 3 and 8, and each book's ending move: a last line written so that it can be answered.

**Proposed expansion.** Add a sixteenth Concern, *Address*, plus the Book field *person of address* from 2.1. "Address" is a plain candidate name; the author chose "the call and the answering" on 2026-08-24 (`ops/goals.md`, thread 22).

**Instance.**
> **Concern: Address (the vault's name: the call and the answering).**
> - *Question:* What makes a word answerable rather than obeyed, and what does it become once it is sent?
> - *Stake:* whether the reader stays the author of what they do with the word, and whether the manuscript is ever spoken.
> - *Book I form:* the facilitator's word offered to be answered (`reflection that returns authorship differs from reflection that takes it`; the design's "I wonder if..." move).
> - *Book II form:* the practitioner's own sentence, said rather than perfected (`naming aloud is part of what is happening rather than a report about it`; the letter's "something I can say now, that I could not have said an hour ago, is —").
> - *Exit:* a text cannot know what its participation did (Iser's boundary); renouncing authority also renounces "the power to correct a misreading"; fluent address can manufacture the feeling of being addressed (`presence-language may radiate significance the sentence has not earned`).

### 2.3 The second person as a set of jobs, which is Book I's inventory of the facilitator's roles

**What it is.** `ops/second person ecology.md` sorts "roughly seventy instances" of second persons, drawn from the traditions, the clinic, the corpus and the author's record, by job:
- the eight it began with: former, gatekeeper, certifier, receiver, interpolator, enforcer, answerer, companion;
- four the survey added: the giver, the summoner, the survivor, and the arrangement that is not a person.

For each job it records whether it opens a recognition or acts on one, what medium can carry it, and its empty cells.

Seven notes carry the underlying tension and its evidence:
- the seven-witnesses tension;
- `a solitary reader can run every guard that declines to evaluate and none that discriminates`;
- `the second chair is the verification standard's own requirement`;
- `the relational field supplies the correction that solitary introspection lacks`;
- `writing to facilitators turns the one-chair reading into training for the second chair`;
- `the book occupies the second person...`;
- `the book points at the external check it cannot administer, the finger rather than the moon`.

The survey's sharpest sentence: "The book kept the receiver and discarded the certifier, the gatekeeper, and the former from every tradition it honours. That is a design decision the vault has not recorded as one; that it is a decision rather than an omission is inference" (line 55).

**Why the design cannot hold it.** Nothing in the design types what a second party does. The Encounter's "who" names a person, and the Practice's scale (alone, with another, in a group) says how many. Neither can say that a receiver opens and a certifier judges, or that a text can carry a companion but not a certifier. The Book type cannot record which roles a book supplies and which it declines, although the corpus states one: "The book will not give you one" (`abridged` p. 9, quoted at `ops/second person ecology.md`, line 55).

**Function served.**
- Book I directly: these are the jobs a facilitator can occupy, each with its failure mode. The survey gathers five unrelated sources refusing one failure, the second person "supplying content the person had not yet reached" (line 57).
- Function 7: which roles a book cannot carry is part of its exit.
- Function 8: which roles it declines belongs in its contract.

**Proposed expansion.** A new type, *Role*: a job a second party does in someone's inner work.
- Fields: the job; whether it opens or acts on an opening; whether it evaluates; what can carry it (a present nervous system, a responder, a text, a world, an object, a memory); its failure mode; its instances by Locus; its Book I form (a facilitator's job); its Book II form (what the book or the reader's inner facilitator can hold).
- Relations: *a Role is filled in an Encounter*; *a Book supplies or declines a Role*; *a Locus names a Role*.
- If a new type is more than the books need, the smaller change is two Book fields, *roles supplied* and *roles declined*, and a Role cell on the Power concern.

**Instance.**
> **Role: the receiver.**
> - *Job:* takes a person's own valuing without overruling it.
> - *Opens:* yes, in Gendlin 1964 (fn. 13), Rogers 1957, Winnicott 1958, and the book's catalyst formula.
> - *Evaluates:* no.
> - *Carried by:* a responder, not necessarily a body. The working alliance holds at r = .275 across 23 samples of written, mediated therapy, against r = .278 face to face, with someone always reading and answering.
> - *Failure mode:* "Do not solve what the participant has not yet had the opportunity to encounter." These are the model's words at transcript line 15227, which the survey calls "the author's own craft."
> - *Book I:* the facilitator's central job.
> - *Book II:* declined by the book in its own words.
> - *Standing:* surfaced (a session's survey, 2026-09-03). The author's question S9 asks whether keeping it was a decision.

### 2.4 The scale of the form

**What it is.** 37 of the region's 186 notes place a law at the size of a unit: a sentence, a page, a poem, a letter, a room, a session, a book, a sending. I counted these by searching the notes for "at the scale of," "scaled to," and "at … scale." The vault records that the atlas applies the madhyamā distinction "at three scales at once — the book, the ask, and the sentence" (`a word at madhyama can be perfected forever a word at vaikhari can be answered`).

**Why the design cannot hold it.** The design's Scale field records who participates (self, relation, ecology). Its table "One shape at four scales" concerns the system's rhythm, not the made thing.

**Function served.** Craft moves and Passages. A drafting session needs to know that the answerable-ending law applies alike to a sentence, a letter, and a book's last line.

**Proposed expansion.** Split Scale into *scale of participation* (self, relation, ecology) and *scale of form* (sentence, page, letter or chapter, room or session, book, sending).

**Instance.**
> `naming aloud is part of what is happening rather than a report about it`.
> - *Scale of participation:* relation.
> - *Scale of form:* room or session.
> - The same law at sentence, letter and book scale: `a word at madhyama can be perfected forever a word at vaikhari can be answered`; `the poems end by naming the next act and leaving it undone`.

### 2.5 The more-than-human partner

**What it is.**
- The map's "non-human field" (2 notes): `buber's tree extends the i-thou relation past the human` and `abram's more-than-human makes the animate world a participant in the inner life`, both read at their sources on 2026-08-10.
- The clearing register's entry.
- The author's own record. The survey finds that if "recognition is already a with," the poems' with "is a sky (#10), a bird's downward gaze (#5), two cats (#8), and a friend on her own journey (#8)" (`ops/second person ecology.md`, line 71).

**Why the design cannot hold it.** Its relation scale asks "How do we participate together?" The clearing register names the premise the design shares: "the relational field is human recognition" (`ops/clearing.md`, line 25).

**Function served.** Functions 4 and 7, and the author's candidate treatment of the one-chair tension.

**Proposed expansion.** Widen the relation scale to any partner, human or not, and add *partner kind* (person, creature, place, object, text) to the Encounter's "who."

**Instance.**
> **Encounter.** The author's words, as `ops/clearing.md` line 53 quotes them from "the loving-again passage": "with my two cats watching me curiously, sitting in the grass with me."
> - *Scale of participation:* relation.
> - *Partner kind:* creature.
> - *Touches:* Relationship; the companion role; the seven-witnesses tension.

### 2.6 The ground-and-guardrail relation

**What it is.** The author's direction of 2026-08-14 re-grounds Book I and the reframe material, with a standing rule: "state the new ground first, then show the old concern nested within it" (`notes/Book I is grounded in what it builds toward, not in what it guards against.md`). Both maps now open with "## The ground" (4 and 2 notes), and keep the one-chair wound beneath it ("The felt shift and the second chair, re-nested beneath the ground," 3 notes). The affirmative-way harvest (21 notes) states the field doctrine positively, from the helper's side and from the meeting's.

**Why the design cannot hold it.** The design sees the same problem, the late architectures' tilt toward restraint, and counts it: 61 of the 146 axiom statements (42 percent) are restraints. It has no relation that keeps a restraint while subordinating it to what the book builds toward.

**Function served.** The aim (the ninth commitment), and function 7: the exit stays stated, nested under what the book is for.

**Proposed expansion.** A relation, *an Exit is held beneath a Concern's positive statement as a guardrail*, with the rule that the positive statement leads.

**Instance.**
> - *Ground:* `the book tends conditions for the reader's own facilitation of recognition rather than facilitating transformation` (author direction, 2026-08-14).
> - *Guardrail held beneath it:* the one-chair wound (`the solitary form stands against seven witnesses who hold a second person constitutive`, live).
> - *Linking note:* `writing to facilitators turns the one-chair reading into training for the second chair`, which "re-nests the book's structural wound rather than dissolving it."

### 2.7 Material that serves the vault's apparatus rather than the books

**What it is.** Two relational-field notes are about the vault itself: `the system exists to help the author remain in relationship with the inquiry` and `the vault-and-AI architecture had unmoored the author from the practice of experiencing the book — a delegated practice that doesn't scratch the itch`. Both also sit in the methods map. `ops/correspondence program.md` is a project plan.

**Where it belongs.**
- The first note is a condition on the system (the design's fifth principle and eighth commitment), not a claim of the books. By the book-need rule it belongs in `ops/methodology/`.
- The second passes the rule. It is the author's own encounter for the Technology concern (810), and it stays.
- The correspondence program is apparatus serving function 8, and it belongs where it is.

**Instance.**
> **Commitment (the system):** "Structure serves encounter."
> - *Held in the vault at:* `the system exists to help the author remain in relationship with the inquiry` (proposed route: `ops/methodology/`).
> - *Test:* "Is maintaining this more interesting than using it?"

### Corrections to the design

1. **The aim sentence is the model's.** Part X states the aim as "My participation with you makes it more possible for you to belong to yourself" (3704). Line 3704 sits inside a model response (the cartography, whose response header is at line 3373). The vault already grades it: the sentence is "the model's articulation rather than the author's own words," and "This formulation is held as a candidate" (`notes/patriotism for oneself is the felt form of the auxiliary relation to a sovereign reader.md`). The author's own words are at 770. The vault also holds the letter's own wording, which the design never had: "we each act as auxiliary for the other as we march through life with our own flags in hand" (quoted in `notes/the book can only be auxiliary to a sovereign reader.md`). The aim should rest on 770 and the letter, with 3704 held as surfaced.
2. **The letter is a form and a deed, not only a figure.** See 2.1.
3. **"First reader" cannot hold the book's addressee.** The author names an addressee that is not a reader: "The book itself becomes me writing to the Third Thing in order to enact its outcomes through and with and upon myself" (author statement, 2026-08-02, in `notes/the book is written to the relational field and enacted upon the author first.md`). The Book type needs *addressee* as a field separate from first reader.
4. **Book II's dramaturgy.** The design gives Book II the four movements ending in stewardship of the self, and never mentions the psychedelic arc (0 hits for "psychedelic" in the design). The author allocated the psychedelic arc to Book II on 2026-08-16: "The reframe's four movements ... become Book I's dramaturgy, and the psychedelic arc ... becomes Book II's" (`ops/decisions.md`, via `decided.sh`). This lies outside my region's core; I flag it for the O4 reader.
5. **The relation scale presumes human partners.** See 2.5.
6. **An Encounter's note is not always the author's.**
   - The 4am encounter's central sentence is marked as the AI's in its source: "the sentence that belongs at the center of this whole addendum: [C] “The recognition didn’t require the mirror.”" (`provenance/provenance fourth addendum.md`, lines 143–145). So is "You didn’t manufacture worthiness" (lines 142–143).
   - Outside `provenance/`, 11 files quote the sentence (4 notes and 7 other files). None marks it as the AI's, and the seven-witnesses tension note and `ops/scaffold.md` introduce it as coming "from the primary layer."
   - The design's Encounter note ("This is what I currently notice about what happened") presumes the author's voice. The standing ladder must apply inside an Encounter: the event is encountered, but its interpretive note stays surfaced until the author states his own.
7. **On the date, the design corrects the vault.** The vault dates the reframe conversation 2026-08-13 in its citations, and its archive record says the dialogue "closed the morning of 2026-08-13". All 284 turn stamps read 8/12/2026, the last at 11:15:15 PM.

## 3. Unpopulated places

### 3.1 Book I's cases from facilitated rooms (Encounter)

**What exists.**
- Nothing in `notes/` records a room the author facilitated.
- One roster sentence names one: "an event of roughly thirty-five people in May 2026, run from a script of five agreements, trio rotations with a witness role, and a closing circle" (`notes/interlocutors.md`, line 249).
- The provenance layer holds more:
  - the 16 May 2026 Sunday Assembly event, and the prompt he swapped in: “Think of someone who loves you. Describe how they see you.” (`provenance/provenance of the corpus round two.md`, lines 99–100);
  - a 12 March 2026 triad design;
  - the pre-Seattle Houston community, "whose details (name, city, duration, cadence) are not in the searchable record."
- The corpus itself names the gap: [C] “the missing room is not exotic. It’s your own workshop.” (`provenance/provenance of the corpus.md`, line 67).
- The one room the vault's notes hold, in 2017, was the Landmark Forum, where he was a participant.

**Evidence of absence.** I searched `notes/`, `archive/`, `reflections/`, `drafts/` and `ops/` for "houston", "circling", "authentic relating", "2017", "in a room", "facilitated (a|the) (room|session|group|workshop)", "thirty-five", "five agreements", "trio rotation", "closing circle", "may 2026", and the prompt's text. The prompt appears only in `provenance/`, and the event only in the roster line.

**Who can populate.** Only the author can supply his rooms and his note on each. A session can draw the provenance material into Encounter records under the three personal-provenance conditions. The prompt he chose that night is the letter's relation turned into a facilitation move, which he may want to see beside the aim.

### 3.2 The Power concern: its question, Book II form, practice, encounter and crossing

**What exists.**
- Book I's facilitator's-paradox and non-appropriation notes, in the model's words.
- The design's Power question was held as a tension note, `the sovereign reader's individualism may evade the question of power`. Its description read: "The book borrows the word colonize from a politics of liberation but applies it to a reader's inner experience, so its sovereignty doctrine may sidestep Freire's structural question of who holds power to name reality" (read at commit f1a4bb3^).
- The facilitation craft's one tension was also a note: `clean language is either a practicable non-appropriation method or a scripted technique`.
- Commit f1a4bb3 deleted both on 2026-08-23.
- Three current surfaces still refer to them as standing tensions:
  - `notes/relational-field.md`, lines 253 and 257 ("the Clean Language tension");
  - `the-concerns.md`, line 70;
  - `notes/tensions.md`, line 137 ("Freire's self-interrogation of the sovereignty doctrine, Clean Language admitted only beneath the ontology"). Its section says six strains arrived and lists two.

**Evidence of absence.** `rg -i 'despite intending|another form of colonization|1801' notes/`: 0. `git log --diff-filter=D` for both titles: f1a4bb3, 2026-08-23.

**Who can populate.**
- Primary readings: hooks, *Teaching to Transgress*, "Engaged Pedagogy" (already queued); Freire.
- The author's decision whether to restore the two tensions.
- The transcript (1791–1807), for the question's own wording.

### 3.3 Book I's facilitation Loci

**What exists.**
- `seat: facilitation` has 0 notes vault-wide. The roster names "The Authentic Relating and Circling lineages — the author's own practice, written into the book."
- The design's facilitation Loci have no notes. Counts of notes that mention each: Heron and Reason 0; Art of Hosting 0; Schwarz 1; Grove and Clean Language 3; Freire 4; hooks 4; Mezirow 1; Akomolafe 2.
- Bohm is read (`archive/reading — bohm, on dialogue (1996).md`) but has no chair.

**Who can populate.** Primary readings; the author, for his own tradition.

### 3.4 Book I's pairs and the author's own facilitation stance

**What exists.**
- These design pairs have 0 notes each: from the facilitator's layer, emergence against compliance (1482), invitation against direction (1483), and guided attention against dictated interpretation (1484); expertise about process against expertise about the person (15122); and the author's own polarity, welcoming what is against guiding with a telos (214).
- His stance at line 214 is quoted only in the root file `reframe-deep-harvest-2026-08-20.md` (line 33): "being present and welcoming what is and then also guiding, directing, moving… following that, tracking that, not getting attached to the impartiality, but also having a certain agency or telos".
- His line 244, that "the framing of the book is meant to facilitate and not like change, fix or heal or like proclaim righteousness" (as the design quotes it), appears nowhere in `notes/`.

**Evidence of absence.**
- `rg -i 'guiding, directing|agency or telos|welcoming what is|certain agency'` over `notes/`, `archive/`, `reflections/`, `drafts/`, `ops/` and the family files: 0.
- `rg -i 'fix or heal|proclaim righteousness' notes/`: 0.
- Searches for "expertise about", "invitation is different", "emergence.{0,20}compliance" and "attention can be guided": 0.

**Who can populate.** Extraction from the transcript. These are the author's own turns, already at encountered or believed, so a session can admit them as his words without raising their standing.

### 3.5 Craft moves, including Book I's moves made visible to the reader

**What exists.** `category: craft` has 0 notes vault-wide, and about 12 craft-shaped notes sit under other categories. The design's Book I move of showing the score has no note; its questions are "Why did you choose this invitation? What were you watching for? What could go wrong? What did you notice in yourself?" (1524–1527). The vault's score note is written for the reader, not for a facilitator.

**Evidence of absence.** `grep -l '^category: craft' notes/*.md | wc -l`: 0. A search for "show(ing) the score", "score to the musicians" and "what were you watching for" outside the transcript and the design: 0.

**Who can populate.** A drafting session, from the drafts and the transcript; the author, for his own moves. The Authentic Relating moves in provenance round two §2 are his.

### 3.6 Practices for sovereignty, power, relationship and technology

**What exists.** The region's 3 practice notes; none is on these concerns. These design practices have 0 notes each:
- "Can I relate before I intervene?" (16298);
- the repair sequence (16474);
- "What am I delegating? What am I losing through that delegation? What should remain mine?" (16567);
- the inner facilitator's questions (13620–13632). The one exception, "What is moving here?", appears only in `notes/the learning arc.md`.

**Who can populate.** Transcript extraction (at surfaced standing); the author's own practice; the provenance record of his moves.

### 3.7 Crossings in the author's own judgment, and the relational-field surface

**What exists.**
- Every crossing in the region was built by a session, and the surfaces leave the author's note blank on purpose.
- No relational-field surface exists. The masthead makes it the next build, "after its pending concern-split along the sovereignty-versus-facilitation seam and a grounding fold, since it carries the most notes that are nascent" (`ops/orientation.md`, line 17).
- The relational-field map's own "### Nascent stubs" section is empty.

**Who can populate.** Only the author, for the crossing itself; a session, for the surface and the split.

### 3.8 Book II forms for the relational concerns

**What exists.** "The field turned inward" holds 2 notes. The two-books family says of the Book II side in general: "Book II is the thin book, honestly" (`the-two-books.md`, line 80).

**Who can populate.** The transcript (13616–13654 and 16136–16154); the author.

### 3.9 The sent letter, its answers, and the draft's departures from its brief

**What exists.**
- The vault holds the session's draft. The author's cut and the sent text are not held, and "no reply is recorded anywhere in the vault (checked 2026-09-03)" (`ops/correspondence program.md`, line 58).
- A drafting session should also see that the draft uses room figures its brief forbids. The brief's limit is "No house, no rooms, no gatekeeper" (`drafts/brief — the first letter.md`, line 14). The draft says "my account of what had happened to me was the best furnished room in my life" (line 15) and "Deep is one of the rooms we are going to leave" (line 27).

**Who can populate.** Only the author: the sent text, whether to hold any replies, and his answer to S5.

### 3.10 Scale and Lens on notes

**What exists.** No note records either field. Scale can be recovered from the relational-field map's sections. The region holds no material for Lens.

**Who can populate.** A session can tag scale from the map sections. Lens should wait until a function of the books needs it: the region offers no case where a quadrant would change what a drafting session does.

### 3.11 The design's Remainder items for this region

**What exists.**
- "what relationships reliably increase aliveness?" (981): 0 notes and 0 ops files (2 root files).
- Whether recognition is "cognitive, embodied, relational, or only comes into being through their interaction" (421): 0 anywhere outside the transcript and the design.
- "Conspire" (944), the author's word for breathing together, is held only as a figure-seed in `ops/queue/commonplace.md` ("the author's own cherished word; sovereignty as breathing in company").

**Who can populate.** Transcript extraction (at surfaced standing); the author, for "conspire."

### 3.12 Company for the Technology concern

**What exists.** All 13 notes under "Participation, delegation, and the machine" cite only the reframe. No outside thinker grounds them in the region.

**Who can populate.** Primary readings; the author, on how large the concern should be in the books. The spine already bounds it as "a cross-cutting frame in front matter plus one applied block per book, not a third strand" (`notes/the learning arc.md`).

## 4. The three findings that matter most

**1. Book I's core material in the vault is the model's outline, and the author's own facilitation lives outside the notes.**

The relational-field map gives Book I fifteen facilitation-craft notes. All fifteen are nascent, cite only the reframe conversation, cite a section label rather than a transcript line, and say nothing about whose words they carry. I checked six of their key sentences against the transcript, and all six sit inside the model's responses: the two-book handoff at line 13056, and the chapter outlines at lines 15489, 15534, 15577, 16020 and 16777. In the design's terms they stand at surfaced. The vault's most careful survey also credits a model sentence to "the author's own craft."

The author's own facilitation material is elsewhere:
- his stance at line 214 is quoted only in a root harvest file;
- his line 244 appears nowhere;
- his rooms (Houston; the 16 May 2026 event and the prompt he chose, “Think of someone who loves you. Describe how they see you.”; the March 2026 triad design; his Authentic Relating moves) sit in `provenance/`;
- the interlocutor seat for his own tradition is empty;
- the Power concern's question and the facilitation craft's one tension were deleted on 2026-08-23, while three surfaces still refer to them as standing.

So the three things the design says Book I needs of its own — cases from rooms, its moves made visible, and material on power — are the region's thinnest cells, and the thickness Book I appears to have is surfaced material. A session can extract everything already in the author's words. The rooms themselves need him.

**2. The letter is four things in the vault and one in the design.**

The design holds the letter as the aim's source, and states the aim with the model's sentence (3704). The vault already marks that sentence as the model's. It also holds the author's own words (770) and the letter's own wording ("we each act as auxiliary for the other as we march through life with our own flags in hand"). And it holds the letter as:
- an Encounter (4am, 1 July 2026);
- two Figures (patriotism for oneself, the gold thread);
- the Book's chosen form (the correspondence, 2026-08-08);
- a Passage that was sent (before 2026-08-14).

The design needs Book fields for form, person of address and addressee, a standing level for sent, and a relation for the reader's answer.

Two cautions travel with the vault's version. The one sent Passage exists only as a session's draft, with no reply recorded. And the 4am encounter's interpretive sentence, "The recognition didn’t require the mirror," is the AI collaborator's: it is marked [C] in the provenance and unmarked in all 11 other files that quote it, two of which call it primary-layer fact.

**3. The second person has no place in the design, and in the vault it is the region's richest material, with Exit its strongest column.**

The design expected Exit, a statement of what a frame hides, to be the thinnest kind of content. For the relational concerns it is the thickest:
- the one-chair wound is filed as a live tension, with seven witnesses and four counter-instances;
- at least four notes state what a book cannot do: `a book cannot supply the basic trust a reader who never had a reliable other lacks`, `the maneuvers that change a person's frame require a live protected setting a book is not`, `a solitary reader can run every guard that declines to evaluate and none that discriminates`, and `the book points at the external check it cannot administer, the finger rather than the moon`;
- the author's own words set its bound: "it's not exclusively the book's responsibility to be the moon but the finger pointing towards it as long as it admits it as such" (decision of 2026-08-16).

Beyond the Exit, the vault holds address as a whole concern (58 notes; the design's missing sixteenth row), and a survey sorting second persons into twelve jobs. That job list doubles as Book I's inventory of what a facilitator can be (receiver, certifier, gatekeeper, former), and of which of those roles a page can carry.

Receiving this material needs:
- an Address concern;
- a Role type, or Book fields for roles supplied and declined;
- a Scale field split into who participates and the size of the form, with the relation scale widened past the human.