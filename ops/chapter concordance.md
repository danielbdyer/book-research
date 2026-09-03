# concordance of named units

This file is the transfer surface for writing. For each named unit of the book it records what each source supplies, what state the prose is in, and which document is the reference text for which element. Its purpose is that bringing one unit to a finish should cost one lookup rather than a re-reading of seven documents.

**The row is the named unit, not the chapter number.** The directive is `ops/methodology/reference by name.md`. Names are stable across every table of contents the corpus contains; numbers are not, and in the mythic operating system edition several of these units are pages rather than chapters. Keying by name is what lets the corpus's different orderings sit in the same table as columns, so that they can be compared and recombined without confusion about what is being discussed. The placement columns record where each document puts a unit; they are data about the documents, not a claim that any ordering is settled.

It sits in `ops/` rather than in `notes/` deliberately. It is not a proposition of the book's framework and not a topic map; it is provenance tooling for the manuscript, and the routing table in `CLAUDE.md` sends operational reference here. Claims arising from the comparison are notes and are linked from the rows that produced them.

Two standing cautions apply to every row. Extent measures the abridged edition only, which is an abridgement by its own statement, so a low count records what that edition did and not what a unit is worth. And the Arc and the Gloss treatment is upstream of the atlas and the walked document (`notes/the atlas was compiled from the arc and gloss treatment.md`), so where a row shows the treatment and the atlas agreeing, that is one source and not two.

## The units

Placement columns give each document's own locator, which is how that document would be cited. Extent is the executed word count in the abridged edition. Register is the treatment's specification, quoted.

| Named unit | Patron | Extent | Treatment's register | arc-gloss | abridged | mythic-os | atlas |
|---|---|---|---|---|---|---|---|
| The House with No Ceiling | Alexander | 1658 | "Highest poetic density in the book" | ch1 | ch1 | page 3, written | §II, §X |
| The Ink That Listens | Buber | 1305 | "Warm; the voice becomes companion" | ch2 | ch2 | ink apostrophe, written | §VIII |
| The Geometry of Becoming | Heraclitus | 1012 | "One notch more grounded; the prose starts to show its bones" | ch3 | ch3 | page 14, written | §II |
| The Generative Triad | Heraclitus | 1173 | "Clean, architectural, quietly thrilling" | ch4 | ch4 | — | §II |
| The Alphabet of the Soul | Gendlin, with McLaren | 1254 | "Precise, almost playful" | ch5 | ch5 | — | §III |
| The Molecules of Experience | Meadows | 1115 | formulas that "read like absolution" | ch6 | ch6 | — | §IV |
| The Three Loops | McGilchrist | 2236 | "the structural core; confident, symphonic" | ch7 | ch7 | ch8, contents only | §V |
| The Third Entity | Buber, with hooks | 1086 | "Warm, steady, adult" | ch8 | ch8 | ch11, contents only | §VIII |
| Erotic-Spiritual Intelligence | Whyte | 820 | "Short. The chapter should hum, not conclude" | ch9 | ch9 | ch12, contents only | §VIII |
| The Way of Ripening | Kimmerer | 835 | "Seasonal, patient… the prose slows like September" | ch10 | ch10 | page 8, written | §V.3 |
| The Psychedelic Moment | Rumi | 2172 | "THE PEAK. Sentence rhythm elongates, repeats, spirals" | ch11 | ch11 | absent as an event | §V |
| The Afterglow | Eliot | 1050 | "Gentler; supportive; re-coupling performed in prose" | ch12 | ch12 | page 10, written | §V |
| The Stance | Tippett, with Rohr | 706 | "Still, spacious; the prose models the stance" | ch13 | ch13 | — | §VII |
| The Kata | brown | 829 | "Precise, embodied; instructions that invite doing" | ch14 | ch14 | — | §VII |
| The Engineer's Eye | Meadows | 1054 | "Crisp, warm, competent" | ch15 | ch15 | ch28, contents only | §VII, §IV |

The non-chapter units: the front matter and Invitation run 643 words under Rilke's epigraph; two poem interludes run 91 and 129 words at the part junctions; the Open Secret runs 1654 words under Eliot's. Mean unit length is 1160 words and the whole executed arc is roughly 21,000.

## Units outside the arc

The mythic operating system edition names nineteen units that the arc does not contain, eleven of them written out as pages and eight named only in its contents. They are inventoried, with their exploration state, in `ops/open corpus.md`, which treats both outlines as research scaffolding rather than as proposed structure. They are not listed here because this table is for units the arc does contain; a unit outside the arc has no placement column to fill.

## The two orderings

The corpus contains two arrangements of overlapping material, and the vault holds both. Neither is the settled scheme.

