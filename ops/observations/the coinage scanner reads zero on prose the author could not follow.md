---
description: "The four documents of the reframe study scanned at zero bare coinages while the author found them unreadable, because their faults were invented labels and figures of speech."
date: 2026-09-25
severity: friction
status: open
---

# the coinage scanner reads zero on prose the author could not follow

On 2026-09-25 the author flagged the whole of pull request #23: "I'm afraid I don't understand much of this writing." The four documents at the center of that request, `reframe-map-and-system-2026-09-25.md` and the three `system-and-vault-*` documents, had each scanned at zero bare hard terms under `scripts/queries/plain-scan.sh` before he read them, and they still scan at zero after the rewrite. The scanner's count did not change because it did not measure what was wrong.

## What the scanner measures, and what was wrong

The scanner reads `ops/plain-language lexicon.md`, the list of the vault's own coined words, and reports a coined word that appears with no plain explanation anywhere in the file. The faults the author's flag exposed were of two other kinds. The first was invented labels: the design coined its own names for its kinds of material and its scale of the author's relation to material ("Locus," "Crossing," "the Remainder," "surfaced standing"), and later documents used those names as handles, so the invented vocabulary spread from one document into four and then into the eight readers' reports. None of these names is in the lexicon, because the lexicon lists the vault's older coinages. The second was figurative wording where a literal word exists ("the author's own layer is thin everywhere," "how the system grows to receive it"), which no word list can catch, since the same words are literal in other sentences. The row of 2026-09-25 in `ops/register violations.md`, the log of sentences the author has flagged, records the specimens.

## What followed

The same day the author set how such a repair is finished, and the rule is recorded with rule 13 of `ops/methodology/prose register.md`: "Don't do a programmatic word list. Reread and rewrite," and "you may start with programmatic, but you're not complete until you reread and rewrite yourself." The rewrite of the study's fourteen files was finished by a full reread of each file by hand, and `ops/plain-language log.md` records each file with the scanner's count and with who reread it.

## What it implies

A count of zero from the scanner shows that no listed coinage is left unexplained. It is not evidence that a file is plain, and a session reporting a repair to the author should not present it as such. Two changes are possible, and neither is made here, because each changes the vault's tools: adding a document's invented labels to the lexicon whenever a design coins them, and treating the "Reread by" column of the treated log, rather than the scanner's count, as the record that a repair is finished.
