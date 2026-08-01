# chapter concordance

This file is the transfer surface for writing. For each unit of the fifteen-chapter arc it records what each source document supplies, what state the prose is in, and which document is the reference text for which element. Its purpose is that bringing one chapter to a finish should cost one lookup rather than a re-reading of seven documents.

It sits in `ops/` rather than in `notes/` deliberately. It is not a proposition of the book's framework and not a topic map; it is provenance tooling for the manuscript, and the routing table in `CLAUDE.md` sends operational reference here. Claims that arise from the comparison are notes and are linked from the rows that produced them.

Two standing cautions apply to every row. Extent is a measurement of the abridged edition only, which is an abridgement by its own statement, so a low word count records what that edition did and not what the chapter is worth. And the Arc and the Gloss treatment is upstream of the atlas and the walked document (see `notes/the atlas was compiled from the arc and gloss treatment.md`), so where a row shows the treatment and the atlas agreeing, that is one source and not two.

## The fifteen chapters

Extent is the executed word count in the abridged edition. Register is the treatment's specification, quoted. The mythic-os column names the counterpart in the twenty-eight-chapter edition, whether a written page or a contents entry.

| # | Title | Patron | Extent | Treatment's register | mythic-os counterpart | Atlas |
|---|---|---|---|---|---|---|
| 1 | The House with No Ceiling | Alexander | 1658 | "Highest poetic density in the book" | page 3, written | §II, §X |
| 2 | The Ink That Listens | Buber | 1305 | "Warm; the voice becomes companion" | ink apostrophe, written | §VIII |
| 3 | The Geometry of Becoming | Heraclitus | 1012 | "One notch more grounded; the prose starts to show its bones" | page 14, written | §II |
| 4 | The Generative Triad | Heraclitus | 1173 | "Clean, architectural, quietly thrilling" | — | §II |
| 5 | The Alphabet of the Soul | Gendlin, with McLaren | 1254 | "Precise, almost playful" | — | §III |
| 6 | The Molecules of Experience | Meadows | 1115 | formulas that "read like absolution" | — | §IV |
| 7 | The Three Loops | McGilchrist | 2236 | "the structural core; confident, symphonic" | ch8, contents only | §V |
| 8 | The Third Entity | Buber, with hooks | 1086 | "Warm, steady, adult" | ch11, contents only | §VIII |
| 9 | Erotic-Spiritual Intelligence | Whyte | 820 | "Deliberately a little uncomfortable. Short. The chapter should hum, not conclude" | ch12, contents only | §VIII |
| 10 | The Way of Ripening | Kimmerer | 835 | "Seasonal, patient… the prose slows like September" | page 8, written | §V.3 |
| 11 | The Psychedelic Moment | Rumi | 2172 | "THE PEAK. Sentence rhythm elongates, repeats, spirals" | — | §V |
| 12 | The Afterglow | Eliot | 1050 | "Gentler; supportive; re-coupling performed in prose" | page 10, written | §V |
| 13 | The Stance | Tippett, with Rohr | 706 | "Still, spacious; the prose models the stance" | — | §VII |
| 14 | The Kata | brown | 829 | "Precise, embodied; instructions that invite doing" | — | §VII |
| 15 | The Engineer's Eye | Meadows | 1054 | "Crisp, warm, competent" | ch28, contents only | §VII, §IV |

The non-chapter units: the front matter and prologue run 643 words in the executed draft under Rilke's epigraph; interlude I runs 91 words after chapter 7; interlude II runs 129 words after chapter 12; the epilogue runs 1654 words under Eliot's. Mean chapter length is 1160 words, and the whole executed arc is roughly 21,000 words.

## What each document is the reference text for

No single document is authoritative, and the standing policy is `ops/methodology/source standing.md`. This table records which document is the fullest available account of each element, so that a writer knows where to look first rather than which to obey.

