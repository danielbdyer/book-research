---
description: Two fresh lens sections still listed Bohm among the unread ten days after his reading record landed, because a marker watches the notes a section attests and never the archive or the roster.
date: 2026-09-03
status: open
severity: gap
---

# a fresh lens section can call a thinker unread after the archive holds the reading

The `/lens refresh` of 2026-09-03 found two sections whose checksums were current and whose facts were not. `the-two-books.md`'s Book I open edge said the facilitation lineage "(Grove, Bohm, Heron & Reason, Schwarz, Scharmer, Freire & hooks) is corpus-relay-only, queued but unread," and `the-concerns.md`'s relational entry listed "the wider facilitation lineage unread at the text (Grove, Bohm, Heron & Reason, Freire & hooks)" in the same bullet that said, four clauses later, "Bohm is read at *On Dialogue* and chairless." Bohm's record, `archive/reading — bohm, on dialogue (1996).md`, is dated 2026-08-24. The Scharmer question in the same list had been answered on 2026-09-02 by the routing-surface recount, which found the third name to be Meadows. A third instance sat in the index: `the-lenses.md`'s Two Books line still said "the four joints left to the author" after the fifth joint was seated on 2026-09-02. The `/lens refresh` of 2026-09-02 had corrected the same Bohm fact in `LOC-register` and `CON-founding` and left these three standing.

## The mechanism

Two things combine. A section's marker hashes the notes its members are attested by, and neither `archive/` nor the interlocutor roster is in any marker's source list, so a completed reading changes no checksum in the lens layer — the same blindness `ops/observations/a reading record cannot expire the ledger that should cite it.md` records for the scaffold's evidence ledger. And the sync pass the skill prescribes describes its drift check in the vocabulary "named-but-unseated," while the assertions the families actually carry read "unread," "queued but unread," "corpus-relay-only," and "still without a chair"; on 2026-09-02 the check corrected the sections that were already open for rereading and did not sweep the fresh ones. The result is a fact that is wrong in a section certified fresh, which is the same shape as `ops/observations/a nascent listing in a fresh lens section drifts because the checksum watches the map and not the member notes.md`, arriving for reading status rather than for state.

## What would close it, and the evidence for each

- **Give `lens-check.sh` an assertions mode.** A `--assertions` sweep that prints every family line carrying a reading-status word (unread, unseated, queued, corpus-relay, no chair) beside the `archive/` filenames and `notes/` interlocutor files matching the proper names on that line would have listed all three of today's instances as a worklist in one command. It fixes nothing and names everything; its cost is a name-matching heuristic that will over-report common surnames.
- **State the sync pass as layer-wide in the skill.** One sentence in `/lens refresh` step 2 — the drift check runs over every family's assertions, fresh sections included, and the words it looks for are the ones the families use — would have caught the two Bohm lines on 2026-09-02, at the cost of a grep per refresh.
- **Leave it to the session.** Today's pass found them by grepping the families for the vocabulary and checking `ls archive/`; that took two commands and worked, and it is rediscovered each time it is not written down.

The first and second are not exclusive; the second is the smaller change and the one that binds the pass that already exists.

Relevant:
- `ops/observations/a nascent listing in a fresh lens section drifts because the checksum watches the map and not the member notes.md` — the sibling instance, state instead of reading status
- `ops/observations/a reading record cannot expire the ledger that should cite it.md` — the archive-side blindness this instance shares
- `ops/methodology/re-stamping a cache marker.md` — the discipline that makes `derived=` the reread receipt; both corrected sections now carry today's date with their checksums unchanged, which is what a prose-only correction under that rule looks like
