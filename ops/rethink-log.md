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


---

## 2026-08-02 — Center of gravity

**Prompted by.** The author, reviewing the proposed first research round, which led with the molecule catalogue. The author's decision: the book's centerpieces are the convergence of thinkers (fingers pointing at the moon) and the lived practice (walking the trail); the system vocabulary is scaffolding — an uncertain secondary or tertiary concern, not a given outcome. The author's role is to get out of the way of both centerpieces.

**Why this is a directive and not a preference.** The divergence from the sources' weighting is deliberate and needs active defense: the corpus's page-count, and therefore semantic retrieval and every coverage instrument built from it, overweight the system. The prior handoff demonstrated the mechanism — it ranked the molecule reconciliation first because the concordance marked it "contested," and that marking existed because the sources spend the most pages there. The instruments inherit the corpus's emphasis; only a standing directive counters it.

**Corpus support.** The decision is a reweighting the corpus's deepest layer endorses: "None of these is the point. They are scaffolding… removes when the curve holds" (abridged: prologue). The convergence centerpiece has two worked exemplars already on record (the guild's one law at overlay four; the Stance attractor). The somatic ground is explicitly kept undiminished.

**Implemented as.** `ops/methodology/center of gravity.md`; the claim at `notes/the system is scaffolding rather than the centerpiece.md`; a Center of gravity section leading CLAUDE.md; `center_of_gravity` in the manifest; weaves in the reduce, learn, and rethink skills; reweighting lines in the index, container-anatomy, contraction-not-corruption, interlocutors, research-frontier, and felt-shift maps; the extraction queue reordered with the three system items marked demoted, as-needed.

---

## 2026-08-03 — The consumption layer

**Prompted by.** The author, after a fresh session on this vault got lost: it could not find the load-bearing current material from the entry surfaces, and spent itself re-litigating the settled notation-glyph question. The directive: reorganize the research base so the right information is easy to consume, from the perspective of the session that ended 2026-08-03.

**Evidence.** Three read-only audits — a cold-start simulation, a distraction-surface survey, and a consumption-path trace — established the mechanism:

1. The injection taught the wrong priorities. Roughly 36 KB at session start: 65% the goals file, whose completed log outweighed its active threads and held the five newest synthesis notes unpathed, in one sentence, under "Completed"; 31% a file tree that hid `sources/` and `scripts/` entirely (`-P '*.md'`) while dumping ~130 alphabetized note names. Every judgment channel emitted zero bytes, with no marker that silence is healthy, and the one high-value block — the methodology descriptions — was an mtime-ordered five of eleven.
2. Navigation inverted the declared center. The index top-billed the two maps it labels scaffolding, left the convergence centerpiece unremarked, gave the lived practice no node, and pointed its getting-started at the sixty-six-entry backlog. Map lists append at the end, so the newest material was guaranteed the worst positions, and nine of twelve maps terminated on unresearched candidate names.
3. Openness is rendered state; closure was narrative filed elsewhere. `status: live`, "What remains," and the dormant `supports:` field display at the point of use, while decisions lived unlinked in this log and in the goals file's completed section — so the vault's most deliberate choices read as its most arresting defects, the no-glyph decision first among them.

**Decision.** The author's directive of 2026-08-03 is the decision. The storage layer is untouched — the flat notes directory, the three navigation tiers, and the capped map set are derivation choices at high confidence — and the change is confined to the orientation layer.

**Implemented as.** `ops/orientation.md` (the center, the reading order, the torch, the settled-questions pointer; injected first by the hook). `ops/decisions.md` (the register of closed questions, organized by question, greppable). `ops/goals.md` split: the active threads stand alone and the dated log moves to `ops/completed.md` under a paths-required convention. Closure stamped at nine sites where openness showed: the figure glossary, CLAUDE.md's Relations section, the claim template, both queue files, book-structure's answered question, both resolved observations, `ops/tensions/README.md`, and research-frontier's graduated entry. `notes/index.md` rewritten to lead with the center and tier the maps by centrality. A salience pass over the maps: the synthesis notes moved to leading positions, and the backlog-terminating "What remains" sections re-led with each map's own live question. The session hook reworked: orientation injected first; the tree shows PDFs and scripts and caps the notes dump; all methodology descriptions listed; the completed log's newest entry as the continuity line; an explicit all-quiet line when no condition fires. README and `ops/methodology/methodology.md` refreshed; the routing table extended with destinations for orientation, the completed log, and closed questions.

**Convergent evidence.** The sibling branch (PR #3) independently hit the same wall and built the same shape of fix: `ops/origins chronology.md` gathers roughly forty dated fixture points that had existed only as substantiating clauses inside notes whose subjects were doctrines. Two threads needing an ops-level synthesis surface in the same week is the design's confirmation, and is recorded here as such.

**Open after this review.** Whether the orientation file stays current is the new maintenance question; its own header makes staleness a same-session fix, and CLAUDE.md's Persist step now names it. The glyph question remains exactly as settled as before — this review made the settlement findable and changed no usage.

---

## 2026-08-03 — The contract re-authored

**Prompted by.** The author, after merging the consumption-layer reorganization: "I'm not sure we've got enough in CLAUDE.md that needs to be up front. Let's let you author it from front to back. You can keep as much as you like."

**Decision.** The directive is the decision. CLAUDE.md was rewritten in one voice, front to back. The opening now carries what the contract had never stated — the vault serves the writing and the third thing's evolution (author statement, 2026-08-03), with the pilot move as the deliverable beneath every deliverable — followed by the book's law, the center, and the stance, so the first screen is the soul and the law rather than repository mechanics. The old Reference and Voice sections merged into five Posture directives; the citation registry became a table; Relations compressed onto its settled pointer; the generation archaeology moved to the tail.

**Boundary stated.** CLAUDE.md is the durable law; `ops/orientation.md` is the current state. Current-state facts no longer live in the contract.

**Audit.** 189 lines became 176. A coverage audit walked every removed line: each rule survives in place, survives compressed with a pointer, or is on the recorded cut list (archaeology and duplicated center statements). The audit caught and restored two near-losses — the vocabulary-policy directive and the note-title rule — which is the audit doing the work it was run for.
