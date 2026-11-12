# Research — the parallel to "The library of inner space"

### 1. The turn

The site's Research page certifies knowledge for its reader: it gathers studies, grades their weaknesses, answers questions from them, scores open questions, and publishes its admission rules. Its object of scrutiny is the paper. The vault's 47 reading records in `archive/` reverse the direction: each states the question about the book that sent the reader to the text, and each checks the book's account of a thinker against the thinker's own words. On the site the paper is examined; in the vault the book's account is checked against the paper.

Three laws force the turn. The primary-material directive makes a thinker's own work outrank the corpus's paraphrase and requires the conflict to be recorded (`ops/methodology/the primary material.md`, rule 1). The authorial stance forbids ranking convergences "as stronger or weaker evidence" and states that "Whether any of this works is not a claim the author is making" (`ops/methodology/authorial stance.md`, rules 1 and 3), so the page carries no supports/against bar and answers no "does it work." Tensions are tracked rather than resolved, resolution being the author's (CLAUDE.md, "Relations"), so verdicts become statuses. Two organs survive unchanged: citing every claim is already the vault's rule, held more strictly, and "nothing gets deleted" is the declines ledger, `ops/queue/declines.md`.

**Proposed name: The Readings.** Promise: *What the thinkers wrote, read at their own texts, and set against what the book says they wrote.*

### 2. Page content

#### The Readings

**47 readings completed · 62 reading questions not yet marked done · 502 notes, 157 of them seeds (31%) · 13 tensions, 1 resolved by the author · efficacy claims: none, by rule · last reading 2 September 2026**

How counted: readings are the `reading — *.md` files in `archive/`; the queue figure is the 94 numbered entries in `ops/reading queue.md` minus the 32 marked done (at least five of the 62 have since been read in part). A seed is a note marked `state: nascent`, stated but not yet substantiated by a reading (`scripts/queries/lens-check.sh --grounding`). Tensions: 9 live, 3 treated, 1 resolved (`scripts/queries/tensions-status.sh`).

#### Ask the readings

The assistant answers only from the reading records and the notes citing them. Every sentence names its file and locator, says whether it rests on a thinker's text, on the corpus (evidence the book has said something, never that it is right), or on the poems (never evidence), and flags seeds.

**It can answer:**
1. *Did Heidegger take "truth as un-concealment" from Eastern texts?* (the Reinhard May record)
2. *Can people notice their own inner changes accurately?* (Nisbett and Wilson 1977, pp. 235–237; Gendlin 1964, fn. 9)
3. *What did Rogers say a helping relationship requires, and can a printed page supply it?* (the Rogers 1957 record)
4. *Is "reading is remembering" Plato's idea, and how much of Plato does it carry?* (the Plato record)
5. *What can a reader alone do to tell a breakthrough from a breakdown?* (the discrimination-family record)

**It must decline:**
- *"Does this practice work? Will it change me?"* The vault postulates no efficacy (`ops/methodology/authorial stance.md`, rule 3), and the alliance reading states why even the largest measured finding in the vault cannot answer it: "It does not support the book, and no evidence can, because nobody has read the book" (`archive/reading — fluckiger, del re, wampold and horvath, the alliance in adult psychotherapy (2018).md`).
- *"Was what happened to me a real recognition?"* The book is "auxiliary to a sovereign reader rather than the source or the certifier" of the reader's recognition (`ops/orientation.md`), and every tradition read places that judgment with a second person; asked "isn't enlightenment self-authenticating?", Yasutani answers "No, it isn't" (Kapleau, *Three Pillars*, Part One §III).

#### Six concerns (the site's six rooms)

The site sorts papers by subject; the six doctrine maps sort claims by concern, stated plainly here because the corpus's figure of a house of rooms is a candidate name. Count: distinct notes opening a list entry (`- [[…]]`) above each map's "What remains" heading, maps excluded; each declares that map in its own `topics:`. "Substantiated" is `state: full` or `privated` (complete except one named gap). The six gather 404 distinct notes. Cards are unordered by size: volume is not centrality.

