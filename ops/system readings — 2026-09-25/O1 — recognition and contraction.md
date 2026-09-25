# Region report: Recognition and contraction, the doctrine core, part one (O1)

## 0. What I read

**The design and the law.** I read the brief in full, `CLAUDE.md` in full (219 lines), and `reframe-map-and-system-2026-09-25.md` in full (1,143 lines; Parts V, VI, VII, and X closely, the rest once through).

**Core reading, in full.** `notes/recognition.md` (243 lines), `notes/contraction-not-corruption.md` (103), `notes/the learning arc.md` (68), `notes/index.md` (50); `drafts/recognition — a surface to write from.md` (45) and `drafts/contraction-not-corruption — a surface to write from.md` (48); `reflections/README.md` and `reflections/on recognition (2026-08-24).md`; in `the-concerns.md`, lines 1–44 (the family's opening, its apparatus, the recognition section, the contraction section) and lines 107–115 (the closing section).

**Member notes read in full or nearly so (35).** The founding convergence (`aletheia and pratyabhijna converge on truth as un-forgetting`), the seam note (`aletheia and pratyabhijna part on whether un-seeing is concealment or contraction`), the three tension notes in the region (`the lived report of recognition drops the seam the tradition's reflexive dyad keeps`, `the productive reading of contraction is the book's revaluation rather than the tradition's doctrine`, and via the index the coaches-bloc tension), `seeing the frame that holds both self and whole frees one from a double bind`, `the pulse of experience moves through contraction and expansion`, `suffering is contraction never corruption`, `contraction is a productive locus and not only a privation`, `the catch is the pulse felt as sheer aliveness`, `the gatekeeper has a lived referent in the author's own protective structure`, `the founding inversion restates the author's own sufficiency inheritance`, `allowing one's own sufficiency is a recursive condition for entering this reality`, `the book's honest origin story is noticing first and finding company after`, `the book reads deep change as uncovering rather than addition`, `recognition is participatory, a move the reader makes rather than a content the reader receives`, `recognition arises from interruption of automaticity, …` (the five-conditions note), `the kashmir shaiva tradition would decline four of the book's deepest moves` (first 40 lines), `the book's privative grammar runs four different engines under one word`, `pathology belongs to conditions and capacity to persons`, `constraint produces fluency and deprivation reveals the essential`, `suffering is contraction that has forgotten it is a locus and a tradition is contraction that remembers`, `suffering is treated by restoring movement rather than by achieving a state`, `the book asks the middle question between mechanism and content — …`, `the kashmir shaiva tradition's five principles assemble into one circuit`, `sufficiency is the capacity to remain present without needing the next input to complete oneself`, `how much form holds just enough that surprise can still happen`, `all six doctrine concerns appear in the first fifteen poems`, `burnout is obligation minus sanctuary`, `the seed arrived in a season of burnout and container-building on every front`, `the book is a reference point for a reader already on their way`, `recognition is irreversible as remembering but revocable when kept as a possession`; the first 16–22 lines of `the peak is the one unit the performing law can honor only by withdrawing`, `the unfolding of the center is planted half-erased and finished at a mirror`, `the gap between two states is where the concealed shows itself`, `the ecology frame transcends and includes the verification frame rather than replacing it`, `the privation move is an independent arrival across five fields rather than a book coinage`; the frontmatter and bodies of the five image notes the shared index missed (below).

**Outside the region, opened only to judge a fit.** `the two books mirror each other on every shared concern`, `both books move through recognition → relation → participation → stewardship`, `the pulse has a counterfeit at each phase, a false peak of expansion and a racket of forgotten contraction`, `a life pulses open then closed and the drawing-in gives what the opening cannot`, `nothing transforms from the audience` (first 12 lines), `the central correspondence was lived nine years before it was assembled` (first 14), `the book's native genre is the letter from a friend read alone` (first 16), `a witness kept as proof forecloses what it proves` (lines 9–12); `archive/encounter — the reframe conversation (2026-08-13).md` (first 40 lines); `provenance/provenance fourth addendum.md` (line 11 and lines 120–160); `ops/decisions.md` (via `scripts/queries/decided.sh`); `ops/completed.md` lines 33, 40, 42; `ops/standing-consequences.md` line 48; `templates/claim-note.md` (schema block); `notes/methods.md` lines 131–175.

**Via the shared index only.** The remaining ~115 member notes, by title, fields, provenance class, and description.

**How the counts were made.**
- Region membership: `rg -l '^topics:.*\[\[recognition\]\]' notes/` gives 109 notes; the same for `[[contraction-not-corruption]]` gives 48; 4 notes declare both; the region is 153 notes. The shared index lists only 108 and 44, because it did not parse the single-quoted `topics:` arrays of five image notes (`the house with no ceiling …`, `the gatekeeper is met with a bow never a fight`, `the messenger …`, `the orchard's koan …`, `the racket …`); I added those five by hand to every index-based count below.
- Category, `state:`, and provenance-class counts: `grep` over the index lines for the 148 notes the index holds, plus the five image notes read directly.
- Book I / Book II mentions, `Standing:` lines, speaker marks, author-statement citations, glossed relation lines: loops of `rg` over the 153 region files.
- Pair, Crossing, Locus, Encounter, craft-like, and counterfeit classes: my own enumerated classification of the 153 titles, written out in full at `…/scratchpad/repo-phase/O1work/classification.md`. These counts are a reader's judgment, not a field.
- Read-only scripts run: `scripts/queries/map-membership.sh` (recognition: 0 missing, 0 to review; contraction: 0 missing, 3 to review), `scripts/queries/placements.sh` (no placements), `scripts/queries/lens-check.sh --stale` (no expired entries), `scripts/queries/decided.sh` for "concealment" (0 rows) and "contraction" (3 rows).

**The region at a glance (153 notes).** By category: claim 101, isomorph 18 (an isomorph is a note recording one structure reached independently in two or more traditions), interlocutor 12, structure 7, image 7, open-question 4, tension 3, practice 1. By the vault's `state:` field: full 38, nascent 48, privated 17, no state 50. By provenance class of the `sources:` field (a note can carry several): corpus 67, outside 48, reframe conversation 55, provenance reconstructions 21, author statements 17, poems 6, the vault's own reasoning 4.

---

## 1. Collation

### 1a. Types

| Type | What in this region serves it | Where (paths, counts) | Fit | Notes |
|---|---|---|---|---|
| **Concern** | The two doctrine maps, their two entries in the concerns family, the two drafting surfaces, and the recognition station of the learning arc. | `notes/recognition.md` (109 declared members), `notes/contraction-not-corruption.md` (48), `the-concerns.md` lines 11–43, the two `drafts/… — a surface to write from.md`, `notes/the learning arc.md` §§ Book I, Book II | With translation. The vault states each concern as a doctrine, not a question: "recognition — deep change is un-forgetting, not addition"; "suffering as fullness contracted, not a self damaged" (`the-concerns.md` headings). The question form appears once as a nascent claim that reproduces the design's own question (`the book asks the middle question between mechanism and content — …`, citing lines 2197–2199), and once as the contraction surface's live question. The design's stake field corresponds to each surface's section "The still center this drains to"; the exit field corresponds to each surface's section "What this surface cannot see". Book I form, Book II form, and quadrant have no counterpart. | Only recognition is one of the design's fifteen Concerns. Contraction-not-corruption, the vault's theory of suffering, has no design Concern (section 2A). |
| **Pair** | Claims whose title states a distinction or holds two goods together. | 43 binary distinctions, 13 polarities, 9 many-term distinctions (my enumerated list) | Native in content, partial in structure. Every one is a claim title ("awareness is not attention — attention selects, awareness contains"; "intimacy is a tether rather than a binding"). No note records the pair's kind, the confusion it corrects, the collapse on each side, or the way in. | The design's five recognition pairs all have homes (1e). The vault holds many pairs the transcript never had: concealment/contraction, fold/fracture, remembering/possession, state/station, relish/recognition, bow/fight, precision/dignity. |
| **Practice** | One practice note; practice content embedded in claim and image notes. | `the solo practice reaches the felt shift and the primitives then surface by themselves` (the only practice note in the region, and its home is felt-shift); 0 of the vault's 9 practice notes declare contraction-not-corruption | Partial and thin. The practice content inside other notes is real: "a fold is learned rather than repaired (what shape, what it protected, what would let it open)" (`suffering is contraction never corruption`); "Bowing to the Gatekeeper… The part, met with respect, will usually relax" (abridged ch14, quoted in `the gatekeeper is met with a bow never a fight`); the Privation Principle as a diagnostic procedure (`the diagnosis contains the cure`). | The design's recognition practices, "noticing moments of contraction and expansion" (1037) and "try this on" (176), have no practice note. `rg` for "moments of contraction" finds nothing. |
| **Figure** | Image notes, the figure glossary, and figures carried inside claims. | 7 image notes (the house with no ceiling, the hollow interaction, the catch, the gatekeeper met with a bow, the messenger, the orchard's koan, the racket); `notes/figure glossary.md` | Native for the image, for what it lets the reader hold (the image notes use the verb "carries": "The gatekeeper carries the protective part"), and for origin (through `sources:`). Partial overall: 0 of the 7 image notes names what the figure over-determines. | The recognition fable the design names at line 156 ("the woman who meets the lover who has always known her") is absent. `rg` for "fable" finds only the model name "Fable". |
| **Encounter** | Dated lived events of the author's, held inside claim, structure, and image notes; one reflection; the provenance reconstructions. | 7 encounter-bearing notes (the catch; the gatekeeper's lived referent; the seed in the burnout season; the founding inversion; the origin-story table; seeing the frame; *psychedelic* reclaimed on 1 January 2026); `reflections/on recognition (2026-08-24).md`; 21 region notes cite `provenance/` | With translation. The notes have no Encounter category, and the vault's one Encounter record (`archive/encounter — the reframe conversation (2026-08-13).md`) is the conversation itself. Dates, conditions, and the personal-provenance care are present. The author's own note on the event is often missing, or is the AI collaborator's (section 2J and the corrections). | The one dated occurrence of recognition in the author's life, 4am on 1 July 2026, sits outside this concern's map (`the book's native genre is the letter from a friend read alone`, in the call-and-the-answering map and book-structure). |
| **Locus** | Thinker notes and claims about traditions. | 12 interlocutor notes (Heidegger, Utpaladeva, Kṣemarāja, Wittgenstein, al-Qushayrī, Maslow, Erikson, Rilke; Aristotle, Marcia, Hübl, Reich) and 5 locus-shaped claims, including `the kashmir shaiva tradition would decline four of the book's deepest moves` | Native. Vocabulary quoted in the tradition's own terms, what each would decline, sources at page level, and independence tested. The vault adds seat, load, and discipline fields and reading records. | `a tradition is a cultivated locus of recognition — a trained way of noticing — not merely doctrine` is the design's own definition of Locus (the design cites line 3210), held in the vault as a nascent claim. |
| **Crossing** | Isomorphs, tensions, the seam claim, comparative claims, and the surfaces' company sections. | 29 crossing-shaped notes (18 isomorphs, 3 tensions, 1 seam claim, 7 comparative claims); the recognition surface names 9 company entries, 8 with a "where it parts from the book" clause; the contraction surface names 6, all 6 with one | Native in content: both sides quoted, the difference kept, the remainder named. Sessions performed nearly all of these crossings, mostly at primary texts. The author's-note field is mostly empty. | The design's grid marks recognition's Crossing column "m" (only the model's words). In this region it is the richest column, though the author's own crossing is thin. |
| **Durable perspective** | The reflection; the author's own words carried in notes; poem lines; the blank slot each surface leaves for the author. | 1 reflection; about 8 notes carry the author's words (the source lines are listed in 1b); 6 notes quote the poems; 2 surfaces leave the durable perspective blank | With translation. The vault keeps his words verbatim and outside the claim graph, and rules that a reflection "grounds no doctrinal inference". The design's field "the Crossings it survived" corresponds to the reflection's derived pointers; "what it still cannot see" corresponds to his "never meant to be an all-encompassing constellation". | The recognition surface asked for exactly this, and the author answered it: the reflection's frontmatter reads "occasioned-by: the recognition surface's mirror". |
| **Craft move** | Claims about how the book's staging works on a reader, and the surfaces' own form. | 0 notes of `category: craft` vault-wide (`rg '^category: craft'`), although the category and a methodology directive exist; 7 craft-like notes in this region | Partial. For example: withdrawal at the peak; the half-erased formula finished at a mirror; interludes placed at junctions; "do not explain the reader out of an encounter"; the register's work being to open the reader's encounter. | The surfaces apply two of the book's own craft moves (withdrawing at the crossing, and leaving a sentence to be finished at a mirror) to a working document. |
| **Passage** | Nothing drafted in the author's voice. The corpus's sentences are an earlier draft's language. | 0 notes with a `supports:` placement (`placements.sh`: "none"); the corpus is quoted in 67 region notes, for example "Nothing in you is broken. Something in you is folded." (first-telling) | Absent as a type. The corpus is a prior-draft layer the design does not model (2B). | The poems are the author's written voice from before the books (2C). |
| **Book** | The learning arc and the index's center. | `notes/the learning arc.md`; `notes/index.md` § The center | Native for the movement ("recognition → relation → participation → stewardship"), the endings (the facilitator disappears; the practitioner returns), and the basis of authority. | The region's concern material rarely points into either Book: 4 of 153 notes mention Book I or Book II in a two-books sense. |

### 1b. Shared fields and registers

**Standing (the design's ladder from surfaced to written).** The vault has no standing field. What it has is scattered across five places.
1. **Prose "Standing:" lines** in 29 of the 153 region notes. They mix two different things. One is how grounded the note is ("privated — the Plato pole read at the primary text"). The other is whose voice it is ("the participation-law anchor (264) is the author's words; the participatory-recognition phrasing (391) is model-proposed", in `recognition is participatory …`).
2. **Source strings** naming the author: "author statement, <date>" in 10 region notes, "author direction" in 3, "reflections/" in 3.
3. **Speaker marks** in the provenance reconstructions ("Same conventions throughout — [D] your words, [C] the AI’s, [A] hers as you transcribed", `provenance/provenance fourth addendum.md` line 11). Only 2 of the region's 21 provenance-citing notes carry the mark forward (the founding isomorph, "[C] 1 Jul 2026", and the *psychedelic* note, "[D] 1 Jan 2026").
4. **The reflections folder's own frontmatter**: "standing: primary — spoken from the heart, kin to the poems; orientation, not doctrine".
5. **The completed log**, which records at least one raise of standing: "At the author's direction, the objective finding his recognition-sounding surfaced was woven into the notes and families as a durable thread" (`ops/completed.md` line 40). `decided.sh concealment` returns 0 rows, so that raise is not in the decisions register.

The vault's `state:` field is a different axis. The template defines it as "How developed the claim is", with "'nascent' is a seed — the proposition stated, not yet substantiated, waiting on writing. 'privated' is a complete claim incomplete in a specific named way, usually waiting on a reading" (`templates/claim-note.md`). In practice it measures grounding in primary texts. So the author's own words sit at the bottom of the vault's scale. `allowing one's own sufficiency …` is his line 446, and its note says "Standing: the note is kept nascent until the writing reaches for it". The design would place the same words at believed ("the author's own turns already stand at encountered or believed").

The author's own words in this region, by transcript line or date:
- transcript lines 154/156, 166, and 176 (`seeing the frame …`);
- line 446 (`allowing one's own sufficiency …`);
- line 1074 (`constraint produces fluency …`);
- lines 1183/1190/1210 (`how much form …`);
- author statement, 2026-08-10, on the reader (`the book is a reference point …`);
- author statement, 2026-08-10, on the grammar (`the book reads deep change …`);
- author statement, 2026-08-03, "These refusals ring true" (`the kashmir shaiva tradition would decline four …`);
- author statement, 2026-08-02 (`the book's honest origin story …`).

**Scale (self, relation, ecology).** No field. No region note uses the three-level vocabulary (`rg` for "self, relation, ecology" finds 0). The attention-crisis notes are ecology-scale in substance ("civilizational" appears in 9 notes).

**Lens (the four quadrants).** No field. "Quadrant" appears in 3 region notes, each only as a link to `wilber's four quadrants are a coordinate system, not an architecture`.

**Provenance.** Native, and richer than the design's field. Every region note carries `sources:` with a location. Source standing (descriptive, draft, primary) is registered in `CLAUDE.md`, and primary readings are cited by the work's own locators with an archive record as the trace. One gap against the design's "a transcript line" address: 15 of the 49 region notes that cite the reframe conversation in `sources:` give a section name rather than a line (for example "reframe conversation, 2026-08-13: the meta-framework becoming sovereign"); my regex count.

**Commitments.** The vault states the design's commitments in three forms.
1. **As standing directives** in `CLAUDE.md` and `ops/methodology/`. The stance ("company, not proof") and the both-halves rule correspond to "Difference is understood before likeness is claimed". Holding every name as a candidate corresponds to "No standpoint is sovereign, the books' own included". The rule that only the author resolves a tension corresponds to "Retrieval may be delegated; authorship may not".
2. **As atomic claims from the reframe conversation.** At least 11 region notes restate a statement from the design's Part X, for example:
   - `no single locus or framework may become sovereign over the reality it describes` (the design's 3792 and 6089);
   - `the measure of a framework is what it makes possible, not what it explains` (793 in the note, 795 in the design);
   - `recognition is participatory, …` (391);
   - `recognition is cultivated rather than caused or manufactured` (3824, "Recognition cannot be prescribed");
   - `the facilitator tends conditions … rather than transmitting a destination` (1490);
   - `do not explain the reader out of an encounter` (17197);
   - `knowing about is not knowing through …` (11326 and 15320);
   - `every locus is potentially revelatory and necessarily partial …` (3788);
   - `constraint produces fluency …` (3808 and 1470).

   They are held as claims about the book, not as conditions written on relations.
3. **As performed form.** The surfaces enact "Recognition belongs to the reader" (its test: "Does this passage tell the reader what they recognized?") by refusing to state the durable perspective: "So the durable perspective is not for this surface to state; the company above is not proof, it is the company you found — and the recognizing is a move only you make."

**Remainder.** The vault's remainder is spread across seven kinds of place:
- 4 open-question notes;
- 3 tension notes, each carrying `status:` and `treatment:`;
- the "What remains" sections of both maps and of the learning arc;
- the "Open edge" line of each concerns-family entry;
- the "What this surface cannot see" section of each surface;
- `ops/open corpus.md`;
- `ops/clearing.md`.

It is kept visible and never resolved by a session, which is what the design asks.

### 1c. Relations

All 153 region notes end with a glossed "Relevant Notes" footer, 728 glossed lines in all. Relations are therefore stated in words, as the design asks. They are untyped, and their vocabulary is the vault's own. Counting keywords across the 728 glosses: company, arrival, or convergence 99; refusal, objection, or counter 76; limit, cannot, or hides 56; tension or strain 33; ancestry, descent, or lineage 31; sibling or twin 19; "grounds" 27; "carries" 20; "opens" 16; "realizes" 12; "meets" 7; "illuminates" 4; "articulates" 0.

| Design relation | Expressed in this region? | Form |
|---|---|---|
| A Pair articulates a Concern | Yes, by membership. | `topics:` plus map sections that group distinctions under the concern, for example `notes/recognition.md` § "Recognition is not transmission: the ladder of knowing". |
| A Locus illuminates a Concern, disclosing and obscuring | Yes, strongly on the obscuring side. | Interlocutor notes and refusal notes: "Heidegger … with his own four refusals"; "the tradition would decline four of the book's deepest moves". |
| A Crossing yields a Durable perspective or a Remainder entry | Both, once each. | Remainder: the lived-report tension, whose Crossing of four traditions yields a treatment under trial. Durable perspective: the recognition surface's blank led to the author's reflection. |
| A Practice opens a Pair | No. | No region practice is linked to a pair. |
| A Figure carries a Pair or a Concern | Yes, in the design's own verb. | Image-note descriptions: "The orchard carries the metabolic arc", "The racket carries the fixed complaint paired with its fixed payoff". |
| An Encounter grounds a Durable perspective | Yes, with a vault restriction. | `the gatekeeper has a lived referent …`: "has, in this one structure, its first case". The reflection "grounds no doctrinal inference", so an Encounter may ground his perspective and may never be a claim's warrant (the seam note: "its warrant is the two traditions, not the occasion"). |
| A Craft move carries content onto the page | Yes, in prose. | `the peak is the one unit …` ("withdrawal is not one option among several but the only performance the law permits there"). |
| A Passage realizes content in one Book | No. | No Passages; `supports:` unused. |
| A Book projects a Concern | Partly, into the wrong book. | Each concerns-family entry ends in an "Enters:" line addressed to the corpus's one-book arc: "running beneath the whole arc from preparation to integration" (recognition); "through the deepening and integration" (contraction). The learning arc's stations project recognition into both books without linking the recognition map's notes. |
| A Commitment protects a function | Partly. | Directives and axiom notes; not tied to functions. |

### 1d. The vault's own structures that already do the design's work

1. **The concerns-family entry and the design's Concern with its profile row.** The family entry has the finding, what the concern reveals and leaves open (its "honest flank"), attested claims grouped by sub-theme, a nascent list with grounding status, an open edge, and where the concern enters the book. The design has the question, stake, Book I form, Book II form, quadrant, and exit.
   - The vault has what the design lacks: a doctrine statement, a grouped evidence list, a grounding status per arrival, and an honest flank kept "at the reveals level".
   - The design has what the vault lacks: the question form, the two book forms, and the quadrant.
   - The family uses the transcript's Five Great Questions as its member schema, the same five the design makes "the way through the system", but bends two of them. The family's Encounter slot asks "which claims build it?", and its Perspective slot asks "which of its arrivals are read and which are nascent or unverified?". In the design, Encounter means a lived event and Perspective means the author's statement. The same vocabulary names different things in the two documents.
2. **The drafting surfaces and a profile row written out in prose for the author.**
   - "The still center this drains to" corresponds to the stake.
   - "The company that reached it — and where each one parts from the book" corresponds to the Company column and to each Crossing's difference field.
   - "The gap … — the crossing that is yours" corresponds to the author's Crossing and Durable perspective, left blank on purpose.
   - The three questions correspond to Book I forms (explicitly so in the contraction surface).
   - "What this surface cannot see" corresponds to the Exit.

   The surfaces lack a Book II form, named Pairs, Practices, and Encounters. The contraction surface is the exception on Encounters: it names two ("You reached this before the scholarship named it, and you reached it from the inside").
3. **The `state:` field with its `privation:` clause, and the design's Standing.** They are orthogonal, not equivalent. `state:` measures reading done; Standing measures how far the author has taken a piece. Each is missing from the other system (2D).
4. **The isomorph category and the design's Crossing; the tension category and a Remainder entry that carries a treatment.** Native correspondence (2F).
5. **The interlocutor template and the design's Locus.** Native. The vault adds the seat and load axes, which the design lacks. The design's field "whether it arrived at its finding independently of the others or descends from them" corresponds to the vault's load values independent-arrival and precedent.
6. **The learning arc and the design's Book, with its root.** The still center corresponds to the master question; "Both books run one developmental sequence" corresponds to the movement field; the two endings correspond to the ending field; the authority split corresponds to the basis of authority. The vault's word for what the company supplies conflicts with the design, and with the vault's own stance: "the company of thinkers gathered in [[interlocutors]] is Book I-shaped evidence" (`notes/the learning arc.md`). The design's drift 2 warns against calling the author's case evidence, and `CLAUDE.md`'s stance says "Company, not proof."
7. **The reflections folder and the design's Durable perspective and Encounter.** Close fit. The vault adds rules the design lacks: the words are inviolable, the pointers run one way, and the reflection enters the book undecided (2J).
8. **The provenance speaker marks ([D] the author's words, [C] the AI's, [A] hers as he transcribed) and the design's standing at the level of a single quotation.** The marks correspond to the ladder's first cut between surfaced material and the author's own, but the marks stop at the provenance files.
9. **The Relevant Notes footer and the design's relations stated in words.** Native form, untyped (1c).
10. **The recognition map's section structure and a crossing of Loci by concern.** For example, "Arrivals from outside both traditions", "The negative way and the withdrawal fork", "Why an arrival does not persist". These are the vault's hand-made crossings and forks.

### 1e. Profile-grid rows

The design's Part IX grid for the rows my region touches, with "A" meaning the author's words supply the column, "m" meaning only the model's do, and "·" meaning the transcript supplies nothing, next to what the vault holds:

| Concern | Design (transcript only) | Vault, this region |
|---|---|---|
| Recognition | m m m A m A A m A m | Question present · Book I thin · Book II thin · Pair present · Practice thin · Encounter present · Company present · Crossing present, but the author's crossing thin · Durable perspective present · Exit present |
| Suffering (contraction), not a design Concern | — | Question thin · Book I thin · Book II thin · Pair present · Practice thin · Encounter present · Company present · Crossing present, but the author's crossing absent · Durable perspective thin · Exit present |
| Sufficiency | m m m m m A · · A · | Question thin · Book I absent · Book II thin · Pair thin · Practice absent · Encounter present · Company thin · Crossing absent · Durable perspective present · Exit thin |
| Awareness | m m m m m A m · A m | Question absent · Book I absent · Book II absent · Pair present · Practice absent · Encounter present · Company present · Crossing present · Durable perspective present · Exit thin |
| Form | A m m A m A m · A · | Question present · Book I present · Book II absent · Pair present · Practice absent · Encounter present · Company absent · Crossing absent · Durable perspective present · Exit absent |

**Recognition**

| Cell | Mark | Evidence |
|---|---|---|
| Question | present | `the book asks the middle question between mechanism and content — …` (nascent) quotes the design's own question: "How do we create conditions in which recognition becomes possible without prescribing what must be recognized?" (lines 2197–2199). The map states the concern as doctrine rather than question. |
| Book I | thin | No map note is labeled Book I. The design's Book I form, "Recognition Cannot Be Manufactured" (15455), exists as `recognition is cultivated rather than caused or manufactured` (nascent). `the facilitator tends conditions under which recognition might occur …` and `the facilitator can supply meaning … so do not solve …` are facilitator-side and unlabeled. The learning arc's Book I recognition station: "what is actually happening when one person helps another become what they could not yet see? The first ethical declaration is that the other is not your project." |
| Book II | thin | The learning arc's Book II station: "self-facilitation begins from 'what is happening?' rather than 'what is wrong with me?'". In the map: `self-facilitation begins from what is happening …` (nascent). The design's "You are already participating" (16084) appears only inside `pathology belongs to conditions …`. "I am aware that I am aware" (16236) is not in the region. |
| Pair | present | All five of the design's recognition pairs have homes. "contraction as information / as failure" is in `suffering is contraction never corruption` and the five-conditions note. "participatory / transmitted" is `recognition is participatory …`. "articulation / recognition" is in `a vocabulary can assist recognition but cannot own it` and `information about an experience is not participation …`. "contraction / expansion" is `the pulse of experience …`. "self / whole" is `seeing the frame …`. The vault's own pairs add many more (concealment/contraction; remembering/possession; soul's reminder/ego's reward; state/station). None carries pair fields. |
| Practice | thin | 1 practice note, Focusing (`the solo practice reaches the felt shift …`), which belongs to felt-shift and rests on the demoted primitives. The four *upāyas* (the tradition's four means to liberation) are queued, not extracted ("the four upāyas belong with the practice curriculum", `notes/recognition.md` § What remains). |
| Encounter | present | The retreat insight (`seeing the frame …`, lines 154/166); the catch (`the catch is the pulse felt as sheer aliveness`); the dated origin-story table (8 rows, `the book's honest origin story …`); the reflection's childhood scene ("It's the same sensation I got when my dad read to me about David walking across the glimmering moonlit sea path to The Garden Behind the Moon (by Howard Pyle)"). The 4am letter, the one confirmed occurrence of the event, lives outside this map. |
| Company | present | 9 company entries on the surface; 8 interlocutors; 18 isomorphs; many read at the primary text (Plato 2026-08-24; Utpaladeva; Kṣemarāja; Wittgenstein §129 2026-08-30; Longchenpa and Śaṅkara 2026-09-02). |
| Crossing | present, author's own thin | Session crossings: the founding isomorph and its seam ("same gesture, same destination, two different accounts of the un-seeing they undo"); the four-way crossing in the lived-report tension ("Advaita pays with the second term; Dzogchen pays with both terms; Henry pays with the world; Pratyabhijñā keeps both terms and the world and pays with the seam."). The author's own crossing is his sounding choice (he leans to the recognition-school pole, chose "no 'which' — one event", and declined the word "hiding"). The surface's sentence "Across all of them, what survives their refusals is" is still blank. |
| Durable perspective | present | The reflection, verbatim: "Recognition - at least to me - one observer of many possible observers of recognition - has felt like a Klein bottle of a mirror". The poem line (`all six doctrine concerns appear in the first fifteen poems`): "you see, I didn't need / to hear what I already knew— / but it was nice to be vulnerable / enough to recognize the answer / I had always had—" (poems #4). |
| Exit | present | The surface names three blind spots: the finite it cannot un-forget, the reader for whom recognition did not persist, and "it cannot certify that any of this works". The tradition's first refusal asks "as what?" (`the kashmir shaiva tradition would decline four …`). The author's own words bound the company: "it was never meant to be an all-encompassing constellation". |

**Suffering (the contraction-not-corruption concern; proposed in 2A)**

| Cell | Mark | Evidence |
|---|---|---|
| Question | thin | The map states a doctrine. The live question exists only in the surface: "a fold to open, a wound to be borne, or a condition to be changed". |
| Book I | thin | Posed to the author, not answered. Question 1 on the surface: "Where is the line, for Book I, between a fold a facilitator may help a person learn to open, and a wound or an injustice that it would be a violence to reframe as folded". Question 2 asks which face Book I leads with. |
| Book II | thin | `self-facilitation begins from what is happening rather than from what is wrong with the self` (nascent, the model's words); the learning arc's Book II participation step ("what is moving here?", "what an unremembered contraction cannot do for itself"). |
| Pair | present | fold/fracture; contraction/corruption; productive/privative contraction; forgotten locus/remembering locus; contraction/expansion with a collapse named on each side (`suffering is treated by restoring movement …`); bow/fight; conditions/persons; precision/dignity; the four engines. |
| Practice | thin | No practice note. The pieces are embedded: the Privation Principle; the three fold questions; "Bowing to the Gatekeeper" (abridged ch14, quoted inside an image note); the messenger's questions ("anger asks what must be protected"). |
| Encounter | present | The protective structure "born as bodyguard from the MDMA experience", met over years and nicknamed (`the gatekeeper has a lived referent …`); the April 2025 burnout season (`the seed arrived …`); the catch. |
| Company | present | Aristotle (read at *Physics* I and *Metaphysics* V.22), Kṣemarāja (read at the primary Sanskrit), Loy, Reich, Marcia, Alexander, Hübl (unread), Deida (read); *tzimtzum* ruled out as a false cousin. |
| Crossing | present, author's own absent | The privation move across five fields; the malas correspondence; the productive-reading tension, where "the tradition supplies the book's **mechanism** and withholds the book's **valuation**". The concerns family's open edge: "The author's soundings sit ahead of the readings: whether his reflection carries the revaluation, and whether the doctrine's verb is un-covering or un-clenching." |
| Durable perspective | thin | The author's sounding: "a fundamental clenching that didn't obscure the vision but just made it transfigured as not directly perceivable". Poem #4: "even uncertain, I am tethered; never broken". Author statement, 2026-08-10: "the book runs on a single privative grammar, and it never says so". The book's sentence "Nothing in you is broken. Something in you is folded." belongs to the corpus, whose standing the design cannot place (2B). |
| Exit | present | The surface's five-part blind spot: the ethical double edge, "a cruelty when it is turned on a harm arranged outside them"; the affliction objection; nihility; the demoted formulas; the Trika departure. |

**Sufficiency**

| Cell | Mark | Evidence |
|---|---|---|
| Question | thin | Only a definition: `sufficiency is the capacity to remain present without needing the next input to complete oneself` (nascent, the model's words). |
| Book I | absent | The design's 12812 (a facilitator who does not seek validation through the other's transformation) has no note in the region. |
| Book II | thin | The design's form, "This is enough for now" without collapsing into passivity, is quoted in the sufficiency note's substantiation and is not labeled Book II. |
| Pair | thin | sufficiency / manufactured insufficiency (`the attention economy runs on manufactured insufficiency`); "the double bind of sufficiency" is named in `the founding inversion …` and not constructed. |
| Practice | absent | No note. |
| Encounter | present | The 4am letter, the June 2026 "gauge" night, and the gifted-child structure (`the founding inversion restates the author's own sufficiency inheritance`, citing provenance addendum §5 and addendum four §II.1–2). |
| Company | thin | Linked only as a "fourth instance" of the uncovering move, which the note calls "the vault's, not the conversation's". |
| Crossing | absent | No note. |
| Durable perspective | present | Line 446, the author's words, held nascent (`allowing one's own sufficiency …`). |
| Exit | thin | The tradition's first refusal: "Asked "you are already sufficient — as what?", the book answers with silence where the tradition answers with a name." The founding-inversion note's "double bind … is not rest but work". |

**Awareness**

| Cell | Mark | Evidence |
|---|---|---|
| Question | absent | The design's question at 18271 has no note. |
| Book I | absent | Not in the region. |
| Book II | absent | Not in the region. |
| Pair | present | Awareness and attention (`awareness is not attention …`); illuminating and reflexive awareness (`awareness has a reflexive dimension distinct from its illuminating one`); participatory recognition and detached observation (`reflexive awareness is participatory recognition rather than detached observation`). |
| Practice | absent | No note. |
| Encounter | present | The reflection's report of recognition. |
| Company | present | Utpaladeva, Kṣemarāja, Henry, Longchenpa, Śaṅkara (the lived-report tension). |
| Crossing | present | The four-tradition crossing in `the lived report of recognition drops the seam …`. The author's decision is pending. |
| Durable perspective | present | "a Klein bottle of a mirror"; "awareness tasting itself" (the second is a phrasing he chose from options offered to him). |
| Exit | thin | The tension's remainder: the graph "has no structure for a mirror with no seam". |

**Form**

| Cell | Mark | Evidence |
|---|---|---|
| Question | present | `how much form holds just enough that surprise can still happen` (open question), with the author's "that is the question of my life" (1190). |
| Book I | present | `how much structure makes recognition possible without determining what is recognized` (the design's Book I form at 6955). |
| Book II | absent | The design's 16499 is not in the region. |
| Pair | present | structure / surprise; constraint / fluency. |
| Practice | absent | No note. |
| Encounter | present | The author's line 1210 on over-structuring, and his lifelong design intuition at 1074. |
| Company | absent | No note. |
| Crossing | absent | No note. |
| Durable perspective | present | Lines 1074 and 1190. |
| Exit | absent | No note. |

Two further design concerns touch the region lightly. **Attention** has 4 nascent notes: the attention crisis, relevance realization, the architecture of attention, and awareness not attention. Company is thin (Vervaeke through the conversation; Rosa through secondary scholarship); Book I, Book II, Practice, and Crossing are absent. **Company** as a concern ("What survives the difference?") is carried here by the founding convergence and by `the stance's refusals-intact rule was the company's practice before it was the book's`; its full row belongs to readers O3 and F3.

---

## 2. Beyond the system

### 2A. The theory of suffering is a whole concern the design lacks

**What it is.** `notes/contraction-not-corruption.md` and its 48 declared members, the concerns-family entry, and the contraction surface. The doctrine in the book's words: "Nothing in you is broken. Something in you is folded" (first-telling, quoted in `suffering is contraction never corruption`). The index calls it one of the six "masses" into which the atlas's closing section resolves the book.

**Why the design cannot hold it.** The design's fifteen Concerns come from the transcript alone. The word "suffer" occurs 0 times in `reframe-map-and-system-2026-09-25.md` (`grep -c -i suffer`). Contraction appears only as a Pair under Recognition ("contraction as information / contraction as failure", 391) and as the polarity contraction/expansion. The vault's material has a question, stakes, a Book I edge, an exit, company, and encounters of its own. It is a Concern, not a pair.

**Functions it serves.**
- Function 1, meeting the reader in their sufficiency: "nothing in you is broken" is a meeting sentence.
- Function 2, the conditions for recognition, through the design's "permission not to solve the experience", which the design itself glosses "contraction treated as information".
- Function 4, holding the poles unranked.
- Function 7, the exit: the ethical double edge.

**Expansion.** Add a Concern, *Suffering*. Its Pairs are fold/fracture and the contraction pulse. Its Exit is the double edge. Its Book I form is the discernment question the surface already poses.

**Instance, in the expanded form** (surfaced; compiled from the vault; nothing here is the author's until he raises it):
- **Concern:** Suffering.
- **Question:** "which suffering is which: a fold to open, a wound to be borne, or a condition to be changed" (contraction surface).
- **Stake:** "Reading suffering as contraction rather than corruption is how the book keeps the sufferer the author of their own change" (`notes/contraction-not-corruption.md`).
- **Book I, with another:** where a facilitator may help a person learn a fold, and where reframing would be "a violence" (surface question 1, unanswered).
- **Book II, with oneself:** "Self-facilitation opens by perceiving what is present rather than by diagnosing a fault" (`self-facilitation begins from …`).
- **Quadrant:** mostly the "I" quadrant. "Pathology belongs to conditions" moves the deficit into the "Its" quadrant, the systems around a person (`pathology belongs to conditions and capacity to persons`).
- **Exit:** "a mercy when it lifts a verdict off a person, and a cruelty when it is turned on a harm arranged outside them" (surface).
- **Author's words:** "even uncertain, I am tethered; never broken" (poems #4, page 5, as quoted in `all six doctrine concerns appear in the first fifteen poems`).

### 2B. The corpus as an earlier state of the book, and its formula apparatus

**What it is.**
- 67 region notes cite the seven corpus documents, and 33 cite nothing else.
- Within them sits a formula-and-audit class of 12 notes: the burnout, grief, forgiveness, and intimacy formulas; the trust/paralysis isomers; trust, paralysis, and foreclosure; the four molecule names in the poems; the offered menu; and four audits (`every discrimination the molecule formulas are credited with is made by the prose beside them`, `the molecule catalogue divides by whether the construct existed before the formula`, `the diagnostic discipline survives the apparatus that carries it`, `the apparatus descends from the settlement the book positions itself against`).
- The map states the author's demotion: "A standing qualification applies to the formula apparatus as apparatus: by author decision it is scaffolding, earning its place where it rests on established research".

**Why the design cannot hold it.** The design models the transcript and the future books. It has no type or standing for a prior draft of the book written in a "container" (the vault's word for the working frame the author held while a collaborator wrote inside it: the author curated and vetoed while the collaborator wrote). A corpus sentence is not surfaced material in the design's sense, because the author curated it. It is not written in the design's sense either, because it is not a Passage of either book. The formula notation has no type and, by the author's decision, no function.

**Function.** The notation serves no function of the books. The distinctions in the prose beside each formula serve functions 2 and 3 as Pairs. The audits serve the vault's own honesty about what the book owes, which is apparatus, and function 5 through the lineage the Loci are owed.

**Expansion.**
1. A Provenance value, or a standing marker, for corpus text: "prior draft (container-built): author-curated, collaborator-written". It sits beside surfaced, not above it, until the author re-owns a sentence.
2. A decision that the formula notation lives in the vault's apparatus, outside the books' system, as a register of inherited constructs.
3. Each formula's prose distinction is promoted to a Pair.

**Instance (a Pair made from a formula note):**
- **Kind:** distinction.
- **Terms:** too much duty / duty with no holding place.
- **The confusion it corrects:** that cutting obligation cures burnout.
- **Where it shows up:** duty cut and exhaustion unchanged.
- **Way in:** "Burnout is not 'too much work.' It's duty with the holding place removed... the cure isn't necessarily less obligation. It's the restoration of sanctuary." (first-telling, quoted in `burnout is obligation minus sanctuary`).
- **Encounter:** the April 2025 season, "I'm a software engineering manager who does 6am-2pm … and I don't want to fucking do it any more" (`the seed arrived …`, quoting the author on 6 April 2025).
- **Notation** (Obligation ⊖ Sanctuary): apparatus, not carried into the Pair.

### 2C. The primary layer: poems and dated first-sayings

**What it is.**
- 6 region notes cite the poems, among them `all six doctrine concerns appear in the first fifteen poems`, `the poems narrate the not yet lived as already known`, `the primary layer states its own limit on atomization`, and `poem four was written in the grammar of remembering …`.
- The origin-story table dates eight first-sayings, from "Kairos rituals … March 2025" to "*Psychedelic* reclaimed on his own life, 1 January 2026" (`the book's honest origin story …`).
- `CLAUDE.md`: "for the fifteen poems that predate the book, a phrase shared with the corpus originates in the poem".

**Why the design cannot hold it.** The design has an origin field only on Figure ("the author, a tradition, or the model"). It has no type for the author's own finished work that predates the books, and no relation for the direction of flow at the level of a phrase. The standing ladder assumes that content climbs toward the books. The poems are already written, outside the books, and the corpus descends from them.

**Function.** Function 6, the author's crossing as an exemplar, stated in the smallest form the record supports: "a man noticed some things, and then found out that other people had noticed them too" (`CLAUDE.md`). Also function 1, because the origin story "doubles as the book's invitation". And the manuscript, because poem lines are already in the author's voice.

**Expansion.** Widen "origin" into a field every type shares, called "first said": the earliest dated statement in the author's life or poems, with its date. Add a relation, "originates in", running from a corpus or book phrase to that first-saying. Register the poems as the author's prior work, whose lines can stand as a Durable perspective's statement at the rung "written (outside the books)".

**Instance (a Durable perspective in the expanded form):**
- **Statement:** "you see, I didn't need / to hear what I already knew— / but it was nice to be vulnerable / enough to recognize the answer / I had always had—".
- **First said:** poems #4, page 4, before the book existed.
- **Originates in** (for the book's front-matter "You already know everything in this book. You've just forgotten. Reading is remembering."): this poem.
- **Crossings it survived:** aletheia and pratyabhijñā.
- **What it cannot see:** the finite it cannot un-forget.

### 2D. Grounding: a second axis the design lacks

**What it is.** The `state:` field and its `privation:` clause: 48 nascent, 17 privated, 38 full. Reading grades appear in the lived-report tension: "Henry was reached at Grade B through scholarly relays … Dzogchen and the Upaniṣadic verses are read at Grade A". Two more habits belong here: the rule "never quote from memory", and the flag on the 2026-08-21 notes that their "thinker-attributions [are] recorded from memory and unverified" (`notes/recognition.md` § The affirmative face).

**Why the design cannot hold it.** The design's Standing records the author's relation to a piece of content. Nothing in the design records whether a surfaced Locus claim or Crossing has been checked against the thinker's own text. The design's Locus has "sources, with page-level addresses" but no reading status. The vault's `state:` measures exactly that and nothing about the author. The two axes are independent: the author's own words sit at nascent, and a Kṣemarāja reading sits at full while the author has not yet raised it.

**Function.** Function 5, keeping company without collapsing it: the company is only honest if each Locus is read in its own terms.

**Expansion.** A fifth shared field, **Grounding**, with the values stated / privated (the missing reading named) / read at the primary text / composted, kept separate from Standing.

**Instance.** A Crossing, "the thing sought is already held":
- Loci: Plato, Pratyabhijñā, Dzogchen, Eckhart.
- **Grounding:** privated, "the founding pair read, Dzogchen's self-recognition and Eckhart's uncreated ground owed" (the concerns family's gloss on `the un-forgetting convergence is wide rather than a coincidence of two traditions`).
- **Standing:** surfaced (a brainstorm of 2026-08-21, per the map).

### 2E. Distinctions with more than two terms

**What it is.** 9 notes (my list):
- the four engines of privation, "subtractive, contractive, never-formed, and anti-privation" (`the book's privative grammar runs four different engines under one word`);
- five theories of where suffering lives;
- trust, paralysis, and foreclosure;
- four counterfeits of focusing;
- three mechanisms of non-persistence;
- two knowing-ladders (five and six rungs);
- the five conditions for recognition.

**Why the design cannot hold it.** A Pair has exactly "the two terms".

**Function.** Functions 2 and 3: the four-engine split is what lets the author's account be placed precisely ("the author's own account fits only the contractive one").

**Expansion.** Widen Pair into a *distinction set* of two or more terms, with a field for the axis that sorts them.

**Instance:**
- **Distinction set:** ways a suffering is named by what is absent.
- **Axis:** what the change does to what is absent.
- **Terms:**
  - *subtractive*: remove what was added (*neti neti*);
  - *contractive*: un-clench a fullness never lost (the malas, which "though uncontracted, appear contracted");
  - *never-formed*: a gap where something did not develop (Hübl, unread);
  - *anti-privation*: a suffering diagnosed by a presence (the Racket, the book's figure for a fixed complaint paired with a fixed payoff).
- **The author's own account:** contractive only (the survey's pointing, not his assertion).

### 2F. Tensions kept live, each with a treatment under trial

**What it is.** 3 tension notes in the region, each with `status: live` and a `treatment:`. For example, the lived-report tension's treatment: "hold the seamlessness as the author's own precision — instantiating vimarśa maximally while declining the analytic distinction that names it". Only the author moves the status.

**Why the design cannot hold it fully.** The design's Remainder keeps open questions and forks visible. It has no field for a treatment under trial, for status, or for what would move the entry. The design's Crossing "yields a Durable perspective or an entry in the Remainder", and these three notes are exactly that yield. Each is the outcome of a Crossing (four traditions on seamless self-knowing; the reframe conversation against Kṣemarāja; the five coaching theories against the formula scheme).

**Function.** Function 7, teaching the exit, and the system's own honesty.

**Expansion.** Widen a Remainder entry with the fields: treatment under trial; status (live, treated, resolved); what would move it; and who resolves it (the author).

**Instance.**
- **Remainder entry:** does the book's praise of the bounded vantage have the tradition behind it?
- **Yielded by the Crossing:** the reframe conversation (3236, 3865) against Kṣemarāja, Pratyabhijñāhṛdayam sūtras 4–10.
- **What survives:** the mechanism, contraction freely assumed and itself consciousness.
- **What resists:** the commendation.
- **Treatment under trial:** "own the commendation of the bounded vantage as the book's move and never cite it as convergence".
- **Status:** live.
- **What would move it:** "Whether the tension's status moves off `live` is the author's act."

### 2G. Counterfeits

**What it is.** 8 notes record what passes for the concern and is not:
- `recognition is the soul's reminder rather than the ego's reward`;
- `recognition is irreversible as remembering but revocable when kept as a possession`;
- `the hollow interaction is illumination that cannot recognize itself`;
- `state and station were distinguished …`;
- the beauty tension (relish that ends with the tasting, against recognition, which is once-for-all);
- the racket;
- `suffering is treated by restoring movement …`;
- and, outside the region, `the pulse has a counterfeit at each phase …`.

The map also names "the three guards the book keeps against counterfeit transcendence".

**Why the design cannot hold it.** The design's Exit is "what treating it as a concern hides". A counterfeit is different: it is a false instance of the concern's event. The design's Figure has a risk field and its Practice has "how it goes wrong", but neither its Concern nor its Pair has a counterfeit field.

**Function.** Functions 2 and 4, and the author's false-peak worry (286).

**Expansion.** A "counterfeit" field on Concern, and a counterfeit for each pole of a polarity.

**Instance (a polarity with a counterfeit per pole):**
- **Poles:** contraction / expansion.
- **Collapse on the contraction side** ("the repair error"): treating "contraction as damage to be removed".
- **Collapse on the expansion side** ("the escape error"): treating "expansion as home to be secured", which "breeds the false peak" (`suffering is treated by restoring movement …`).
- **Counterfeit of expansion:** "the false peak that mimics recognition".
- **Counterfeit of contraction:** "forgetting itself, which is the racket" (`the pulse has a counterfeit at each phase …`).
- **The view that holds both:** restore the oscillation, "not to arrive anywhere".

### 2H. The reader's condition, and rival accounts that imply different books

**What it is.** 4 notes plus the author's own definitions of the reader.
- The map: "The reader the author defined on 2026-08-04 is someone to whom it already happened once and did not last … Three mechanisms are held side by side and deliberately not merged, because they imply different books." The three are `an enormous experience is interpreted by the structure it did not change`, `the plasticity window reorganizes only what attention is on`, and `fractured development is a third account …`; the fourth note is `what the big experience leaves behind depends on what follows it`.
- The author widened the reader on 2026-08-10: "a reference point to ideas that have not yet been explored by the reader — showing depth in parallel to things they might already know but not know how to convey," (`the book is a reference point for a reader already on their way`).

**Why the design cannot hold it.** Book has a single "first reader" field. The design has no place for the reader's condition, for dated redefinitions of the reader, or for a fork of rival mechanisms each of which implies a different book.

**Function.** Function 1, meeting the reader in their sufficiency. Book II's authority, and Book I's cases.

**Expansion.** Book gains "the reader's condition", with dated definitions. The Remainder gains a subtype, "a fork that decides the book's shape", whose branches are held unmerged, each with the book it implies.

**Instance.**
- **Fork:** why the big experience did not hold.
- **Branch 1:** the state was received by a structure it left unchanged. Implies a book about structures.
- **Branch 2:** the plastic window was spent. Implies a book about the weeks after.
- **Branch 3:** the lines never developed. Implies a book about development.
- **Reader definitions:** 2026-08-04 (the reader after a peak); 2026-08-10 (anyone on their way); Book I (facilitators).
- **Who decides:** the author.

### 2I. The concern surfaces, and how they relate to Durable perspective and Passage

**What it is.** Two drafts in the region, four in the vault, all built on the same four sections (`grep '^#'`). Each calls itself one of the "concern-level "durable-perspective surfaces" — the writing-ready ground a drafting session works from" (the contraction surface's opening comment). The log calls them "Book I concern surfaces" (`ops/completed.md` line 33).

**Why the design cannot hold it as a content type.** A surface is none of the design's types.
- It is not a **Durable perspective**. It refuses to state one ("So the durable perspective is not for this surface to state").
- It is not a **Passage**. It is not in the author's voice; it addresses him ("You noticed this first, in your own life").
- It is session-written, so it stands at surfaced.

It is a profile row written out as prose, with the Crossing assembled and the author's Durable perspective left as a blank. Its form performs two of the book's craft moves: it withdraws at the crossing, and it ends on a sentence to be finished "at the mirror".

**Function.** It serves the design's rhythm at the step where the author crosses. It does not itself serve a function of the books. It belongs to the apparatus that serves the author.

**Expansion.** Model the surface as a *view*, not a type: a rendered profile row addressed to the author. Add one relation to the rhythm: "a surface occasions an Encounter or a Durable perspective".

**Instance.** A rhythm record:
- **Surface:** `drafts/recognition — a surface to write from.md` (surfaced, 2026-08-24).
- **Occasioned:** `reflections/on recognition (2026-08-24).md` (his words; believed; "enters-the-book: undecided, and it does not need to").
- **Which changed the framework:** "the objective finding his recognition-sounding surfaced was woven into the notes and families" (`ops/completed.md` line 40).

This answers the design's test for "What is encountered may change the framework" ("When did an encounter last change this?"): on 2026-08-24.

### 2J. The reflections folder: an inviolable voice, and choices among phrasings offered to him

**What it is.** 2 files. The README's rules:
- "His words are inviolable."
- Pointers run one way, from the reflection down into the graph.
- A reflection "grounds no doctrinal inference; a phrase the book shares with a reflection originates in the reflection."

The reflection records its soundings as choices: "Asked to sound his poetic language against specific readings, he chose, of the options offered and of his own sensing:".

**Why the design cannot hold it fully.** The Durable perspective's "statement, in the author's words" has no way to mark three things.
1. That the words may never be edited.
2. That some quoted phrasings ("no two to begin with", "awareness tasting itself", "no 'which' — one event") were offered by a session and chosen by him.
3. That entry into the book is deliberately undecided.

His own framing, "orientation, not doctrine", and his sentence "I cannot say whether this makes it into the book but perhaps it does - whether it does doesn't really matter so much as it gives the orientation where I as author am deriving my feelings from, about it, and through", place the reflection at the rung believed and not at claimed. That is compatible with the design's ladder, but only if the Durable perspective type allows "believed, not offered to the book".

**Function.** Function 6, and the direction of flow "Life → Corpus → Book".

**Expansion.** Durable perspective gains the fields: verbatim (never edited); sounding (phrasings offered, phrasings chosen, his own additions); enters the book (undecided, offered, placed). Encounter gains "whose articulation of the event" (the author's own, or a surfaced one).

**Instance.**
- **Durable perspective:** recognition.
- **Verbatim:** "Recognition - at least to me - one observer of many possible observers of recognition - has felt like a Klein bottle of a mirror…".
- **His own addition:** "It varies - hiding to me feels like too strong of a verb …".
- **Chosen from offered phrasings:** "the world showed its face", "no 'which' — one event", "no, only unregarded".
- **Enters the book:** undecided.
- **Crossings it bears on:** concealment against contraction; the reflexive dyad (the two terms illuminating awareness and reflexive awareness).

### 2K. Material that belongs to the vault's apparatus, not to the books

- The ground-and-frame notes. `the ecology frame transcends and includes the verification frame rather than replacing it` re-seats the vault's own organizing frame; its frontmatter says `state: full` while its body says "held as candidate material and kept nascent".
- The recognition map's size problem: "the list has passed the size at which the doctrine directs a map to divide".
- The concerns family's purpose, "the coverage pivot's deepest single harvest".

These serve the vault's upkeep. By the book-need rule they belong outside the books' system, and the design is right not to model them.

### Corrections to the design

1. **The Sanskrit pairing is settled, and the author declined a welded circuit.** The decisions register records (2026-08-20) that the author "got confused with vimarsa/vikasa": contraction (saṅkoca) pairs with expansion (vikāsa) as the pulse's two phases, and vimarśa is "a distinct element held on its own relevance". In his words: "both hold relevance to our ecology but [I am] not necessarily interested in pairing together vocabulary terms that don't necessarily go together just because". The row adds: "The engine's pieces are held each on its own relevance, not welded into a circuit" (`ops/decisions.md` line 124). This settles the design's Remainder entry on how the terms pair. It removes the ground for Part IV's "seeing the bubble is the reflexive move, vimarśa", which the vault holds as model-elaborated ("the reflexive reading of vimarśa is model-elaborated and awaits his own words", `notes/the learning arc.md`). It also puts in question the design's use of the seven-step Śaiva grammar (7013) as the system's "One shape at four scales". The vault itself keeps that assembly as a candidate: "the assembly itself — this five-term ordering into one loop — is the reframe conversation's own resonant grammar rather than a circuit the tradition states" (`the kashmir shaiva tradition's five principles assemble into one circuit`). (The learning arc still lists the vimarśa question as open, a same-day staleness in the vault.)
2. **Unranking the poles does not by itself answer the false peak.** The design: "A book that lets the reader see both poles as their own movement leaves no high point to mistake for arrival." The vault finds a counterfeit on each side. Expansion has the false peak; contraction has the racket, "a narrowing so habitual it no longer registers as a narrowing" (`the pulse has a counterfeit at each phase …`). The answer needs a test for each pole.
3. **The Heidegger–Landmark lineage and the source of "nothing transforms …" are partly answered.** The design's Locus table: "no lineage to Landmark is claimed". The vault's dated record: "the author did the Landmark Forum in 2017, found it instrumental, and encountered Heidegger and est through it" (`the central correspondence was lived nine years before it was assembled`). His doctrinal disclaimer stands; his route to Heidegger ran through Landmark. The design's Remainder items on that lineage and on where the participation law comes from should point here.
4. **The standing ladder needs three distinctions the vault shows are live.**
   - *Session inference is not the author's inference.* The vault writes "Standing: inferred" on session derivations (`pathology belongs to conditions …`: "Standing: inferred"; `suffering is treated by restoring movement …`: "Standing: inferred from the engine"). The design reserves the rung "inferred" for the author.
   - *Ratified is not "in his own words."* Examples: soundings chosen from options offered to him, "that is the question of my life", "These refusals ring true".
   - *The note on an Encounter can be someone else's.* The sentences the vault quotes for the one confirmed recognition, "You didn’t manufacture worthiness. You stopped standing at the angle where you couldn’t see it." and "The recognition didn’t require the mirror" (split across a line break in the file), are marked [C], the AI's words, at `provenance/provenance fourth addendum.md` lines 139–145. The same holds for "[C] “She is the proof that the love you need exists …" (line 151), which `recognition is irreversible …` calls "The author's side is his own record" and counts as one of two "independent arrivals in the vault's strict sense".
5. **The concern sets differ.** The vault's six doctrine concerns come from the atlas; the design's fifteen come from the transcript. In this region they share only the name *recognition*, and the vault states it as doctrine, not as a question. The design should add Suffering (2A) and should expect doctrine-form concerns in the vault.
6. **The five conditions: the design's attribution is right, and the vault's map is wrong.** The design says the model named them (311). The note agrees ("the list is not attributed to the author whole"). The map's gloss calls them "the author's own catalogue of the conditions under which recognition tends to arise" (`notes/recognition.md` line 137). The note also adds that the fourth condition, a distinction drawn between story and observation, is "the engine the Landmark Forum runs on" (attribution owed). The design's requirement "pairs, named precisely" therefore carries an est lineage.

---

## 3. Unpopulated places

**3.1 The Book I and Book II forms of both concerns.**
- *What exists:* thin. 4 of 153 notes mention Book I or Book II in the two-books sense. The fifth hit is Utpaladeva's "Book I" of his verses. The search was `rg -c 'Book I\b'` and `'Book II\b'` over the region.
- The recognition forms exist only as learning-arc stations and as unlabeled claims.
- The contraction surface asks the Book I questions and has no answers.
- Recognition is absent from the vault's ten-row mirror table (`the two books mirror each other …`), as it is from the transcript's.
- The concerns family's "Enters:" lines address the corpus's one-book arc.
- *Who can populate:* the author, by answering the contraction surface's questions 1–3. The transcript supplies candidate forms: 15455, 16084, 16236; 12812 and 8184 for sufficiency. A drafting session can then label them.

**3.2 Practices for both concerns.**
- *What exists:* 1 practice note (Focusing, felt-shift's). 0 practice notes declare contraction-not-corruption. No note holds "noticing moments of contraction and expansion" (1037; `rg 'moments of contraction'` finds none) or "try this on" as a practice.
- The pieces sit inside other notes: "Bowing to the Gatekeeper" (abridged ch14) inside an image note; the three fold questions inside the master-doctrine note.
- The map's own open work names the four *upāyas* (the tradition's four means) as queued and says the expansion stroke's practice is "unextracted".
- *Who can populate:* extraction from the corpus (abridged ch14; atlas §IV's catalogue); the transcript (1037, 176); a primary reading (the *upāyas*); the author (his own practice, since Book II's authority rests on it).

**3.3 The author's crossing and durable perspective on suffering.**
- *What exists:* absent as a statement. No reflection on contraction; `ls reflections/` shows one reflection, on recognition. The concerns family: "The author's soundings sit ahead of the readings".
- *Who can populate:* only the author.

**3.4 The author's crossing on recognition, stated as what survives.**
- *What exists:* thin. The surface's blank ("Across all of them, what survives their refusals is") is unfilled. His lean is recorded, but not the survivor.
- *Who can populate:* only the author.

**3.5 The Scale and Lens fields.**
- *What exists:* absent. 0 region notes record self, relation, or ecology as a field. "Quadrant" appears in 3 notes, only as a Wilber link.
- *Who can populate:* a drafting session can propose values from existing notes (the attention-crisis notes are ecology-scale; the pathology-to-conditions rule moves the deficit into the "Its" quadrant). The author confirms.

**3.6 The Figure risk field, and a missing figure.**
- *What exists:* 0 of 7 image notes names what its figure over-determines (a search for risk, over-determination, hazard, connotation, misreading, and limit terms hit only the hollow-interaction note). The recognition fable is absent.
- *Who can populate:* a drafting session, for the risks. The fable needs its text found at its source (a primary reading) or supplied by the author.

**3.7 Craft moves as a category.**
- *What exists:* 0 notes vault-wide, against 7 craft-like notes in this region filed as claim or structure.
- *Who can populate:* extraction from the drafts under the existing directive `ops/methodology/craft evidence.md`.

**3.8 Encounters gathered by concern.**
- *What exists:* thin in form. The recognition concern's only confirmed occurrence (4am, 1 July 2026) is filed under genre and relational-field. The archive holds 1 Encounter record (`ls archive | grep -v '^reading —'`), the conversation itself. The retreat, the 2017 room, and the MDMA experience exist only inside notes and provenance files.
- *Who can populate:* the author for new ones; a drafting session can lift the existing ones into records with a "concerns touched" field.

**3.9 Placements and Passages.**
- *What exists:* absent. `supports:` is unused in all notes, and `placements.sh` returns "none — no placements have been made yet".
- *Who can populate:* only the author.

**3.10 Company and Crossing for Sufficiency; Company, Crossing, and Exit for Form.**
- *What exists:* absent or thin (1e).
- *Who can populate:* primary readings (for sufficiency, the 2026-08-21 affirmative-face poles are "owed"); the author for the Crossing.

**3.11 Exits in the author's own words.**
- *What exists:* one ("it was never meant to be an all-encompassing constellation"). Every other exit in the region is session-written.
- *Who can populate:* only the author. This is the design's thinnest column, and in this region it is the gap between a rich surfaced exit and a single authored one.

**3.12 Standing as a field.**
- *What exists:* absent. It lives in prose in 29 notes, in source strings, in speaker marks carried by 2 notes, and in the completed log.
- *Who can populate:* a session can back-fill "surfaced", and mark "author's words" where the source is [D], the transcript's author turns, or an author statement. Only the author raises anything above that.

---

## 4. The three findings that matter most

**1. The vault already runs the design's step from Crossing to Durable perspective, once, and has no field to hold standing, so voice drifts elsewhere.**
- **The step works.** The recognition surface assembled the company with each point of parting kept, named its own blind spots, and left the durable perspective blank for the author. He answered with a reflection in his own words ("occasioned-by: the recognition surface's mirror"). At his direction the finding it surfaced moved the book's founding posture from concealment to contraction, while his words stayed inviolable and outside the claim graph. That is the design's rhythm (Locus, Encounter, the note, Crossing, Durable perspective) working as a prose form. It also answers the design's test "When did an encounter last change this?": 2026-08-24.
- **Without a standing field, voice drifts.** Three instances:
  - The map glosses the model's five conditions as "the author's own catalogue".
  - The AI collaborator's sentence "[C] “She is the proof that the love you need exists …" becomes, two notes downstream, "The author's side is his own record", counted as an "independent arrival" beside Zen (`recognition is irreversible …`).
  - Session derivations carry "Standing: inferred".
- **The vault's `state:` measures a different thing.** It measures reading, so the author's own sentences sit at "nascent". The design's Standing and the vault's grounding are two axes, and the books need both.

**2. The theory of suffering is a whole concern the design lacks, and its material improves the design's founding polarity.**
- **The size of the gap.** Contraction-not-corruption holds 48 notes. It has a live question ("a fold to open, a wound to be borne, or a condition to be changed"), an ethical exit sharper than any in the design's grid, encounters (the protective structure met over years, the burnout season), company read at primary texts, and a Crossing that locates exactly where the book departs from its tradition ("the tradition supplies the book's **mechanism** and withholds the book's **valuation**"). "Suffer" occurs 0 times in the design.
- **What it corrects.** The region's newer notes turn the corpus's fold-to-open doctrine toward the design's unranked poles: suffering "is treated by restoring movement rather than by achieving a state", which names the collapse on each side. They also show that each pole has its own counterfeit: the false peak for expansion, the racket for contraction. Unranking alone does not answer the author's false-peak worry.
- **What the author himself settled.** He closed the Sanskrit-pairing question on 2026-08-20 and declined a welded circuit. The design's Part IV reading and its "One shape at four scales" table should follow him.

**3. In this region the two books are nearly empty, and so are practices.**
- **Book I and Book II.** Only 4 of 153 notes mention either book. The surfaces are called Book I surfaces but address the 2026-08-04 reader, the one after a peak. The concerns family routes both concerns into the corpus's one-book arc. No placements exist.
- **Practice.** Contraction has 0 practice notes, and recognition has 1, borrowed from felt-shift and resting on the demoted primitives.
- **The rest of the row is full.** Company, Crossing, Encounter, and Exit are full for both concerns, mostly by sessions working at primary texts.
- **What would fill the gaps.** The empty columns are the ones the author and the manuscript must fill:
  - the author's answers to the three Book I questions the contraction surface already asks;
  - the Book II forms, which the transcript supplies as candidates at 15455, 16084, and 16236;
  - practices, which the corpus already contains ("Bowing to the Gatekeeper", abridged ch14) and the transcript names (1037, 176).
- **The word "evidence".** The vault's top-level spine calls the company "Book I-shaped evidence". That runs against its own stance ("Company, not proof") and against the design's drift 2. The word should change before a Book I drafting session reads it as a license to argue from the company.