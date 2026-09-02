---
description: "Five primary readings of 2026-08-23 and 08-24 were missing from the scaffold's evidence ledger at the 08-30 refresh, because a section's marker watches only the records it already cites and the baseline drift counts notes and decisions rather than archive records."
date: 2026-09-02
status: open
severity: gap
---

# a reading record cannot expire the ledger that should cite it

The `/scaffold refresh` of 2026-09-02 re-derived §16 of `ops/scaffold.md`, the evidence ledger that says how deeply each anchor is attested, and found that the ledger had been wrong since before the previous refresh. It listed Rogers as "the 1957 paper unread," Polanyi as "his own work unread," and Buber's full ontological load as awaiting a reading, while `archive/` held `reading — rogers, the necessary and sufficient conditions (1957).md` (2026-08-23), `reading — polanyi, the tacit dimension (1966).md` (2026-08-24), `reading — buber, i and thou and elements of the interhuman (1923, 1965).md` (2026-08-24), `reading — bohm, on dialogue (1996).md` (2026-08-24), and `reading — winnicott, the four moves kept distinct (1958–1971).md` (2026-08-23). The refresh of 2026-08-30 re-derived §16 and did not catch it, and the reason is structural rather than a lapse.

## The mechanism

A cache marker's `src` list names the files whose change would change the section, and §16's list named the reading records it already cited. A new reading record is a new file, so it moves no byte of any file a marker watches, and no section expires when it lands. The baseline line, `<!-- baseline notes=N decisions=N -->`, is the instrument meant to catch material no section yet covers, and it counts two things, notes under `notes/` and rows in `ops/decisions.md`. A reading record lives in `archive/`, so it is counted by neither. A completed primary reading therefore reaches the scaffold only when a session happens to reread §16 for some other reason and happens to check the archive against it, which is what occurred today because §16 had expired on an unrelated one-line change to `notes/interlocutors.md`.

The same shape holds for the lens families: `the-constellation.md`'s participation-law section was corrected by hand on 2026-08-30 because Lewin's record was not in its bundle, and the completed-log entry for that day names it as "one correctness fix the staleness tooling could not catch."

## What would close it, and the evidence for each

- **Count archive records in the baseline.** `scaffold-check.sh` would report `archive N→M` beside notes and decisions, so a new reading record produces baseline drift and the refresh's new-territory pass reads it. The real instance is today's: a count of `archive/reading — *.md` would have shown 41→46 between 2026-08-21 and 08-30 and flagged the five. Its cost is one line in the script and one field in the baseline comment; its limit is that it flags the presence of new records without saying which section they bear on.
- **Make §16 watch the archive directory's listing rather than the records it cites.** A marker that hashed the sorted filenames of `archive/reading — *.md` would expire the ledger whenever a record is added or renamed. Its weakness is that the `src` grammar is a pipe-separated list of files, so this needs a new source kind in the parser.
- **Leave it to the reread.** Today's refresh caught the gap because §16 expired anyway and the discipline of rereading the section against its ground extends naturally to the archive. Its weakness is exactly the evidence above: eight days passed with the ledger stating a falsehood about three thesis-bearing chairs.

The first option rests on one measured instance and costs the least; whether it is worth the script change is a `/rethink` question rather than a session's to settle.

Relevant:
- `ops/methodology/re-stamping a cache marker.md` — the discipline the marker serves, which this gap sits beside rather than inside: the marker did what it was built to do, and the thing that moved was not in its sight
- `ops/observations/a nascent listing in a fresh lens section drifts because the checksum watches the map and not the member notes.md` — the sibling gap in the lens families, where the checksum watches a map and not the states of the notes it lists