- **The fifteen-unit arc**, in five parts: a phenomenological entry, the architecture named, the relational field, the break, the return. It is a single traverse with a peak, and the treatment reads it four ways at once through its overlays.
- **The twenty-eight-unit contents**, in six parts: the mythic interior, fractal integrity, the alchemical relational field, the architecture of a sacred day, transcendence without bypass, and a praxis companion. It is organized as concentric spirals rather than as a traverse, and it stages no peak — the finding is at `notes/the earlier contents distribute transcendence where the arc concentrates a peak.md`.

Resolved 2026-08-16: the author's spine decision dissolves the choice between these two arrangements rather than settling it on one side, assigning the fifteen-unit arc to Book II as its dramaturgy and the reframe's four movements to Book I. The twenty-eight-unit concentric contents is retained under that decision as the earliest state's genealogy and as a way-in, no longer a rival spine — the 2026-08-16 spine row in `ops/decisions.md` carries the allocation, and the finding it resolves is at `notes/the earlier contents distribute transcendence where the arc concentrates a peak.md`.

## The provenance question: which abridgment sits in `sources/`

The provenance reconstruction flags an open identification: three abridgments exist in the conversation record, and it does not establish which one the author's list, and therefore the file in `sources/`, refers to (`provenance/provenance of the corpus.md`, section 6 and the gaps ledger). A bounded check was run 2026-08-16, comparing the extracted file against the three abridgments the reconstruction describes.

The record names three abridgments. The first is "THE CLEARING," a miniature abridgment the author proposed on the spot on 28 May 2026 in the outline-era thread. The second is the "crystal" and "chamber arrangement" pair, two compressed whole-arc versions written in the evaluation thread stamped 7–10 July 2026, which the reconstruction calls "the two plausible 'whole arc' candidates" and dates after the treatment's second edition. The third is the v5 "stock" edition of the friend outline, produced 28 July 2026, which abridges the first-telling letter rather than the chaptered arc.

The extracted file was compared against these on three features. Its extent is forty-nine pages of continuous manuscript prose. Its chapter set is the fifteen-unit arc in five parts, running "The House with No Ceiling" through "The Engineer's Eye" and matching the Arc and the Gloss treatment chapter for chapter. Its self-description, in the note on sources, names it "an abridged edition" of a "longer book" that "exists somewhere on the arc."

The comparison establishes the file as the whole-arc abridgment of the 7–10 July evaluation thread — the "crystal" and "chamber" pair — and rules out the other two record-abridgments. The May 28 "THE CLEARING" is ruled out because the reconstruction calls it a miniature, and a forty-nine-page full-arc manuscript is not a miniature; the file's repeated use of the word "clearing" is the book's own Heideggerian concept and the name of Part I ("The Clearing Opens"), not a title identifying that miniature. The July 28 "stock" edition is ruled out because it abridges the friend outline, a letter, whereas this file abridges the fifteen-chapter arc.

What the in-container check cannot settle is which of the two July candidates this file is — the "crystal" or the "chamber arrangement." The reconstruction supplies no text that separates the two labels, and the extracted file carries no version tag, date, or self-label naming itself as either; the words "crystal" and "chamber" are the evaluation session's external labels and appear nowhere in the abridged prose. One further limit is stated honestly: the reconstruction searched only non-project conversation history, so it cannot exclude a later re-compression made inside a Project, though the file matches the record's whole-arc pair on every feature checked. What would settle the remaining question is the evaluation thread's own text — "Evaluating a book's structural integrity," stamped 7–10 July 2026 and cited in the reconstruction's appendix — which names which label attached to which artifact and is off-record in this container.

## Revision relations on record

Stated in the notation defined in `CLAUDE.md`, each naming both states and the direction.

