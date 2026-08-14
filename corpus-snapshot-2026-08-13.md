# Corpus snapshot — 2026-08-13

*A whole-vault survey at altitude: what this repository is, what the book inside it claims, how it came to be, and how the machinery that holds it works — as the files stood on 2026-08-13.*

> **What this is, and how current.** This is a point-in-time gloss of the entire `book-research` vault, written to give a later agent or reader the shape of the whole before they descend into any part. It was assembled on **2026-08-13** at git HEAD **`11fe434`** (the merge of PR #17, "research-repo-survey"; 1,145 commits; ~15 MB; 448 markdown files), from five parallel read-only surveys of the doctrine notes, the structural notes, the operational spine, the making/provenance layer, and the machinery. The **last substantive content work logged in `ops/completed.md` is dated 2026-08-10**; the three days since are quiet. Nothing here was changed in the making of this file — it only reads and reports.
>
> This snapshot will age. The surfaces that move fastest are named at the end (§XI). The durable law is `CLAUDE.md`; the live state is `ops/orientation.md` and `ops/goals.md`; where this gloss and those files disagree, **those files win and this file is stale**. Keeping it current is the author's to drive.

---

## I. The corpus in one breath

The repository is a **research vault for a book** provisionally titled *Firing on All Cylinders / Aletheia*, about the structure of inner life. Three words are kept distinct throughout, and the distinction is load-bearing:

- **the book** — the manuscript, mostly unwritten as finished prose, whose doctrine and arc the vault serves;
- **the corpus** — the seven documents in `sources/` that describe or draft the book, taken together, plus an eighth beneath them;
- **the vault** — this repository: 303 files in `notes/` holding one proposition each, connected by wiki links, gathered by twelve topic maps, processed by a fixed six-phase pipeline, and governed by the standing law in `CLAUDE.md`.

Beneath the corpus sits its **primary layer**: `sources/the poems.pdf`, sixteen poems the author has written across a lifetime, which the corpus quotes and not the other way around. The direction of that quotation is the smallest, hardest fact the whole vault is built to protect (§V).

The book's own front matter states its entire doctrine in three sentences — quoted across the descriptive sources: **"You already know everything in this book. You've just forgotten. Reading is remembering."** The vault exists to bring that book to the page without letting the apparatus of research displace the writing. Its own rule for itself is the book's rule, borrowed: **"the archive preserves; the orchard ripens"** ([[ripeness is not refrigeration]]).

---

## II. Why this vault is strange — the recursion

Most research vaults sit *outside* their subject. This one is folded into its subject, because the book states one law about itself and the vault inherits it. The book's law is **"the book performs what it describes"** (recorded at [[the book performs what it describes]], anchored `atlas §X`: "Every device below is that law enacted, not decoration"). Understanding the vault means seeing where it, too, performs what it describes. Six recursions run through everything below; a later agent who holds these will read the rest correctly.

**1. The performing law, inherited.** The book enacts its arc rather than only explaining it — concepts are lived before they are named, pacing carries the reader through the movement the chapters describe, and "the last line is written so that it can be answered." The vault runs the same law at its own scale: claims are atomic (one proposition per file, the filename *is* the claim), tensions are tracked rather than resolved, and every claim names its sources. The vault is a small working instance of the book's own discipline.

**2. Noticing first, company after — one shape at four scales.** The origin story the record supports is **"a man noticed some things, and then found out that other people had noticed them too"** ([[the book's honest origin story is noticing first and finding company after]]). That single shape recurs: it is the book's *argument* (convergence among thinkers is company, never proof); it is the *authorship* (the author said the plain thing first, in his own words, and the scholarship arrived afterward and dressed it); it is the *reader's invitation* (the reader has also been noticing things without knowing the noticings had company); and it is the vault's *research method* itself — the reading queue notices a claim, then goes to the primary texts to find who else arrived at it. The book, its making, its reader, and its research all move in the same direction.

**3. The single privative grammar.** The book's deepest structural discovery about itself is recent — reified only on **2026-08-10** as the flagship note [[the book reads deep change as uncovering rather than addition]]. Every one of the book's central words is a *privative*, a subtraction: Heidegger's *aletheia* is un-concealment (*a-lēthē*, un-forgetting); the Pratyabhijñā school's recognition is un-forgetting of what never left; suffering is un-folding, not repair ([[suffering is contraction never corruption]]); and *psychedelic* is reclaimed as "soul-manifesting," the concealed becoming visible ([[psychedelic names a movement not a substance]]). The author named the pattern in his own voice: "the book runs on a single privative grammar, and it never says so." That the vault discovered this about the book only twelve days after generation shows the research is genuinely generative — it is still finding the book's own grammar.

**4. The click can lie — a check can be gamed.** The book's sharpest internal honesty is [[felt shift versus felt confirmation]]: the bodily "yes" that is supposed to certify truth can be produced by fluent prose responding to *the sentence* rather than to *the world* ("The click can lie"). The vault applied that same suspicion to itself. On 2026-08-09 it **retired its own register-enforcement machinery** — the tripwires that once stamped the prose register at fourteen surfaces — on the reasoning that a well-formed sentence can satisfy a check while withholding a claim, exactly as fluent prose can satisfy the body. The register is now held as a stance per sentence, not verified by a gate. The methods map records the general form: "a well-formed note can read as true because it is well-formed."

**5. Convergence is company, never corroboration.** The corpus reports zero disagreement among the traditions it loves. The vault keeps, permanently, the counterface: that zero-disagreement is a **selection artifact** — the lineages "were gathered on one day for the property they are then reported to share" ([[the unanimity claim is an artifact of how the lineages were selected]]). The vault's strongest evidence class (the isomorphs, §IV) is therefore never allowed to overstate itself; refusals are kept intact so a thinker survives being cited rather than being pressed into a case.

**6. Volume is not centrality — the center defended against the grain.** The corpus's page-count overweights the elaborate system (the triad, the primitives, the molecule formulas), and therefore so does semantic retrieval and every coverage table built from it. But by author decision (2026-08-02) **the system is scaffolding, not the centerpiece** ([[the system is scaffolding rather than the centerpiece]]); the centerpieces are the convergence of thinkers and the lived practice. So the vault must actively hold a center of gravity that its own search machinery keeps pulling away from — "volume in the corpus is not centrality in the book" (`ops/methodology/center of gravity.md`). This is the single most important thing to know before trusting any retrieval over this corpus.

These six are why the vault reads as it does. The rest of this snapshot is detail hung on that frame.

---

## III. The book

### The thesis and the arc

The book walks its reader through the multi-step arc of a psychedelic experience — **preparation → onset → deepening → peak → descent → integration** — with no substance involved, because *psychedelic* is reclaimed to its Greek root *psychē-dēlos*, "soul-manifesting": a movement, not a molecule, "available on an ordinary Tuesday" (`first-telling: the word it reclaims`). Its vehicle is a stay in a house whose rooms are the ideas, made walkable — the corpus's "House with No Ceiling," glossed "transcendence with plumbing," a whole open to the stars but floored, walled, doored, and kitchened, which pre-loads the book's refusal of renunciation. The stay runs sixteen days and follows van Gennep's rite of passage (separation → threshold → reincorporation); "the book is the medicine it describes; the reader who finishes is not the reader who began" (`walked X`).

The book's foundation is a convergence two traditions reached with no historical contact, recorded at [[aletheia and pratyabhijna converge on truth as un-forgetting]] (category `isomorph`, the vault's strongest evidence class):

- **Heidegger's *aletheia*** — truth as un-concealment, an event rather than a correct statement;
- **the Pratyabhijñā school of Kashmir Śaivism** — liberation as recognition, "recognizing what was always there and never left."

The convergence is held with its refusals intact, which is the vault's whole method. Heidegger himself *retracted* the equation of *aletheia* with "truth" in 1964 ("aletheia… first grants the possibility of truth"), and the vault keeps that retraction as "the isomorph's most important footnote." The independence of the two traditions from each other is untouched; what required dating is the *book's* independence from the teaching, because the pairing was presented to the author on 1 July 2026, three months after his first formal contact with Kashmir Śaivism (the Hridaya retreat, 19–22 March 2026). The strongest clean repair is Wittgenstein, who reached the same concealment structure with no Heidegger ([[the always-there hides by being always there and wittgenstein said so without heidegger]], anchored to *Investigations* §129). The sharpest standing opponent is Steven Katz's constructivism, whose blade "lands on convergence held as proof and leaves the strength this note is stated at… standing."

### The six doctrinal wells

Six topic maps (`type: moc`) hold the book's doctrine, each gathering its claims by theme and closing with a "What remains" section of open work.

| Well (map) | The concern | Sharpest claims (exact titles) | The live debt |
|---|---|---|---|
| **recognition** | truth as un-concealment; the deepest well | [[psychedelic names a movement not a substance]] · [[reading is remembering]] · [[the tuesday is the temple]] (the householder axiom) · [[what is recognized cannot be un-recognized]] | Ferrer's participatory pluralism — do the traditions' *destinations* differ? — unresearched |
| **contraction-not-corruption** | the theory of suffering: "Nothing in you is broken. Something in you is folded." | [[suffering is contraction never corruption]] · [[the diagnosis contains the cure]] (the privation principle) · [[every discrimination the molecule formulas are credited with is made by the prose beside them]] | Aristotle's *steresis* and the "affliction objection" (some suffering is a presence to be borne, not an absence to be filled); [[nihility may be a station the contraction scheme cannot represent]] |
| **felt-shift** | the epistemology and the practice curriculum; "nothing enters the lattice the body has not countersigned" (`atlas §III`) | [[felt shift versus felt confirmation]] · [[a genuine felt shift changes what can be said next]] · [[the basic practice posture is a point of return rather than a state]] (the Stance) | [[introspective access is the felt shift's undefended premise]]; Gendlin's *A Process Model* unread; the counterweights (processing-fluency, interoception) still being sourced |
| **container-anatomy** | the structural theory: every container is Wall + Door + Floor, making an open center possible; deliberately scaffolding | [[the triad is the anatomy of every container]] · [[the open center is made possible by the three structures and identical with none of them]] · [[ordinary names keep the deepest structures visible]] | Goffman's total institutions have all three structures and a dead center — the anatomy "describes prisons as accurately as sanctuaries"; upper layers closed *by decision*, not backlog |
| **relational-field** | the deepest and most exposed claim: "the field between two people does work" — a real participant that metabolizes what neither person can alone (the "Third Entity") | [[nothing transforms from the audience]] · [[transformation is enacted participation inside a held container]] · [[grief cannot complete alone]] · [[a codex is a one-chair technology making a two-chair argument]] | [[the participation law has no opponent and its oldest objection is that participation is contamination]] |
| **answerability** | the publication concern: a word "at madhyamā can be perfected forever; a word at vaikharī can be answered" (`atlas §VI`, "the blade of the whole corpus") | [[seventeen chapters rest at madhyama]] · [[ripeness is not refrigeration]] · [[the perfectible conversation is the manuscript's most comfortable room]] | Cavell's knowing-vs-acknowledging and Kabir's breath-borne corpus, unresearched. **The vault exists in service of this map.** |

The structural tension of the whole book lives in the fifth well: the book's deepest claim is that transformation happens *between* people, and reading is solitary. The relational field also carries the book's **largest measured support** — [[the participation law has measured support at a scale nothing else in the book approaches]] — from the therapy alliance-outcome literature (§VI), which bears directly on whether a letter can carry a working relationship.

### The figures, and the discipline that governs them

The corpus speaks in figures; the vault speaks in plain concerns and keeps a crosswalk, `notes/figure glossary.md` (an `image`-category document, not a map): "When a source uses the term on the left, it denotes the vault concept on the right." Twelve figures are quotable book content — among them the whole-book house ("transcendence with plumbing"); the orchard ("composting is not death. It is return to potential," source of the five state-names); the gold thread (the continuity image, and literally *sūtra* = "thread," so "the book is strung on the line it describes"); the protective part met "with a bow, never a fight" (the "Gatekeeper," which is also the anatomy of the bad trip); and the book's page-one self-image, "a tuning fork… It only sounds when struck against something. You are the striking surface," which governs the answerable ending.

Three standing directives keep these figures honest, and a later agent must apply them: **name the unit, never the number** (`reference by name.md` — numbered chapter reference asserts a settled progression that does not exist); **hold every name as a candidate** (`naming and epistemic humility.md` — the figures are candidate labels for concerns, not the concerns, "nothing about the book is settled, its foundations included"); and **keep the reference surface denotative** (`vocabulary policy.md` — the narrative vocabulary is graph *content*, never metadata).

### The reader, the genre, and the chosen form

The deepest thing the vault has learned about the book is its honest relation to its reader: **the book can only be auxiliary to a sovereign reader** ([[the book can only be auxiliary to a sovereign reader]]), an instrument in service of a life that stays the reader's own, never an authority. Three of the author's own sources converge on it — a decade-old letter's grammar ("my kickstand… my jumper cable… my blank page"), Rosa's resonance theory, and the author's facilitation craft ("the facilitator proposes and the field disposes"). The practice lineages close the loop from the reader's side: [[nothing transforms from the audience]] — "including this book's."

The book's native genre is therefore **the letter from a friend read alone** ([[the book's native genre is the letter from a friend read alone]]). The one confirmed sighting of the book's promised event — recognition arriving — happened at 4am on 1 July 2026, the author reading a letter a beloved friend had written him a decade earlier, alone, no reply possible: "The recognition didn't require the mirror." A letter is the one genre whose every sentence expects an answer, and "a letter's completion is its sending."

Accordingly, the book's **chosen form**, settled by the author on 2026-08-08, is a **correspondence of twelve-to-twenty dated letters that end by being sent**, with the reader answering between them (`ops/correspondence program.md`). The grammatical person is closed to "I addressing you" for that execution (it reopens if the form is abandoned). The first letter already exists in `drafts/`, carrying no thinkers and no framework, "because the company arrives in later letters exactly as it arrived in the life — after the noticing."

---

## IV. The company — interlocutors on two axes

Thinkers are notes (`category: interlocutor`; **65 of them**), sorted on two orthogonal axes plus a third field. The **`seat:`** records what a thinker *does* for the book; the **`load:`** records what the book *loses if they leave*; the **`discipline:`** records where they got their epistemics. The load axis is the more important, and the reason it exists is itself a recorded lesson.

**Why the second axis exists.** Sorting the company by contribution answers what someone brings and never asks what happens to the book if they go — which is how the book's entire verification standard came to rest on a single name, **Gendlin**, filed among twenty-eight builders of enterable structure ([[the verification standard rests on one name and cannot be defended by company]]). The `load:` axis was added by author decision on 2026-08-05 (`thesis-bearing and company.md`) precisely to make that kind of single point of failure visible.

**The standing rule: the vault recommends, the author seats.** Of the 65 interlocutors, only **8 carry a decided seat**; the other **57 are literally `seat: candidate`**, each with a recommended seat in its evaluation but no placement. The seating decision belongs to the author and has not been made at scale. This is the single most important caveat over the whole roster — it is a shelf of proposals, not a settled cast.

The eight seated: **Kṣemarāja** and **Utpaladeva** (`source-tradition`, thesis-bearing — the Kashmir Śaiva far pole of the founding convergence); **Heidegger** (`speech-acts`, thesis-bearing — the near pole); **Dōgen** (`reference-lineage`, thesis-bearing — practice and realization are one, seated 2026-08-10); **Werner Erhard** and **Karla McLaren** (`speech-acts` / `emotion-work`); **David Loy** (`reference-lineage`, but `load: adversary` — an ally-sounding clause over an adversary load); and **Rilke** (`chapter-patron`).

The candidates, grouped by the load they carry (the meaningful partition):

| load | count | what they are to the book | representative names |
|---|---|---|---|
| **precedent** | 15 | the book's constructs, arrived at earlier under other names | Aristotle (privation), Rogers, Maslow, Reich, Marcia, Minuchin, Erikson, Lewin, Whitehead, Csikszentmihalyi, Hofstadter, Wilber |
| **adversary** | 14* | the resistances the book must survive | Katz, Gellner, Schwitzgebel, Nisbett & Wilson, Meehl, Britton, Wierzbicka, Burke, Robbins (the voluntarist pole) |
| **independent-arrival** | 12 | outside witnesses to the book's isomorphs | Wittgenstein, Polanyi, Garfinkel, von Foerster, Schön, Johnstone, al-Qushayrī, Hübl, Ubuntu personhood, Hasidic *avodah be-gashmiyut* |
| **thesis-bearing** | 8 (incl. seated) | remove them and a load-bearing claim falls | Gendlin, Buber, Alexander, Joe Hudson (+ the four seated) |
| **names-existing-practice** | 2 | they named what the book describes as lived practice | Daniel Ingram, Henry Corbin |
| **no load assigned** | 14 | evaluated before the load axis existed — empty cells are reading questions, not verdicts | William James, Bateson, Rosa, Internal Family Systems, Kornfield, Caputo, Ratié |

*(\*adversary = 13 candidates plus the seated David Loy.)*

The **`discipline:` grid** (`scripts/queries/lineage-sort.sh` crosses it against load) is assigned for 51 of 65 and carries a telling empty cell: **`poets-and-artists` is 0** — Rilke, the one poet, carries no discipline. An empty cell is a reading question, per the axis's own rule. Three rules hold the whole apparatus: the axis **allocates reading and never ranks evidence** (so the authorial stance governs prose unchanged); a load assignment is the grid's proposal until the author makes it; and **`company` is not a lesser standing** — it is the largest group by count, and its only failure mode is being mistaken for the argument.

---

## V. The making — how the corpus came to be

The record of the making runs deeper than the corpus, and it settles the direction of flow. The provenance layer (`provenance/`, held as "works consulted" by author decision, cited with speaker marks [D] for the author / [C] for the collaborating model) reconstructs four strata:

1. **The poems first — a lifetime of them.** The corpus quotes the poems, not the reverse. "the youngness is just beginning" is the ending of `poems #5`, borrowed later by the drafting thread, not a book line the poem took. Poems 1–15 predate the book; `poems #16` is the author's flagged exception, flowing the other way (the book's language returning to the life). The bridge is documented: `provenance/poetic voice system prompt.md` is the author's own prompt, distilled from his first fifteen poems, which "fed into how the book was authored."

2. **Then the figures — the April 2025 seed.** On 9 April 2025 the seed's opening pages already existed, with the house, the gold thread, and the gatekeeper fully formed and the fourth wall already broken by page two. Its one written chapter was authored through a voice distilled from the poems. The seed's composing venue and duration are off the record — "every question about the figures' true origin bottoms out at that wall."

3. **Then, separately, the system.** The triad (Differentiation / Relation / Persistence — later Wall / Door / Floor) appears "fully formed, axiomatized" on **8 December 2025**, inside a different project (an ontology-engineering effort), **three months before** the author's first formal contact with the Trika tradition the triad rhymes with. The structure came first in his own work; the tradition it is named for arrived afterward.

4. **Then the welding — July 2026.** The corpus's headline sentence — "transformation is enacted participation inside a held container — word said aloud, witness present" — first appears on 7 July 2026 in the collaborating model's voice, immediately after the author's own commissioning turn choosing the lineages and naming their axis himself. The whole corpus compiled in a single month.

The **division of labor** is recorded plainly: the author supplied the seed, the lived practice, the Heidegger/EST/Landmark cluster (lived in 2017, "seated as a household" nine years before it was assembled), the coach names, the triad, and every veto and commissioning instruction; the collaborating model supplied nearly all the connective prose, the genealogies, the deep Kashmir Śaiva teaching, and the named correspondences (*sūtra* ≈ thread, *mātṛkā* ≈ alphabet, Trika ≈ Triad, *aletheia* ≈ *pratyabhijñā*) — "plus the law's sentence and its unanimity claim."

Two honesty rules fall out of this record and do not expire. First, the corpus's zero-disagreement framing is a **selection artifact** (§II.5). Second, the making itself **ran the law the book states**: at every documented scale the material was container-built, the author holding the frame while the writing became more fully itself inside it ([[the making of the book enacts the law the book states]]) — which answers "did you live this?" and proves nothing further, exactly as the stance requires. Seven specific overstatements by the collaborating model are catalogued and flagged in `provenance/provenance of the corpus.md` (the universalized "the poem came first… as confirmation," delivered "in a consoling register on a hard night"; the count-drift rescue; imported affect; and others), so the vault can quote the corpus without inheriting its enthusiasm.

The tenderest material is `provenance/provenance fourth addendum.md` — the "Alise thread": the gold thread is "genealogically the Alise thread, re-owned" ([[the gold thread is the rainbow thread re-owned]]), converting "rainbow thread through someone else's eye" into "gold, because you are the seamstress now." Her decade-old letter carries the "kickstand… jumper cable… blank page" grammar the auxiliary-to-a-sovereign-reader doctrine descends from, and it is the letter read at 4am (§III). The reclaimed word is autobiographical too: the hinge sentence "To just be with the psyche until it becomes delic" is the author's own, dated 1 January 2026 — eleven weeks before the retreat, "before it was either" scholarship.

**Personal material is admitted under three conditions** (`personal provenance.md`, author decision 2026-08-03): own it, do it delicately, in honor of what is becoming — "the whole lifeblood of the book, not just the disembodied contents." And **the primary material governs the corpus** (`the primary material.md`, 2026-08-05): the research "is and has always been about the primary material… not the sources I've provided, which indicate an imperfectly potentiated form of the essences." A completed reading of a thinker's own work outranks every corpus paraphrase of that thinker — which is why the reading queue (§VI) exists.

---

## VI. The evidence — sources and readings

### The eight sources

Each source carries a provenance note in `archive/` recording its standing and extraction state. The **standing** governs how its evidence is read.

| Cited as | Document | Standing | Note |
|---|---|---|---|
| `atlas` | the whole field – gravitational atlas | descriptive | maps the field in twelve sections with a six-glyph notation; large regions (§III–§V, §VII, most of §IX) still unextracted |
| `walked` | the whole field walked | descriptive | the same territory at walking pace; the better source for a claim's *statement* layer |
| `first-telling` | the first telling | descriptive | the book presented to a first reader; source of record for the disclosed failure modes |
| `space-around` | the space around | descriptive | the outward survey that supplies the vault's research method and candidate list |
| `arc-gloss` | the arc and the gloss (2nd ed.) | **draft** | storyboard of a 15-unit arc; primary for both convergence findings |
| `abridged` | firing on all cylinders – abridged edition | **draft** | 49 pp of continuous prose — the **only document that executes the arc** |
| `mythic-os` | firing on all cylinders – a mythic operating system | **draft** | the **earliest state** (April 2025); 28-unit contents, one chapter written; the author's named high-water mark of voice |
| `poems` | the poems | **primary** | sixteen poems beneath all the rest; cited by number |

A **descriptive** source describes the book from outside; a **draft** is a state of the manuscript itself, quoted for what it says and never credited for what it argues, with disagreements between drafts recorded rather than resolved; the **primary** source stands beneath both. One caveat compresses the evidence: two of the descriptive sources name `arc-gloss` in their colophons as a thread they were compiled from, so **agreement among those three counts once, not three times** ([[the atlas was compiled from the arc and gloss treatment]]).

### The twenty-two primary readings

The vault has completed **22 primary readings**, each producing a reading record in `archive/` (named `reading — <author>, <work> (<year>).md`) and citing the work by its own stable locators. The three that anchor the rest:

- **Gendlin, *A Theory of Personality Change* (1964)** — the first reading (2026-08-05). It narrowed the verification standard at its source: the felt shift certifies **carrying forward, not correspondence** (`Gendlin 1964, fn. 9, def. 11`), and Gendlin's own footnote settles the solitary question *against* the solitary reader ("often possible, though always unsteady and difficult… by himself"). This reading is why the book's verification standard is now held at "its real size" — movement, not truth.
- **Flückiger, Del Re, Wampold & Horvath, *The Alliance in Adult Psychotherapy* (2018)** — the **largest measured support any claim in the book has**: alliance–outcome *r* = .278 across 295 studies and 30,000+ patients, holding at the same size (*r* = .275) for internet-based, largely *written* therapy — which bears directly on whether a letter can carry a working relationship, while leaving open the transfer to a reader alone with a text.
- **The tier-1b privative-grammar sweep (2026-08-10)** — sixteen readings in one day (Dōgen's *Bendōwa*, *Daodejing* 11 and 28, Aristotle *Metaphysics* IX.6, the *Bṛhadāraṇyaka* on *neti neti*, Pseudo-Dionysius, the Philippians *kenōsis* hymn, Lurianic *tzimtzum*, and more), each moving a privated note to full and together establishing the single privative grammar (§II.3) as an independent arrival across many traditions.

The readings are graded by depth (whole primary text / bounded via encyclopedia with primary pagination / scholarly-secondary / abstract-only), each records "what the reading did not settle," and several were author-directed rather than queue-driven.

### The reading queue and the concordance — the two standing engines

The **reading queue** (`ops/reading queue.md`) is the vault's standing instrument for converting corpus paraphrase into read primary text. Every entry is a **question that can fail**, with a named stake, a page-level address, and a graded standing (the five properties of a sharp question, `sharp questions.md`). It is tiered by load-bearingness: Tier 1 defends the verification standard (Katz reseated; the Gendlin remainder), Tier 2 tests the privation convergence (Marcia, Minuchin, attachment, the malas mapping), Tier 4 traces the settlement's ancestors, and Tier 5 holds the cheapest large corrections (Britton on contemplative adverse effects, "the book's most defensible criticism").

The **chapter concordance** (`ops/chapter concordance.md`) holds the drafts against each other, keyed by the **named unit** so the drafts' different orderings sit as columns. Five directed relations, deliberately unglyphed, carry the differences — *carried unchanged into*, *revised into*, *compressed into*, *dropped at*, *added at* (e.g., the "Time Is Not Linear" poem is *compressed into* the house unit in `abridged ch1` from `mythic-os: page 9`; the triad's corner names are *revised into* `atlas §II` from the drafts). The one structural disagreement the concordance cannot hold open indefinitely: the fifteen-unit arc concentrates a peak where the earliest twenty-eight-unit contents distribute transcendence as a standing theme ([[the earlier contents distribute transcendence where the arc concentrates a peak]]).

---

## VII. What the book holds open — tensions, questions, and the clearing

### Tensions (doctrinal, in `notes/`)

The vault holds **28 tension notes** — **21 live, 7 treated, 0 resolved** — and the zero is by design: **resolving a tension is the author's act, made in the writing, never the vault's**. A large live count is health, not backlog; a tension "earns its openness by naming what would close it" ([[the drive to closure has measurable costs]]). Doctrinal tensions live in `notes/`; operational tensions (the vault contradicting its own methodology) live separately in `ops/tensions/` and are never mixed with them.

The live tensions that most shape the book:

- [[a codex is a one-chair technology making a two-chair argument]] — the book argues transformation is relational, yet a book is read alone; treatment under trial is "the Second Chair," the book designed as one half of a pair.
- [[seventeen chapters rest at madhyama]] — a full prose draft exists but rests unreleased, "perfectible forever, and therefore safe, and therefore, in a precise sense, not yet real"; treatment is one pilot chapter, fully treated, sent to two real readers (reader one already exists — the friend the first-telling was written for). This is the author's tension to resolve, and the vault's whole current effort ripens toward it.
- [[felt shift versus felt confirmation]] — the click can lie; treatment is plain-prose passes as a counterfeit check, titration for muted signals, and the relational field as a second check.
- [[the participation law has no opponent and its oldest objection is that participation is contamination]] — the book's most-supported claim has no seated adversary; the objection (institutionalized in blinding and randomization) is unread here.
- [[reader sovereignty has an unstated exception at destabilization]] — the book insists the reader is sovereign, yet the practice literature records casualties; treatment is a division of labor between a verifying mirror and a pre-committed outside contact with standing to overrule at crisis points.

### Open questions and the clearing

Six `open-question` notes hold forks the book keeps open deliberately, each stating what each branch would cost (e.g. [[the topology only exists where it is being performed]]; [[the householder claim has no witness outside the indic world]]).

The **clearing** (`ops/clearing.md`, added 2026-08-09) is the vault's most unusual instrument: an **inverted-admission register** where a thing enters *because it does not yet fit* — protected from the writing test — so the center of gravity does not become a filter on what can be seen. It names **four structural blind spots** of the book's own center, and the author's poems stand in all four:

- **the singular** — the center prizes *convergence*, a second arrival, so a once-only insight has no company by definition;
- **the embodied** — the felt shift makes the body an instrument that *certifies*, so a bodily reality that certifies nothing has no standing;
- **the finite** — the center reads change as *disclosure of the already-present*, so it "has no organ for what actually left and stays gone: death, irreversible loss";
- **the non-human** — a company of thinkers and a human recognition-field has "no chair" for the cat, the land, the creature that witnesses grief without holding a thesis.

Three of the four **graduated into the ordinary graph on 2026-08-10** after the tier-1b sweep gave each a chain-link note and an independent-arrival note (the finite via Heidegger and Buddhism, the non-human via Buber and Abram/Kimmerer, the embodied via Merleau-Ponty). The singular has not graduated — it remains held as frontier, chiefly the felt shift's one-name problem.

---

## VIII. The machinery — the vault as a running system

The vault was generated from the **ars-contexta derivation engine, v0.8.0, on 2026-08-01**. Its configuration is fixed in `ops/config.yaml` (dimensions: atomic granularity, flat organization, explicit linking, heavy processing, three-tier navigation, condition-based maintenance, dense schema, full automation), reasoned in `ops/derivation.md`, and served to the skills at invocation by `ops/derivation-manifest.md`.

**The pipeline.** Material never enters `notes/` outside a phase. Raw capture lands in `inbox/`; source PDFs stay in `sources/` (immutable, never moved) and receive a provenance note in `archive/`; claims are produced by `/reduce` and connected by `/reflect`. The six phases: **Record** (manual) → **Reduce** → **Reflect** → **Reweave** (the backward pass) → **Verify** → **Rethink** (which challenges the system's own configuration).

**The skills.** Seventeen live in `.claude/skills/`, versioned with the vault so they load in any session here. Sixteen were generated (`/reduce`, `/reflect`, `/reweave`, `/verify`, `/rethink`, `/seed`, `/pipeline`, `/ralph`, `/tasks`, `/next`, `/stats`, `/graph`, `/validate`, `/learn`, `/remember`, `/refactor`); the seventeenth, **`/recompose`**, is vault-native, hand-written on 2026-08-06 to rewrite finished prose to the register without changing what it claims — its one law is "the register changes and the claims do not." Each generated skill now consists only of a "THIS VAULT'S… (overrides…)" block plus a footer; the ~290 KB of upstream stock text that once sat beneath each was removed on 2026-08-09 because it described a different vault.

**The hooks — as actually wired.** `CLAUDE.md` and `README.md` still say "six wired hooks," but as the files stand, `.claude/settings.json` wires **three commands across two events**, backed by **five scripts** (two of them shared helpers). This is observed drift worth recording:

- **SessionStart** → `session-orient.sh` — the orientation injection: it prints `ops/orientation.md` first (the masthead — the center before the backlog), then the file tree, the newest `ops/completed.md` entry, `ops/goals.md`, *all* methodology descriptions, unchecked reminders, and the maintenance conditions, saying so explicitly when nothing fires.
- **PostToolUse** (Write|Edit) → `write-validate.sh` (a non-blocking schema warning) then `auto-commit.sh` (async `git add -A && git commit --no-verify`, gated on the `.arscontexta` marker).
- Helpers: `vaultguard.sh` (resolves the vault root and checks for the `.arscontexta` marker) and `read_config.sh`.

The "six" reflects the original stock design, which included a Stop-hook session capture that was **removed on 2026-08-09** (with `ops/sessions/` gone and `session_capture` now inert). A leftover compiled artifact, `scripts/queries/__pycache__/register-tripwires.cpython-311.pyc` with no source present, is the fossil of the retired register-enforcement apparatus.

**The queries.** Fourteen ripgrep/python scripts in `scripts/queries/` answer structural questions without touching content — among them `link-check.sh` (every wiki link resolves to exactly one file; `--count` feeds the session hook), `map-membership.sh` (reconciles each map against notes' `topics:` fields — a verifier, never a generator, because the maps are hand-curated with bespoke glosses), `frontmatter-parse.sh` (the only check that actually parses YAML — before it, a fifth of the graph carried unparseable frontmatter unnoticed), `decided.sh` (greps the decisions register so settled questions are queried rather than re-litigated), `lineage-sort.sh` (the discipline × load grid), and `clusters.sh` (the graph's own communities). At the top level, `bootstrap.sh` restores tools in a fresh container and `extract-sources.py` renders every source PDF to a gitignored `.corpus/*.md` with `===PAGE n===` markers so a hit traces to a citable page.

**The schema.** Five templates in `templates/` are the authoritative source of truth. A claim note requires `description` and `topics` and carries an eight-value `category` (`claim`, `isomorph`, `tension`, `open-question`, `image`, `practice`, `structure`, `craft`), a five-value `state` (`nascent`, `privated`, `full`, `flourishing`, `composting`), and — on tensions only — `status`/`treatment`. An interlocutor requires a twelve-value `seat` and carries the six-value `load` and twelve-value `discipline` axes. (Note the schema defines a `craft` category, but **zero `craft` notes currently exist** — the sixteen that once did were retired on 2026-08-09 as the mechanism-not-verdict discipline was folded back to the drafts.)

---

## IX. The present moment

**The center of gravity** (masthead, `ops/orientation.md`): the two centerpieces are the convergence of thinkers, "quoted with their refusals intact," and the lived practice, "verified in the body"; the system vocabulary is scaffolding.

**The phase**: the author has named the current work a **graduate-student, outward-reading phase** (`the graduate student phase.md`, 2026-08-05) — following the research backlog's rabbit holes, "expected and favorable… as long as it's metered." Under this directive the displacement risk (vault work crowding out manuscript work) reads as phase-scoped rather than a failure mode, and pursuit of the reading queue is not a symptom.

**What is being worked now**: "The book has a chosen form — a correspondence of dated letters that end by being sent — and the vault's job has narrowed to serving it, led by reading the center's own foundations at their primary texts." The active threads (`ops/goals.md`) are the tiered reading queue (its Tier 1b completed 2026-08-10, now gated on author-supplied texts for Marcia, Heidegger, and Kṣemarāja), the practice-curriculum extraction (co-first priority since 2026-08-08), the concordance reconciliation, the forty candidate evaluations awaiting seating, and the correspondence program with its pilot letter.

**Maintenance state — healthy.** Nine open observations (below the /rethink threshold of ten), one operational tension (below the threshold of five), no fired reminders, four sentences logged in `ops/register violations.md`. The verification pass reports a clean 303-note graph.

**Author's lane — never jumped.** Seatings, the naming refactor, tension resolutions, manuscript placements, and release all belong to the author. The `supports:` field stays dormant until he makes a placement; release and readership are explicitly his ("the sending will come — and it's not our concern right now," 2026-08-03).

**Recently settled, worth knowing before acting.** The great prune of 2026-08-09 made the vault lithe: it removed the ~290 KB of skill stock text, retired the register-enforcement machinery and the standing self-measurement instruments (their book-facing findings migrated into `notes/`), retired the sixteen `craft` notes, and removed session capture — after five parallel surveys found that 619 KB of 1.30 MB in `ops/`+`.claude/` was the vault maintaining itself against 56.5 KB ever drafted toward the book. That prune is the displacement guard firing on the vault itself: the orchard choosing to ripen rather than refrigerate.

---

## X. How to read this vault (for a later agent)

1. **Orient before acting.** Read the masthead `ops/orientation.md` and `ops/goals.md` first; read `ops/standing-consequences.md` (one hop behind the masthead) for the detailed torch. The SessionStart hook injects these. Read silence in the maintenance report as health.
2. **Query the decisions register before treating an apparent inconsistency as work.** Run `scripts/queries/decided.sh <topic>` over `ops/decisions.md` — most "inconsistencies" are settled questions with recorded reasoning.
3. **Read the five synthesis notes before working the book's content**: [[the book's honest origin story is noticing first and finding company after]], [[the book's native genre is the letter from a friend read alone]], [[the book can only be auxiliary to a sovereign reader]], [[the making of the book enacts the law the book states]], and [[the perfectible conversation is the manuscript's most comfortable room]].
4. **Honor the authority chain.** Where a skill's stock text conflicts with `CLAUDE.md` or `ops/derivation-manifest.md`, those win; `/recompose` is governed directly by `ops/methodology/prose register.md`; the twelve topic maps are the reader's tier-two entry, and `notes/index.md` leads with the center.
5. **Hold the standing caveats.** 57 of 65 interlocutors are unseated candidates; many isomorph and open-question notes are `state: privated` because the mesh-grid characterization stands in for a primary reading not yet done; convergence is company, never proof; the poems are primary provenance but explicitly **not** evidentiary (poem-grounded inference was backed out on 2026-08-08); and retrieval over this corpus overweights the system the author has demoted, so trust the center of gravity over the page-count.
6. **Measure by what reaches the manuscript.** The vault's honest metric is /rethink's standing question — "what reached the manuscript this month?" — not note count. Material that only describes the vault's own state routes to `ops/`, never to `notes/`.

---

## XI. What will date this snapshot

A later agent should re-baseline against the live files rather than trusting this one if any of the following has moved — these are the fastest surfaces:

- **`ops/completed.md`** — the last entry here was 2026-08-10; every session appends. If it has grown, this snapshot's "present moment" (§IX) is stale first.
- **`ops/reading queue.md`** and the count of reading records in `archive/` (22 at this snapshot) — the standing engine; new readings move privated notes to full and can settle open tensions.
- **`ops/decisions.md`** — new rows change what is settled; several tensions and the whole naming layer could close here.
- **The interlocutor seatings** (8 of 65 at this snapshot) — the author seating candidates would reshape §IV wholesale.
- **Whether the pilot letter ships** — [[seventeen chapters rest at madhyama]] resolving would be the largest single change the vault could record, and it is the one thing the whole present effort ripens toward.
- **The note count** (303 in `notes/`), the category tallies (§ counts throughout), and the tension status split (21 live / 7 treated / 0 resolved).
- **The documentation drift noted in §VIII** — if "six wired hooks" in `CLAUDE.md`/`README.md` is reconciled with the actual three-command wiring, that observation is spent.

---

*The archive preserves; the orchard ripens. This snapshot is a photograph of the orchard on 2026-08-13 — accurate to the day, and meant to be outgrown.*
