# The scaffold — the book's load-bearing structure, read from the graph

This file is the standing answer to one question: **what about the book's shape is settled enough that a drafting session may build on it without re-deriving it?** It is produced and kept current by `/scaffold`, and it is the cache for that skill — the findings below are not re-computed each run; each is re-*verified* against the vault files it was read from, and only the findings whose ground has moved are re-derived.

The method is the union of eight structural readings of the graph (the draft chapter schemes, the psychedelic arc, the two-book learning spine, the thinker constellation, the reframe conversation, the constructed system, the named units and the walkable house, and the doctrine's still center). Where several readings independently place the same material at the same structural position, the structure is load-bearing and enters the **core** below; where the readings part, the structure is **open** and enters the joints. The full working derivation is `skeletal-structures-venn-2026-08-21.md`; the visual face is the "One Arc, Eight Readings" map (`ops/completed.md` holds its URL).

**The receipt discipline.** Each finding carries, in the receipts block at the foot of this file, a fingerprint of the exact vault files it rests on — the notes, the concordance rows, the decisions register. `scripts/queries/scaffold-check.sh` re-fingerprints those files (by their git blob content, so the check tracks what a file *says*, not when the auto-commit hook touched it) and reports each finding as AFFIRMED or STALE. A stale finding is not wrong; it is a finding whose ground has moved and that `/scaffold refresh` should re-read. This is what lets the scaffold stay current for the cost of a hash rather than a re-derivation. **Nothing here is a placement.** What becomes a chapter, and where, is the author's; this file reads where the material's own gravity has settled.

---

## The load-bearing core — what a drafter may assume

**[F1] The House with No Ceiling opens the book.** The reader's vehicle, the first image, and the open center held by the container's three structures, all sit at the opening. It is the one named unit present in all three drafts, the oldest element in the corpus, and it originates before the arc itself — so its position is the most stable single fact about the book's shape. Read by the named-units, draft-scheme, system, and doctrine readings at once.

**[F2] The Psychedelic Moment is the peak.** The book's title-concept enacted, and the one place the "perform what you describe" law is honored only by the apparatus *withdrawing* — the prose thins, the margins fall silent, the sentence completes at a mirror the reader supplies — because both foundations refuse the engineered epiphany. It is the summit the whole traverse is tuned toward and explicitly not the destination. Read by five of the eight readings; the point of maximum agreement.

**[F3] Both books run one four-movement spine.** Recognition → relation → participation → stewardship orders both books, which differ only at the endpoint: Book I's facilitator disappears, Book II's practitioner returns. The psychedelic arc's six phases line up against the spine station for station. Settled by the author (2026-08-16); the sequence is committed, the cell-level substantiation is not.

**[F4] Seventeen thinker-to-unit welds hold across drafts.** Each named unit opens under one patron thinker — Alexander at the House, Buber at the Ink and the Third Entity, Gendlin at the Alphabet, Rumi at the peak — and these assignments transferred unchanged from the storyboard treatment into the executed prose, the only element that did. They are the strongest anchors joining who the book cites to how it is built.

**[F5] The container's three structures are the system's one keystone.** Wall, Door, Floor, and the open center they make possible are the only part of the constructed system that appears in every neighboring reading. The keystone predates the tradition it echoes and carries the project's largest measured support; everything the corpus stacks above it — the twelve primitives, the molecule formulas, the three loops — is one construction built on it, late-welded and demoted.

**[F6] The named units are stable; only the numbers move.** Across every table of contents the unit *names* hold while the *count* shifts (fifteen, seventeen, twenty-eight), which is the empirical ground of the vault's "name the unit, never the number" rule. The arc's shape and its named units are committed; the chapter numbering is not.

**[F7] The work is two books, one gesture turned two ways.** Book I facilitates another's becoming and ends by disappearing — its authority is discernment and synthesis, its evidence the company of thinkers; Book II facilitates one's own and ends by returning through the peak — its authority is embodied realization, its evidence the lived practice. Book I is written first, to draw the boundaries around what the research must do for others; Book II's near-complete material is banked, ripening. Settled by the author (2026-08-16).

---

## The open joints — where the readings part

**[J1] Book I's outward arc is genuinely new.** It has no counterpart in the drafts, the psychedelic arc, or the house — all of which map Book II — because it is downstream of the reframe. Its four movements exist, but its form, its grammatical person, and its imagery are unwritten. Pure new territory rather than a gap.

**[J2] Book II's return is the thinnest position in the graph.** Every reading confirms the return as the destination the whole spine resolves toward, and it is the least-built cell in the vault: no dedicated "the practitioner returns" claim carries it, only the arc's integration window and the peak-into-return reconciliation. Certain in shape, sparse in substance.

**[J3] The walkable house, or the centerless field.** The named-units reading walks the reader through rooms; the reframe reading's governing image is a field with no privileged center. Same material, two incompatible spatial imaginations. The 2026-08-16 decision explicitly leaves this to the author.

**[J4] The peak as an event, or a theme.** The arc drafts concentrate the central experience as one moment; the earliest edition disperses it across a whole part in concentric spirals with no peak. Reconciled by allocation — the arc to Book II, the spiral kept as a way in — but the spatial figure it implies stays open, and travels with [J3].

**[J5] How much chapter-weight the system carries.** The drafts execute the system as four full chapters; the author's demotion says its content should shrink to scaffolding removed once the curve holds. The widest gap in the whole field between what the pages contain and what the book is about.

**[J6] One spine, or two.** Whether the six-phase psychedelic arc and the four-station developmental spine are one structure or two is held open — kept distinct, reconciled by assigning one to each book rather than by merging them. The peak≈participation and return≈stewardship alignments are synthesis, not source identity.

---

## Two cautions the overlay makes visible

**Present, but not central — the demoted middle.** The system's upper three levels (the twelve primitives whose closure is asserted but never shown; the molecule formulas, every distinction of which is already made by the prose beside them; the three loops, executed yet held as mechanic's clothing on older theology) are drawn faint on purpose. Volume in the corpus is not centrality in the book, and this is where that gap is widest.

