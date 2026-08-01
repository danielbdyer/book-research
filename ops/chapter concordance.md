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

## Revision relations on record

Stated in the notation defined in `CLAUDE.md`, each naming both states and the direction.

- The Time Is Not Linear poem is **compressed into** the House with No Ceiling in `abridged ch1` from `mythic-os: page 9`, from roughly a hundred verse lines to five prose lines at the same designated position. Claim: `notes/the abridged edition compresses the opening poem rather than reproducing it.md`.
- The Generative Triad's corner names are **revised into** `atlas §II` from `abridged ch4` and `arc-gloss: ch4`, replacing Knife, Thread, and Vessel with Wall, Door, and Floor. Claim: `notes/the prose drafts use the vetoed triad names.md`.
- The House with No Ceiling, the Way of Ripening, the Afterglow, and the Geometry of Becoming are **revised into** separate units of the arc from pages of a single written chapter in `mythic-os`. Claim: `notes/four named units of the arc appear as pages inside the earliest edition's single chapter.md`.
- Four territories are **dropped at** the arc from `mythic-os: contents`, listed in the table above. Claim: `notes/the mythic operating system contents hold four territories the arc drops.md`.
- The unit-closing instruction is **added at** `abridged`, appearing in no design document. Claim: `notes/the closing prompt changes genre where the book turns to praxis.md`.
- The seventeen patron assignments are **carried unchanged into** `abridged` from `arc-gloss`, every unit opening under the epigraph the treatment specifies. This is the only element checked so far that transferred without alteration; the one qualification is the Alphabet of the Soul, where the treatment seats McLaren beside Gendlin and the executed epigraph is Gendlin alone.
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
2. **The molecule reconciliation.** The only element where two documents disagree about content rather than naming or scope, and neither catalogue has been extracted whole.
3. **The eleven written units outside the arc.** Each needs the admission standard applied on its own terms rather than as recovered material; four have produced claims so far.
4. **An apparatus column.** It cannot be filled from the sources, because six of seven devices have never been executed. It would be filled by the pilot unit, and filling it is most of what "fully treated" means.
