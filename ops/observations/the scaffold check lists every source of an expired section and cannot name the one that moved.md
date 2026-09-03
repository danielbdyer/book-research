---
description: "One concordance row expired seven scaffold sections at once, and the check listed every source to re-read without naming the file that had moved; a HEAD worktree found it."
date: 2026-09-03
status: open
severity: gap
---

# the scaffold check lists every source of an expired section and cannot name the one that moved

The `/scaffold refresh` of 2026-09-03 opened on a report of seven expired sections — ARC, ANCHORS, R1DRAFTS, R2ARC, R4THINK, R7HOUSE, EVIDENCE — and no baseline drift. The whole cause was one uncommitted line in `ops/chapter concordance.md`, the row recording where the Afterglow's part-seam differs between the drafts and the descriptive sources, and the concordance sits in the source list of exactly those seven markers. The check said none of this. For each expired section it printed the stored and current checksums and the full `re-read:` list — twenty-one files for the evidence ledger, fourteen for the constellation — and the session established that a single file had moved, and what had moved in it, only by adding a git worktree at HEAD, running the check there (sixteen fresh), and diffing the working tree against it.

## The mechanism

A marker stores one CRC over the sorted `path:crc32` lines of its sources, so the check can tell that the bundle moved and cannot tell which member moved: the per-file checksums are computed on the way to the bundle value and thrown away. The `missing:` line is the one case where the check does name a file, because absence is visible without a stored per-file value. The appendix of `ops/scaffold.md` had described the check as naming "the source whose bytes moved," which the tool does only for a deletion; that sentence was corrected in the same refresh.

The cost scales with fan-out. `ops/chapter concordance.md` is watched by seven of sixteen scaffold markers and `ops/decisions.md` by three, the same shared-source cascade `ops/methodology/re-stamping a cache marker.md` records for the decisions register and the scaffold itself. Every one-row addition to the concordance therefore asks a session to re-read seven sections against a delta it has to find for itself.

## What would close it, and the evidence for each

- **Store per-file checksums in the marker and report the mover.** A `src=` grammar of `path@crc32|path@crc32` lets the check print `moved: ops/chapter concordance.md` beside `re-read:`. The real instance is today's: the diagnosis took a worktree checkout and would have taken one line. The cost is a change to the marker grammar, the parser, and `--crc`; every existing marker would be re-stamped once.
- **Have the check consult git.** For an expired section, `git diff --stat <commit at derived date> -- <sources>` plus the working-tree status names the movers without changing the marker grammar. Its limit is that it reports by commit time rather than content, which is the trade the content-hash design was made to avoid, and it says nothing when the mover is an uncommitted edit unless the check also reads `git status`.
- **Leave it to the session.** The worktree diagnosis is four commands and it worked. Its weakness is that it is undocumented and rediscovered each time, and that a refresh which skips it re-reads seven sections in full for a one-row delta.

The first option is the one that keeps the content-hash discipline intact; whether the grammar change is worth making is a `/rethink` question.

Relevant:
- `ops/observations/a reading record cannot expire the ledger that should cite it.md` — the sibling gap, where the thing that moved was outside every marker's sight; here it was inside seven and unnamed
- `ops/methodology/re-stamping a cache marker.md` — the shared-source cascade this instance adds a third file to