**Shared words that are not agreement.** The Guild's *five rooms* (bodies of thinker material) are not the reader's nine walkable rooms; the four *doors* (means of practice) are not doors of the house; the *valley* (the source tradition) is not a room; and every *convergence* is company, never proof — the lineages were gathered on one day for the property they are then reported to share. A structural roll-up that matched on the shared word would manufacture agreement that is not there.

---

## How to keep this current

- `/scaffold` (or `scripts/queries/scaffold-check.sh`) — verify every finding against its sources; report AFFIRMED / STALE and any new material since the last full derive. Cheap; no subagents unless something is stale.
- `/scaffold refresh` — re-derive only the STALE findings and fold in new territory, rewriting those findings and their receipts and leaving the affirmed ones untouched. The incremental "cream on top of the churn."
- `/scaffold rederive` — run the full eight-reading pass again and rewrite this file whole. For when the finding-set itself is in question, not merely a finding's ground.

<!-- The receipts. Tab-separated: id, fingerprint, label, sources. scaffold-check.sh reads between the markers; it re-fingerprints each source list and compares. The baseline line records the notes/decisions counts at the last full derive, so drift flags possible new territory. Do not hand-edit fingerprints — regenerate with `scaffold-check.sh --print <sources>`. -->
<!-- baseline notes=501 decisions=119 derived=2026-08-21 -->
<!-- receipts:start -->
F1	c7c07d204db9	House at the opening	notes/the house with no ceiling is transcendence with plumbing.md,ops/chapter concordance.md,notes/four named units of the arc appear as pages inside the earliest edition's single chapter.md,notes/the open center is made possible by the three structures and identical with none of them.md
F2	5e14607df2c1	Psychedelic Moment at the peak	notes/the peak is the one unit the performing law can honor only by withdrawing.md,ops/chapter concordance.md,notes/the earlier contents distribute transcendence where the arc concentrates a peak.md
F3	58658a92fe14	The four-movement spine orders both books	notes/both books move through recognition → relation → participation → stewardship.md,notes/the learning arc.md,ops/methodology/the two-book architecture.md,ops/decisions.md
F4	d541b92742cd	Seventeen thinker-to-unit welds	ops/chapter concordance.md,notes/interlocutors.md
F5	3f7430d9653e	The container's three structures are the keystone	notes/the open center is made possible by the three structures and identical with none of them.md,notes/the scheme's upper layers are one construction built on the container's three structures.md
F6	443d38d741ab	Names stable, numbers move	notes/the executed draft carries the arc's sequence without the treatment's five rooms.md,ops/chapter concordance.md,notes/seventeen chapters rest at madhyama.md
F7	d4e3760c1fca	Two books, one gesture	notes/the two books differ in locus of practice not subject matter.md,ops/methodology/the two-book architecture.md,notes/book-structure.md,ops/decisions.md
J1	838173a69365	Book I's outward arc is new	notes/the learning arc.md,ops/methodology/the two-book architecture.md
J2	6b8d1fc9bb05	Book II's return is thinnest	notes/the learning arc.md,notes/both books move through recognition → relation → participation → stewardship.md
J3	80bc2a3a95ef	Walkable house vs centerless field	notes/book-structure.md,ops/decisions.md
J4	e76fbb335fbf	Peak as event vs theme	notes/the earlier contents distribute transcendence where the arc concentrates a peak.md,ops/decisions.md
J5	53d2ca76d1ab	The system's chapter-weight	notes/the scheme's upper layers are one construction built on the container's three structures.md,ops/chapter concordance.md,ops/decisions.md
J6	8a39691224a3	One spine or two	notes/both books move through recognition → relation → participation → stewardship.md,ops/decisions.md
<!-- receipts:end -->

---

Relevant files:
- `skeletal-structures-venn-2026-08-21.md` — the full eight-reading derivation this file distills
- `ops/chapter concordance.md` — the per-unit comparison several findings rest on
- `scripts/queries/scaffold-check.sh` — the receipt verifier
- `.claude/skills/scaffold/SKILL.md` — the skill that maintains this file
