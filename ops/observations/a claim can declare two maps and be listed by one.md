---
description: Seven claims declared a topic map in their YAML that does not carry them in its claim list; no maintenance condition counts this, because each of them does belong to at least one map.
date: 2026-08-03
severity: friction
status: open
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
