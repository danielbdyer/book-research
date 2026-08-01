# Rethink log

A record of each configuration review: what evidence prompted it, what was proposed, what the author decided, and what was implemented. The /rethink skill appends here. Proposals are never auto-implemented; every entry records an author decision.

---

## 2026-08-01 — Notation and category additions after the draft harvest

**Prompted by.** The admission of three manuscript drafts on 2026-08-01 (see `ops/methodology/source standing.md`). The harvest surfaced material the existing configuration had no way to hold, and the author asked directly what had not been developed into the vault's research posture and notation.

**Evidence.** Four observations from the harvest itself rather than from accumulated session friction, which is a departure from the usual trigger and is noted as such:

1. Four of the eight claims produced by the harvest were relations between two document states written out as whole notes, because the atlas's notation set (≈ ⚡ ⊖ ⟿) has no edge for revision. Every future draft comparison would have cost a note.
2. The drafts are the only documents in `sources/` in which the book executes, and no category could hold what execution demonstrates. The categories available all describe propositions, structure, or images; none records a mechanism.
3. Bringing one chapter to a finish required re-reading four documents, because nothing recorded per-chapter what each source supplies.
4. The harvest declined a substantial amount of material and recorded none of it, against the admission standard's own requirement that declines keep their reason.

**Proposals and decisions.** All five proposed; all five approved by the author on 2026-08-01 and implemented in the same session.

| # | Proposal | Decision | Implemented as |
|---|---|---|---|
| 1 | A per-chapter concordance recording what each source supplies and which document is the reference text for which element | Approved | `ops/chapter concordance.md` |
| 2 | A claim recording the gap between the designed and the executed apparatus | Approved | `notes/the drafts execute one of the seven designed apparatus devices.md` |
| 3 | A `craft` category for mechanisms observable in executed prose, governed by a mechanism-not-verdict rule | Approved | `ops/methodology/craft evidence.md`; category added to `templates/claim-note.md`, `ops/derivation-manifest.md`, and `CLAUDE.md`; four notes written |
| 4 | Five directed revision relation names, with no glyph | Approved | `CLAUDE.md`, Relations section; rows in the concordance |
| 5 | A declines record separate from the deferral queues | Approved | `ops/queue/declines.md` |

**Reasoning recorded for the two configuration changes.**

*The craft category.* The vault's category set was capped deliberately, and adding to it needed a reason that the existing set could not absorb. `structure` records a fact about the book as a made object — a section's job, an overlay, a device — and is a report of what the sources say the book is. A craft note records how executed prose produces an effect and must state how the claim would be checked. The distinction is not cosmetic: `structure` claims are available from descriptive sources, and craft claims are available only from drafts, because only a draft executes. The risk the category carries is that it becomes a channel for relaying the manuscript's self-praise, which directive 4 forbids; the mechanism-not-verdict rule and the checkability requirement in `ops/methodology/craft evidence.md` are the guard, and the declines record shows the rule being applied.

*The revision relations, without a glyph.* The atlas ships its notation and the vault records it without leaning on it. Inventing a symbol and adding it to that set would misrepresent the set's provenance, since the atlas did not ship one and a future reader could not tell the vault's addition from the corpus's. The five relations are therefore named in words only — carried unchanged into, revised into, compressed into, dropped at, added at — and each is stated with both states and a direction. This is consistent with the vocabulary policy, which requires the reference surface to be denotative, and with the prose register's third rule, that notation never carries an assertion alone.

**Consequence found during implementation.** Building the concordance surfaced a finding that revised an earlier claim: the abridged edition follows the treatment's chapter sequence exactly and contains almost none of the treatment's second-edition content, which qualifies what "drafted in full" means. The claim is `notes/the executed draft carries the arc's sequence without the treatment's five rooms.md`. This is the concordance doing the work it was proposed for, on its first pass.

**Open after this review.** `ops/observations/` and `ops/tensions/` were created during this session and hold one observation, on the session-start hook committing unsigned records. It is pending and is not consumed by any proposal above.