| Element | Reference text | Why, and what qualifies it |
|---|---|---|
| Chapter sequence and part boundaries | `arc-gloss` | The only document that states the fifteen-chapter arc as a designed sequence with its four overlays. The atlas summarizes it and is downstream of it. |
| Chapter job, register, and patron | `arc-gloss` | The only per-chapter specification in the corpus. Its self-assessments ("jewel") are excluded as evidence under the craft policy. |
| Executed prose, argument order, transitions | `abridged` | The only document in which the arc is written. Its terminology is superseded on at least one axis (see the triad row), and it carries almost none of the treatment's five-rooms material. |
| The five rooms — facilitation, McLaren, the speech lineage, the container-makers, the coaches | `arc-gloss`, unexecuted | The treatment's second-edition addition reaches the executed prose as three passing traces. No draft carries this material at length. See `notes/the executed draft carries the arc's sequence without the treatment's five rooms.md`. |
| Voice at highest density | `mythic-os` | The author's named high-water mark. It is also the only document carrying the chapter-one poem entire. |
| Scope beyond the fifteen chapters | `mythic-os` | Its contents name four territories the later arc drops. |
| Triad terminology | `atlas` | The drafts use Knife, Thread, and Vessel; the author vetoed those names after both were written. The treatment at `arc-gloss: ch4` carries the crosswalk. |
| Molecule catalogue | contested | The atlas lists eight families at §IV; the abridged edition states about ten formulas with primitive decompositions the atlas does not carry. Neither is complete and no reconciliation exists. |
| Apparatus | `atlas` §X.6, unexecuted | Seven devices are designed and one is built. The drafts cannot be the reference text for an apparatus they do not contain. |
| The book's own tensions | `atlas` §XI | The drafts do not record tensions; a draft resolves rather than registers. |
| Lineage and seating | `atlas` §IX | The abridged edition's lineage list is a roster without seats or justifications. |

## Revision relations on record

Stated in the notation defined in `CLAUDE.md`, each naming both states and the direction. These are the comparisons already worked; new rows are added as chapters are reconciled.

- The chapter-one poem is **compressed into** `abridged ch1` from `mythic-os: page 9`, from roughly a hundred verse lines to five prose lines at the same designated position. Claim: `notes/the abridged edition compresses the chapter one poem rather than reproducing it.md`.
- The triad's corner names are **revised into** `atlas §II` from `abridged ch4` and `arc-gloss: ch4`, replacing Knife, Thread, and Vessel with Wall, Door, and Floor. Claim: `notes/the prose drafts use the vetoed triad names.md`.
- Four chapter titles are **revised into** the fifteen-chapter arc from `mythic-os` page titles, separated across four parts. Claim: `notes/four later chapter titles appear as page titles inside the earlier edition's single chapter.md`.
- Four territories are **dropped at** the fifteen-chapter arc from `mythic-os: contents`. Claim: `notes/the twenty-eight-chapter contents hold four territories the fifteen-chapter arc drops.md`.
- The chapter-closing instruction is **added at** `abridged`, appearing in no design document. Claim: `notes/the chapter-closing prompt changes genre where the book turns to praxis.md`.
- The seventeen patron assignments are **carried unchanged into** `abridged` from `arc-gloss`, every chapter, the prologue, and the epilogue opening under the epigraph the treatment specifies. This is the only element checked so far that transferred without alteration. The one qualification is chapter 5, where the treatment seats McLaren beside Gendlin and the executed epigraph is Gendlin alone.
- The five rooms are **dropped at** `abridged` from `arc-gloss: the five rooms`, surviving as one phrase, one lineage-list name, and one entry in a list of influences. Claim: `notes/the executed draft carries the arc's sequence without the treatment's five rooms.md`.

## What remains

The rows above are the reconciliations already done. Three pieces of work would complete the surface, in this order:

1. **The per-chapter reconciliation against the atlas's working structure.** `notes/book-structure.md` records the arc as the atlas describes it, including a sixteen-day house conceit and a seventeen-chapter count that neither draft matches. Comparing the executed fifteen against that description, chapter by chapter, is the largest open question the drafts raise and would fill the Atlas column with more than a section symbol.
2. **The molecule reconciliation.** The contested row above is the only element where two documents disagree about content rather than about naming or scope, and neither catalogue has been extracted whole.
3. **An apparatus column.** It cannot be filled from the sources, because six of the seven devices have never been executed. It would be filled by the pilot chapter, and filling it is most of what "fully treated" means. See `notes/the drafts execute one of the seven designed apparatus devices.md`.
