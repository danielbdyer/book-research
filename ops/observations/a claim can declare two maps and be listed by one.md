---
description: Seven claims declared a topic map in their YAML that does not carry them in its claim list; no maintenance condition counts this, because each of them does belong to at least one map.
date: 2026-08-03
severity: friction
status: archived
resolved_by: "verified resolved at /rethink, 2026-08-05"
---

# a claim can declare two maps and be listed by one

The reweave pass of 2026-08-03 found `notes/both poles of the convergence refuse the engineered epiphany.md` declaring two topic maps, `recognition` and `felt-shift`, and appearing in the claim list of only the first. An audit of the whole vault found six more of the same shape:

- `the earliest chapter was written through a voice distilled from the author's first fifteen poems` → `methods`
- `flourishing flow and facilitation converged on one stance in the author's own record` → `methods`
- `the making of the book enacts the law the book states` → `methods`
- `the corpus quotes the author's poems rather than the poems quoting the corpus` → `methods`
- `reading is remembering` → `book-structure`
- `the book is written to the relational field and enacted upon the author first` → `answerability`

Five of the seven point at `methods`, which suggests the pattern has a cause rather than being seven separate slips: a claim's second map is usually the structural one, and a /reflect pass working a doctrinal concern updates the doctrinal map and stops.

Nothing in the maintenance surface catches this. The session hook counts claims with no topic map, and each of these has one, so the condition stays quiet and reports health. /verify checks that the YAML `topics:` array and the `Topics:` footer agree with each other, which they do here — the disagreement is between the claim and the map, in the direction the claim cannot see. The consequence is navigational rather than structural: a reader who enters through `methods` does not reach four claims that name `methods` as their concern, and the map's own "What remains" section is written against an incomplete list.

The felt-shift instance was fixed in the same pass, because that claim was inside the reweave's target set. The other six are left for /reflect, which owns the claim lists and can write each gloss in the map's own voice. What is worth deciding at /rethink is whether this should be a counted condition — a one-line query over the notes would report it — or whether it stays a thing /reflect catches when it next visits the map.

## Closed in part, 2026-08-03

The /reflect pass of the same day fixed all six and wrote each gloss in its map's own voice: the four `methods` claims under a new subsection of that map's claim list, "What the record of the making adds to the rules," which states what each one changes about reading a source or counting agreement; `reading is remembering` placed in `book-structure` directly beneath the design law it is the smallest instance of; and the relational-field claim placed in `answerability` beneath the madhyamā tension it reframes, with the map's opening synthesis extended to say how. The pass also ran the query this note anticipated over all 159 claims and confirmed the audit's list was complete: six cases, no others, and none introduced since.

Two things the query surfaced that this note did not. First, the check has to distinguish *absent from the map entirely* from *carried in the map's prose but outside its claim list*: 106 notes are in the second state, which is not a defect, because the larger maps deliberately split within their section structure (`interlocutors` by seat, `tensions` by status, `book-structure` by the image system and the making). A counted condition that did not draw that line would report a hundred false positives on day one. Second, the inverse shape exists too and is worth naming separately: eleven of the crossover-cluster candidates were carried in `research-frontier`'s prose while declaring only `interlocutors`, where their four priority-five peers in the same pipeline position declared both. Those eleven now declare both. The direction of the error was the opposite of this note's — the map saw the claim and the claim did not see the map.

What stays open for /rethink is unchanged: whether this becomes a counted condition. The evidence for it is now better, since the fix took one pass and the query is cheap; the evidence against is that the query needs the section-structure exemption above to be worth running.