- The Time Is Not Linear poem is **compressed into** the House with No Ceiling in `abridged ch1` from `mythic-os: page 9`, from roughly a hundred verse lines to five prose lines at the same designated position. Claim: `notes/the abridged edition compresses the opening poem rather than reproducing it.md`.
- The Generative Triad's corner names are **revised into** `atlas §II` from `abridged ch4` and `arc-gloss: ch4`, replacing Knife, Thread, and Vessel with Wall, Door, and Floor. Claim: `notes/the prose drafts use the vetoed triad names.md`.
- The House with No Ceiling, the Way of Ripening, the Afterglow, and the Geometry of Becoming are **revised into** separate units of the arc from pages of a single written chapter in `mythic-os`. Claim: `notes/four named units of the arc appear as pages inside the earliest edition's single chapter.md`.
- Four territories are **dropped at** the arc from `mythic-os: contents`, listed in the table above. Claim: `notes/the mythic operating system contents hold four territories the arc drops.md`.
- The unit-closing instruction is **added at** `abridged`, appearing in no design document. Claim: `notes/the closing prompt changes genre where the book turns to praxis.md`.
- The seventeen patron assignments are **carried unchanged into** `abridged` from `arc-gloss`, every unit opening under the epigraph the treatment specifies. This is the only element checked so far that transferred without alteration; the one qualification is the Alphabet of the Soul, where the treatment seats McLaren beside Gendlin and the executed epigraph is Gendlin alone.
- Two patron seats **differ between** `arc-gloss` and `atlas §IX.9`, found by the routing-surface recount of 2026-09-02 (`archive/reading — the routing surfaces recounted (speaking being, moreno, the scharmer count).md`): the Generative Triad is Heraclitus in `arc-gloss` (p. 8) and Lao Tzu in `atlas §IX.9` (p. 21); the Third Entity is Buber with hooks in `arc-gloss` (p. 11) and bell hooks in `atlas §IX.9`. The table above follows `arc-gloss`, which assigns all sixteen seats — Whyte, Kimmerer, Rumi, Eliot, Tippett, brown, Meadows for the later units — so the "later seats rotating" reading was the vault's, not the corpus's.
- The Afterglow's part-seam **differs between** `arc-gloss` and `abridged` on one side and `atlas §X.3` and `walked` on the other, found by the arc survey of 2026-09-02 (`ops/arc ecology.md`, tension 1): the treatment and the executed draft place the Afterglow inside Part IV, "THE BREAK — peak + descent," while the atlas and the walked document head Part IV as the peak alone and fold the descent into Part V, "The Return with Gifts is the descent with ground restored." A difference between two states of one element, filed here as a row.
- The five rooms are **dropped at** `abridged` from `arc-gloss: the five rooms`, surviving as one phrase, one lineage-list name, and one entry in a list of influences. Claim: `notes/the executed draft carries the arc's sequence without the treatment's five rooms.md`.

## What each document is the reference text for

No document is authoritative; the standing policy is `ops/methodology/source standing.md`. This records which is the fullest available account of each element, so a writer knows where to look first rather than which to obey.

| Element | Reference text | Why, and what qualifies it |
|---|---|---|
| Unit sequence and part boundaries | contested | The treatment states the fifteen-unit arc with its overlays; the mythic operating system contents state a different arrangement of overlapping material. Neither is settled and the vault holds both. |
| Unit job, register, and patron | `arc-gloss` | The only per-unit specification in the corpus. Its self-assessments are excluded as evidence under the craft policy. |
| Executed prose, argument order, transitions | `abridged` | The only document in which the arc is written. Its terminology is superseded on at least one axis, and it carries almost none of the treatment's five-rooms material. |
| Voice at highest density | `mythic-os` | The author's named high-water mark, and the only document carrying the poem entire. |
| Units outside the arc | `mythic-os` | Nineteen named units exist there and nowhere else, eleven of them written. |
| Triad terminology | `atlas` | The drafts use the vetoed names; the crosswalk is at `arc-gloss: ch4`. |
| Molecule catalogue | contested | The atlas lists eight families at §IV; the abridged edition states about ten formulas with primitive decompositions the atlas does not carry. Neither is complete. |
| Apparatus | `atlas` §X.6, unexecuted | Seven devices designed, one built. The drafts cannot be the reference for an apparatus they do not contain. |
| The five rooms | `arc-gloss`, unexecuted | The second edition's addition reaches the executed prose as three passing traces. |
| The book's own tensions | `atlas` §XI | The drafts do not record tensions; a draft resolves rather than registers. |
| Lineage and seating | `atlas` §IX | The abridged edition's lineage list is a roster without seats or justifications. |

## What remains

1. **The per-unit reconciliation against the atlas's working structure.** `notes/book-structure.md` records the arc as the atlas describes it, including a sixteen-day house conceit and a seventeen-unit count that neither draft matches. Comparing the executed units against that description would fill the atlas column with more than a section symbol.
2. **The molecule reconciliation.** The only element where two documents disagree about content rather than naming or scope. The extraction half is done: the audit of every operator-written formula across all four sources, twenty-one in all, is distilled in [[every discrimination the molecule formulas are credited with is made by the prose beside them]], with the raw per-source ledger reconstructible from the extracted corpus. What remains is the membership reconciliation — which formulas each catalogue contains and which appear in only one.
3. **The eleven written units outside the arc.** Each needs the admission standard applied on its own terms rather than as recovered material; four have produced claims so far.
4. **An apparatus column.** It cannot be filled from the sources, because six of seven devices have never been executed. It would be filled by the pilot unit, and filling it is most of what "fully treated" means.
