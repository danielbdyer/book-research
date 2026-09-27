---
description: "A reading across four of the vault's own documents passed a quotation script that searches every file at once, while its attributions still credited findings, sections, and next steps to the wrong document; a hand check against each named document corrected more than twenty places."
date: 2026-09-27
severity: friction
status: open
---

# a reading across the vault's own documents misattributes between them unless each citation is checked in the document it names

On 2026-09-27 a session wrote `ops/patterns across the catalog of meaning and the facilitation ecology — 2026-09-27.md`, a reading across four documents written the day before. Its quotation script searches the vault, the corpus, and the cached source pages together, and it reports a quotation as found if any one of them contains it. Every quotation passed except two phrasings of the session's own that the draft had set in quotation marks. The hand check that followed opened each document the reading names and looked for the passage there, and it corrected more than twenty places the script could not see. The largest was a next step credited to the catalog of meaning that the catalog does not contain. Others were a finding credited to the catalog that the catalog reports from pull request #23, a provenance quotation cited at lines 13–14 that stands at lines 15–16, a Zen judgment stated as the judgment of every tradition, a survey coordinate miscounted, and several claims stated more broadly than their sources state them.

## What it cost

Nothing wrong reached the author, because the check ran before publishing. The check took longer than the script, because each attribution had to be looked up in the document it names.

## What it implies

A script that finds a quotation somewhere confirms the words and not the attribution. When a document summarizes other vault documents, which quote one another, the same words are often found in several files at once, and the script's pass says nothing about which file the sentence credits. The check that catches these errors is a lookup of each citation in the file, section, or line it names. A later version of the script could report, for each quotation, whether it is found in the file the sentence names; no rule needs to change now.