- **Recognition: truth as un-concealment, liberation as recognizing what never left.** 109 notes; 40 seeds (37%); 37 substantiated. `notes/recognition.md`
- **Contraction rather than corruption: suffering as fullness narrowed, not a self damaged.** 48 notes; 10 seeds (21%); 20 substantiated. `notes/contraction-not-corruption.md`
- **The felt shift: a trained noticing of change in the body, used by the reader as an instrument.** 81 notes; 14 seeds (17%); 44 substantiated. `notes/felt-shift.md`
- **What a holding structure needs so that something can happen inside it.** 28 notes; 1 seed (4%); 15 substantiated. `notes/container-anatomy.md`
- **The field between people as a participant, and the problem it poses for a book read alone.** 136 notes; 58 seeds (43%); 48 substantiated. `notes/relational-field.md`
- **The call and the answering: writing built to be answered.** 59 notes; 17 seeds (29%); 23 substantiated. `notes/the call and the answering.md`
- **The edge, with an inverted bar.** The site's sixth room holds contested work to a stricter bar; the vault's edge runs the opposite rule: "A thing enters the clearing precisely because it does not yet fit," and each entry names "which commitment of the center cannot hold it." Its blind spots are the singular, the embodied, the finite, and the non-human. `ops/methodology/the clearing.md`; `ops/clearing.md`

#### Just read: one page per reading

WHAT THEY DID becomes what was read and how near the text; WHAT THEY FOUND, what the text says; WHAT'S SHAKY turns onto the book's own account, as what the reading corrected; WHY IT MATTERS becomes the question set before reading. New: where the thinker parts from the book (condition 3 of `ops/manuscript readiness.md`) and manuscript readiness. "Who's on it" becomes the thinker's role in the book, which every record leaves to the author. Grade A: read at the primary; Grade B: a reputable source quoting it with a page.

