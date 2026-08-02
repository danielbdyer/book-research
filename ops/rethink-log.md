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

---

## 2026-08-01 — Reference by name

**Prompted by.** The author, on reading the transfer-surface pass. The concordance had been keyed by chapter number, one through fifteen, and the notes referred to the book's material the same way.

**The finding, in the author's terms.** Referring to the material by chapter number biases future work toward believing a chapter progression is already settled. It is not. What the author holds is the multi-step arc of the psychedelic experience; the chapter scheme fitted to that arc is unsettled, and the corpus's own documents propose different orderings — the mythic operating system contents invite an arrangement unlike the one the fifteen-unit arc uses. A number is useful as a citation pointer and unfit as the referent for a relational link, because it cannot be commingled across the corpus's several tables of contents without confusion about what is being discussed.

**Proposal and decision.** Make the named unit the referent for the book's material; keep numbers as citation locators inside source anchors only. Approved by the author on 2026-08-01 and implemented in the same session.

**Implemented as.** `ops/methodology/reference by name.md` as the standing directive; a Reference section in `CLAUDE.md` placed above the Voice section; `manuscript_unit: "named unit"` in `ops/derivation-manifest.md`. `ops/chapter concordance.md` was re-keyed so the named unit is the row and each document's placement is a column, which is what makes the corpus's orderings comparable. Six notes were renamed to drop numbered or count-led handles, and every numbered content reference in `notes/` was rewritten to name its unit, including in four notes that predate the draft harvest.

**Reasoning recorded.** The directive is an application of two policies already standing rather than a new principle. The prose register requires exact referents, and this specifies which referent is exact for this material: a name denotes the unit's concern, where a number denotes only its position in one arrangement. The vocabulary policy requires the reference surface to be denotative, and a number is not denotative of anything but sequence. The directive deliberately does not restrict ordering claims, which remain among the most useful things the vault holds; a sequence claim is simply stated as an ordering of named units, so that it survives a change of scheme.

**Consequence found during implementation.** Re-keying the concordance made the two arrangements comparable side by side and surfaced a divergence the numbered table had hidden: the mythic operating system contents stage no peak at all, distributing transcendence as a standing theme across a whole part, where the arc concentrates it into a single break with a descent after it. Given that the author's stated attachment is to the arc of the psychedelic experience rather than to any chapter scheme, this is the sharpest structural disagreement in the corpus. The claim is `notes/the earlier contents distribute transcendence where the arc concentrates a peak.md`. Three further claims were harvested from the same edition's written chapter in the same pass.

**Open after this review.** Four notes predating the draft harvest carry descriptions over the 220-character schema limit — `david loy`, `internal family systems`, `suffering is contraction never corruption`, and `the tuesday is the temple`. They are unrelated to this review and are left for a /verify pass.

---

## 2026-08-01 — Tooling closed out

**Prompted by.** The author, asking what would make future sessions succeed. Two observations were pending and both concerned capability that the vault documents and did not have.

**Decisions and reasoning.**

*The corpus is extracted to a gitignored directory rather than committed.* Three resolutions were open. Committing the extracted text would guarantee the capability even if a container had no network, and was rejected on one ground: a committed copy goes stale silently the moment a source is replaced, where a directory regenerated from `sources/` cannot drift. `.corpus/` is therefore ignored, rebuilt by `scripts/bootstrap.sh`, and skipped per file when the output is newer than its PDF. `===PAGE n===` markers are preserved so a search hit can be traced to a citable location, which is what the provenance rule requires of any evidence the vault acts on.

*The session-start hook no longer commits.* The unsigned commits were a consequence of that hook running with `--no-verify`, and the commits themselves had no content. Removing the commit fixes both, because the auto-commit hook stages everything with `git add -A` and the session record rides along with the next real change.

*Bootstrap reports per step and never aborts.* The previous script ran under `set -e`, so a failure in any step — and one step, the pypdf install, fails in a fresh container until `cryptography` is repaired — silently cost the session every later capability. Each step now reports its own outcome and the script exits 0 with a degraded-capability notice.

**Recorded for the next session.** Word-boundary matching is now documented in `CLAUDE.md` as a requirement rather than a preference, because unbounded matching over the corpus produced one wrong conclusion during the pass that built the open-corpus inventory: "habit" matched *inhabit* and "ritual" matched *spiritual*, crediting two open territories with material that does not exist.

**Open after this review.** The thirteen nascent stubs are debt, counted by `scripts/queries/nascent-stubs.sh`. Nothing has yet reached the manuscript; the output rule in `notes/methods.md` is the standing measure and the vault has no instrument for it.

---

## 2026-08-02 — The writing test

**Prompted by.** The author, after the reorientation pass: the admission standard should be the sentence that drove it — pay attention to what will satisfy future writing, not what supplies more work to do — hardcoded across the agentic instructions.

**Implemented as.** `ops/methodology/writing test.md`, one page: the test (would a drafting session reach for this?), three sorting consequences (vault-state material routes to ops/; an absence is one seed, not an essay; the payload leads and policies are cited, not re-argued per note). Woven at every admission decision point: CLAUDE.md's pipeline section and risk table, methods rule 1, the manifest's `admission_test` field that skills read at invocation, the reduce skill's override block, the seed skill's region-naming instruction, the learn skill's admission bar, and the rethink skill's standing questions. The prior standard remains as the floor.

**Sweep result.** The same treatment applied across existing notes found the disease confined to one layer: the structure-and-provenance notes were re-arguing standing policies per note. Thirteen boilerplate passages removed ("Source standing:" and "Craft standing:" bullets, two vault-narration paragraphs). Doctrine, image, and craft notes needed nothing — they are the writing-serving payload. A residual audit found no note with more than two vault-self-references, each a factual attribution.