**Heidegger's debt to Daoist texts is real, and it does not reach aletheia.**
*Asked:* If Heidegger's un-concealment carries an East Asian debt, the founding convergence drops from independent arrival to influence. *Read:* May (1996) through Parkes and two critics; Grade B. *Text:* Heidegger's "major thoughts on Being, Nothing, the clearing, and on the complex relations between language, Way, and Saying, were influenced by his readings of German translations of Daoist and Zen texts" (Parkes, p. 79); no source lists aletheia or names Kashmir Śaivism. *Corrected:* a note paired Heidegger with Zhuangzi's "sitting in forgetting" as no-contact, but Heidegger consulted Buber's 1910 Zhuangzi selection. *Parts from the book:* "we Europeans presumably inhabit a quite different house from the East Asians" (WL 5). *Manuscript:* not yet; May's own pages are owed. `archive/reading — reinhard may, heidegger's hidden sources (1996).md`

**Lewin and Erhard are one lineage, and Johnstone said "be obvious."**
*Asked:* Are Lewin and Erhard two independent arrivals at the claim that people are changed by their own participation? *Read:* Lewin 1946; Johnstone, *Impro* (1979); Grade A. *Text:* "Research that produces nothing but books will not suffice" (Lewin, p. 35); "An artist who is inspired is being obvious… He's accepting his first thoughts" (Johnstone, pp. 87–88). *Corrected:* "be average" appears nowhere in *Impro*, and calling the self-studying group Lewin's invention overstates; est descends from his T-group, so he and Erhard are one line, not two arrivals. *Parts from the book:* the student "needs a teacher who is living proof ... that the imagination will not destroy you" (p. 84). *Manuscript:* yes, by page. `archive/reading — the facilitated room's roots (lewin 1946, johnstone's impro).md`

**The felt shift certifies that a process moved, not that a content is true.**
*Asked:* Does Gendlin make the verification claim the book makes for him? *Read:* the 1964 paper, whole. *Text:* "'correctness' refers to the experienced effect which certain symbols produce" (fn. 9). *Corrected:* the book's use was wider than his, and his 1964 term is "referent movement" (def. 11). *Parts from the book:* "It is often possible, though always unsteady and difficult, for the individual to focus by himself" (fn. 13). *Manuscript:* yes. `archive/reading — gendlin, a theory of personality change (1964).md`

**People can undergo a large change of attitude without noticing it.**
*Asked:* Does the confabulation finding reach a standard that asks only for noticing change? *Read:* Nisbett and Wilson (1977), whole. *Text:* "subjects apparently changed their attitudes in the absence of any subjective experience of change" (p. 236). *Corrected:* the vault held the paper concerned only reports about causes; it has a titled section on change-detection, and "The correction was available only by reading the paper." *Parts from the book:* it holds a later check weaker than an immediate one (p. 251), against the vault's repair of checking across days; the conflict is kept open. *Manuscript:* yes. `archive/reading — nisbett and wilson, telling more than we can know (1977).md`

**Erhard has a primary text, and it cites Being and Time.**
*Asked:* What does Erhard take from Heidegger, in his own words? *Read:* "Creating Leaders" (2010, rev. 2020), whole. *Text:* "Ontology as we use the term is meant as it is explicated by Martin Heidegger (1927) in *Being and Time*" (fn. 4). *Corrected:* the vault's page on Erhard recorded "no primary text." *Parts from the book:* both work on Heidegger's clearing with different verbs: students "create for themselves a context" (§I), where the book lets something show itself. *Manuscript:* yes for the paper. `archive/reading — erhard and jensen, creating leaders (2010, rev. 2020).md`

**Rogers permits naming what a person half-knows, and requires that the person perceive the helper.**
*Asked:* Does the 1957 paper refuse or license naming what the other has not yet said? *Read:* Rogers 1957, whole. *Text:* the therapist "can also voice meanings in the client's experience of which the client is scarcely aware." *Corrected:* the vault's note said he "would refuse the diagnostic apparatus outright"; he refuses diagnosis from an outside scheme but permits naming from within the person's own frame. *Parts from the book:* "Unless some communication of these attitudes has been achieved, then such attitudes do not exist in the relationship as far as the client is concerned" (Condition 6). *Manuscript:* yes. `archive/reading — rogers, the necessary and sufficient conditions (1957).md`

**A reader alone can follow every guard that declines to judge, and none that judges.**
*Asked:* Does any guard against mistaking breakdown for breakthrough work for a reader alone? *Read:* Ignatius §§313–336; Engler 1984; Kapleau; Grade A. *Text:* "you can never be sure by yourself that what you take to be kensho actually is kensho" (Yasutani). *Corrected:* Ignatius's rules are first-person instruments a director releases, and the vault's Annotation 2 quotation is Ivens's translation, not Puhl's. *Parts from the book:* a book can say continue, do not act on it, check it against time; checking it against another person is where every tradition puts the judging. *Manuscript:* yes. `archive/reading — the discrimination family (ignatius §§313–336, engler 1984, kapleau's three pillars).md`

**"Completes itself" is the book's phrase, not Hudson's or McLaren's.**
*Asked:* In their own words, does a feeling need a witness to finish? *Read:* Hudson's transcripts and essays; McLaren (2010) and her site. *Text:* "And it's welcome. It's not accept" (Hudson, Modern Wisdom #813); "Your grief process can be undertaken individually, or in a community or family group" (McLaren). *Corrected:* the witness the vault gave both thinkers is falsified, and "The phrase belongs to the book." *Parts from the book:* they disagree with each other about expression; Hudson: "don't do it at people." *Manuscript:* yes, naming McLaren's edition. `archive/reading — the completion family (hudson's art of accomplishment, mclaren's language of emotions).md`

#### Kept open, not scored

In place of a supports/against bar, each tension shows its status, the treatment under trial, and who closes it: the author.

- **Seven traditions hold that the work cannot be done alone with a text.** Live; candidate treatment: "the book adds no second chair; it holds that recognition is already a with." `notes/the solitary form stands against seven witnesses who hold a second person constitutive.md`
- **Gathering traditions for what they share manufactures the agreement it then reports.** Live, itself still a seed; treatment: "preserve difference before synthesis and keep the remainder." `notes/curating traditions for their overlap manufactures the unanimity it then reports.md`
- **Reading contraction as productive is the book's revaluation, not the tradition's doctrine.** Live; treatment: "own the commendation of the bounded vantage as the book's move and never cite it as convergence." `notes/the productive reading of contraction is the book's revaluation rather than the tradition's doctrine.md`
- **Resolved, by the author:** the question of which words get spoken where they can no longer be revised, closed by sending one pilot chapter to real readers. `notes/seventeen chapters rest at madhyama.md`

#### The oldest texts read, and what lies beneath them

In the vault old work is the rule (section 3), so this shelf holds the texts the front matter ("You already know everything in this book. You've just forgotten. Reading is remembering.") and the founding convergence rest on, each with its seam shown.

- **The method travels without the metaphysics.** The slave boy's answers were "all his own" (*Meno* 85b) and Socrates is "sterile in point of wisdom" (*Theaetetus* 150c), but the *Meno*'s recollection rests on a pre-existent soul offered as "a likely story" (81a–e). Which of the two the front matter means is the author's to decide. `archive/reading — plato, meno and theaetetus on drawing-out and wonder (c. 380 bce).md`
- **The book's most important kept disagreement is the traditions' own.** "those for whom emptiness is a view have been called incurable" (MMK 13.8), while Śaṅkara refutes the emptiness doctrine (*Brahmasūtrabhāṣya* II.2.31): one move, nothing to attain, from opposite findings. `archive/reading — nāgārjuna, mūlamadhyamakakārikā (c. 150 ce).md`
- **Aristotle, the Bṛhadāraṇyaka with Śaṅkara, Laozi, Zhuangzi, Pseudo-Dionysius, Dōgen, and the Kashmir Śaiva texts are also shelved,** each with its own record.

**Beneath the shelf, not on it: the poems.** Poem #4 states the front matter's doctrine before the book existed: "you see, I didn't need / to hear what I already knew— / but it was nice to be vulnerable / enough to recognize the answer / I had always had—" (`poems #4`, page 4). The poems carry provenance and are part of the author's offering, but "they are not in the same class of contribution as the research itself" (author, 2026-08-08, `ops/methodology/source standing.md`), so a shelf defined by evidential weight would misfile them.

#### How a reading is admitted

1. **A correspondence shows both halves.** It quotes both sides, or names the missing side with work, year, and location and says it is unchecked (`ops/methodology/both halves of a correspondence.md`).
2. **Nothing is quoted from memory**, above all where "a formulation is famous enough to be tempting" (same file).
3. **The question comes first and can fail,** with a stake for each answer, a page-level address, what it inherits, and the grade of current evidence (`ops/methodology/sharp questions.md`).
4. **Distance from the text is stated;** eleven records reached the work mainly through a secondary quoting it, and say so.
5. **The text outranks the corpus's account of it,** and the conflict is recorded (`ops/methodology/the primary material.md`).
6. **Dependent documents count once,** and a draft is "quoted for what it says, not credited for what it argues" (`ops/methodology/source standing.md`).
7. **In place of "peer-reviewed only":** no tier of publication confers standing.
8. **In place of "at least 20 participants":** the lived practice is one person's by construction, admitted under the three conditions of `ops/methodology/personal provenance.md` and never as evidence; no count of agreeing traditions is evidence either.
9. **The final bar is the writing test:** "would a drafting session reach for this?" (`ops/methodology/writing test.md`).
10. **Nothing is deleted:** declines keep their reasons (`ops/queue/declines.md`), superseded notes are marked composting, and corrections stay beside the text that made them.

### 3. What this parallel revealed about the book

**The reading record lacks the three fields the book most needs, and the records supply them anyway, unevenly.** The reading-record schema (`templates/source.md`, `sibling_records: reading`) asks for what was read, findings, questions settled, works unread, and citation grammar. It has no field for a correction of the book, yet 21 of 47 records contain explicit correction language (`rg` for corrected, falsified, misattribution, not verbatim, overstates, conflation, "appears nowhere"). It has no field for manuscript readiness, yet 21 of 47 say a scholarly or copyright edition must be checked before a line reaches the manuscript. It has no field for where the thinker parts from the book, which `ops/manuscript readiness.md` makes condition 3; records carry it inconsistently. Found: the counts and the schema. Inferred: a drafting session should quote a thinker from the reading record, not from the corpus or the thinker's page, which are what the records corrected; adding the fields is the author's structural decision.

**Distance from the text, not age, is the axis a drafting session needs.** At most five of the 47 records read work from 2016 or later (Flückiger 2018; Hudson's current material and McLaren's revised edition; Hyde and Kopp 2019; Vervaeke 2019), counted from the dates in titles and "What was read" lines, so the site's recency split does not sort this library. The grade does: a Grade B quotation, such as Heidegger on death through the Stanford Encyclopedia, is not yet the thinker's sentence. Inferred: the ten weeks without a reading fit the masthead's move to Book I's writing surfaces.

**The largest concern is the least read.** The relational field gathers 136 notes, 43% seeds; the holding-structure concern 28, 4% seeds. Graph-wide the seed share fell from 44% (220 of 493, recorded 2026-08-22 in the queue) to 31%. Inferred: a page ordering concerns by size would feature the least substantiated first.

One confirmation rather than a finding: four of the eight refusals (Gendlin, Rogers, Johnstone, the discrimination guards) place something the book needs in a second person, while Hudson and McLaren proved solitary where the vault had assigned them a witness, as the solitary-form tension note already records.

### 4. Cautions

- A stat line reads as a score. These counts measure the vault's work, not the book's truth, and must never sit beside a convergence as if they weighed it.
- The holding-structure map frames its concern by the corpus's three-part container scheme, which is scaffolding; page copy should state the concern, not the scheme.
- The felt-shift map's description and a decisions-register row dated 2026-08-04 still call the felt shift the book's test for whether anything is true; the masthead now holds it as the reader's instrument after the 2026-08-16 audit. I followed the masthead; the lead should check which governs.
- A Grade B quotation shown without its grade breaches the both-halves rule's spirit; the May card rests on Parkes.
- The quotations are the reading records' own; I did not reopen the primaries. The poem line was checked against `.corpus/the poems.md`; printing it, like any public page, is the author's decision.
- A live "Ask" assistant would be pressed toward the certifier role the book refuses; its declines must be designed in.
