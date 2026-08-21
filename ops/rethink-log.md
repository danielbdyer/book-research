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

**Extended the same day.** A cold-read battery (a fresh agent answering ten working questions from the new file alone) passed on all ten and returned editorial findings; six were adopted as surgical fixes — `poems #16` bound to "the sixteenth," the drafts' working order stated where the record establishes it, the resolution rule moved to the `status:` field it constrains with the transcribe-never-originate distinction, Sources moved above Writing a claim, a vault-state routing row, the Persist bullet unchained — one was declined (duplicating the word-boundary warning into Orient; the rule was found and applied correctly from where it lives), and one was routed as an open observation (`ops/observations/the line between a concordance row and a tension note is undrawn.md`). The author then directed a further addition: roughly fifty durable lines — "The book, in brief" and "How it came to be" — carrying the synopsis, the backstory, the direction of quotation, the origin story, the two honesty rules, and the corpus known by character, on the criterion that nothing in them goes stale as the work evolves.

## 2026-08-05 — Five proposals approved; the counted conditions given eyes

Fired on the observation count reaching ten. The pass found six proposals, and the author approved five the same day; the sixth he asked to have explained before deciding, and it stays open.

**The finding that decided the pass's priority.** The /rethink skill's own gather step greps `^status: pending` in `ops/observations/`. This vault writes `status: open`. The query returns zero regardless of what is open — verified against 7 open observations and 1 open tension — so a session following the skill literally would report "Clean State" while the immune system was full. This is the third instance of the known skill-versus-vault conflict, and unlike the other two, which point at a `queue.json` that does not exist, this one silences the evidence rather than a reference. Recorded as a decisions row rather than fixed in the skill, because the skills are versioned upstream and the contract wins where they conflict.

Beside it, the session hook counted files in `ops/observations/` and printed the number as "pending observations." Two of the ten were `status: resolved`. The condition had been firing on a number that included them, and the word describing it was wrong. Fixed at `session-orient.sh:149`; the count is now 7.

**Approved and implemented.**

1. *The counted conditions get an exemption layer and a parser.* `scripts/queries/frontmatter-parse.sh` added — the first thing in this vault ever to parse its own YAML, every other check being ripgrep over line patterns, which is how a fifth of the graph carried unparseable descriptions unnoticed until 2026-08-03. The colon-quoting rule is now a constraint in `templates/claim-note.md`, where the register's own habit makes the defect the natural sentence to write. The hook fix above. And the convention that every counted condition ships with its exemption clause stated in its own header — applied to `nascent-stubs.sh` and `unconnected-claims.sh`, because three separate observations had independently discovered the same missing clause.
2. *The skill mismatch recorded* as a decisions row.
3. *`nascent` split from `privated`.* Measured before the change: `full` 43, `nascent` 36, and `privated`, `flourishing`, `composting` at zero each. Of the 36 nascent, 13 were seeds citing the earliest contents and 24 were complete claims waiting on an unread primary work, with no residue — two thirds of the value meaning something the value does not mean. The 24 moved to `privated`, each carrying a new required `privation:` field naming its specific absence. That is the anti-ladder tension's own option 2, viable only because the value went from 0 to 24: a state that must name what is missing cannot be used as a bare rank. What it does not answer, and the tension stays open on this: whether the five stage names are a developmental ladder the vocabulary policy would otherwise have refused. The change also populates a rung that was empty, which cuts the other way and is recorded rather than argued away.
4. *The pre-sorting reading instruction* added to `center of gravity.md`. The treatment — take the findings, decline the organizing principle — had been invented twice from opposite directions three days apart, for the corpus and for an outside synthesis, without being written down.
5. *Chairs are found by name, not by meaning.* A retrieval note in `methodology.md`, and a correction to how /verify's retrieval test should be run for a note whose subject is a person, since as run it reports a failure no description can fix.

**Not approved, and open.** Proposal 6 would draw the line between a concordance row and a doctrinal tension note. The author asked for it to be explained before he decides; `ops/observations/the line between a concordance row and a tension note is undrawn.md` stays `status: open`.

**Deliberately not proposed.** A coverage check for propositions the corpus states and no note carries. The only method that answers the question is a per-source proposition audit, and the cheap approximations are worse than honest ignorance. Stays open at `ops/observations/nothing counts propositions the corpus states and the vault never wrote.md` until a source pass makes the audit incidental.

**Also recorded this day, from the author rather than from the pass.** `ops/methodology/reporting to the author.md` — the prose register now governs what a session says to him, with one addition: a vault-internal term is given its referent before it is used as a handle. The vault's vocabulary is the pipeline's invention, not his; he authored the book those terms describe, not the terms. The occasion was proposal 6 being reported as its conclusion alone.

**Statuses.** Three observations archived as verified resolved, five stamped `resolved` with the proposal that closed them, two left open. The count is now 7 open, below the threshold of 10.

---

## 2026-08-21 — The observation backlog, read against the direction the vault has since taken

**Prompted by.** The open-observation count reaching eleven, above the ten-entry threshold, where it had stood since 2026-08-15 (`ops/goals.md` thread 9). This is the first formal /rethink since 2026-08-05: the rounds between — the pruning of 2026-08-09 and the reframe execution of 2026-08-16 — recorded their decisions in `ops/decisions.md` and `ops/completed.md` through their own flows rather than through this log, so eleven observations accumulated, several of them written at the 2026-08-05 pass with the note "input to /rethink" and never taken up.

**The evidence, and the finding that organizes it.** Eight of the eleven open observations are one finding, which the observations themselves cross-reference under the heading "the pattern this belongs to": the vault's health apparatus is object-shaped. Every counted condition validates a note that exists — its frontmatter, its links, its map membership — and none can see a proposition the corpus states and no note carries, a shelf a drafting session will need and not find, a graph grown past its last summary, or an assertion that went false when its subject changed. Each of the eight proposes, as its remedy, a new check, a counted condition, a growth trigger, or an instrument. The finding of this pass is that the vault's own direction since these were written has already answered that whole class in the negative. The author's decision of 2026-08-09 to "cut all standing self-measurement" retired eight instruments and the register-enforcement machinery (`ops/decisions.md`; `ops/completed.md`, 2026-08-09). The output-first plan bans "any new script unless a recorded failure demands one" (`ops/goals.md` thread 11). And the writing test holds that material describing the vault's own state routes to `ops/` and is not the work (`ops/methodology/writing test.md`). So the backlog is answered mostly not by building but by the direction already taken — and an observation folder filling with proposals to grow the immune system is itself a small instance of the vault's highest-rated failure mode, vault work displacing manuscript work. The precedent the register register-check history carries — "I do not think you can find this tic by a simple regex… it's more of a stance in authorship" (`ops/decisions.md`, 2026-08-05) — is the same disposition at the scale of one rule.

**Triage of the eleven open observations.**

*Resolved by this pass, because a prior author decision removed the subject (statuses stamped).*

- **`the register tripwire blocks well-formed sentences it cannot parse`** — the blocking write-gate it measured was retired 2026-08-09, in the pruning that cited this observation's own count (seventeen false catches against four true) as evidence. Verified: no register hook and no `register-tripwires.py` remain. Stamped `resolved`.
- **`the recorded region count lags the graph offered for recognition`** — the offering it called stale was refreshed twice after it was written, by the epistemic audit of 2026-08-16 (163 nodes deleted) and the second-pass audit of 2026-08-20 (seven communities recomputed on the 421-note graph). The "five recorded against eight computed" lag is gone. Stamped `resolved`; the growth-trigger tail folds into the crux below.

*Recommended for closure with a standing disposition — no build, because the concern is already carried or already decided (the author confirms).*

- **`coverage of the sources is not coverage of the writing's needs`** — the reach-list instrument it proposed was among the eight retired 2026-08-09; its insight is permanently carried by the writing test and the center-of-gravity directive, which already hold that the corpus's thin places are where the book's work is.
- **`every maintenance condition counts unfinished work and none counts unsynthesized work`** — its instrument (`ops/outline.md`) was retired 2026-08-09; the need it named, one surface stating what the whole body asserts, is now met by the developmental spine `notes/the learning arc.md` (author decision, 2026-08-20) and by `scripts/queries/outline.sh` on demand. The general growth-trigger question is the crux below.
- **`nothing counts propositions the corpus states and the vault never wrote`** — already given its disposition at the 2026-08-05 pass, which "deliberately did not propose" a check here: the only method that answers the question is a per-source proposition audit, the cheap approximations are worse than honest ignorance, and the gap is answered incidentally by source passes. That disposition stands.
- **`the material that arrives attached to no name is missed twice`** — both halves are covered: the extraction miss by the directive `propositions carry names and images.md`, the filing miss by the third check in `unconnected-claims.sh`. The residual question is only where in the pipeline filing happens, and the observation's own evidence favors batch filing (it produced better map sections). Left to /reflect practice.
- **`the register's failures concentrate where compression pressure is highest`** — the countermeasure machinery it references is retired; the insight is carried by the register directive (a stance, not a regex) and by `/recompose`. Its one live sub-question, whether /verify's cold read should weight paragraph openers and glosses, is a one-line practice note for the recite step rather than an instrument.

*The crux, genuinely open (`scripts/queries/decided.sh growth` returns nothing).* Four observations converge on one question: should the condition set gain a growth-triggered or synthesis-debt condition — one that fires when the graph grows past its last summary rather than when work is left undone? The recommendation is no new counted condition, on the same ground the author took on 2026-08-09 and in the output-first plan: a growth trigger is standing self-measurement, and the need beneath it is already served by content that cannot be forgotten (the learning-arc spine) and by scripts that print on demand and cannot drift (`clusters.sh`, `outline.sh`). The disposition to record is that the vault does not add growth-triggered self-measurement conditions; the maps' own self-flags and the region census are read at /rethink, which is where this pass read them.

*Recommended cheap adoptions — guidance, not apparatus (the author blesses the wording).*

- **`a claim and its chair created together make the claim unreachable by meaning`** — extend the existing retrieval note in `methodology.md` with its second half: a claim written alongside a chair is reachable by neither surname nor meaning, so a session seeking the proposition reads the chair's Relevant Notes rather than searching the index. The path already exists — all seven measured claims are linked from their chairs. This extends the 2026-08-05 retrieval disposition rather than reopening the resolved `semantic search does not find a note inside its own topical cluster`, whose guidance choice was correct. Evidence: one measurement, seven of thirty-four notes on one day.
- **`a note that asserts an absence is not rechecked when the absence is filled`** — adopt the dating convention the one correct instance already models ("had no chair until 2026-08-05" rather than "has no chair"), and decline the two proposed checks. Consistent with the 2026-08-05 stance-not-regex precedent. Evidence: three failures and one success from a single day's work.

*The one genuinely actionable, non-apparatus work item.*

- **`the map sections gather by arrival batch rather than by concern`** — the oversized maps carry sections named by the expedition that delivered the material ("The reframe conversation", "What the transmission digs added") rather than by concern. Measured this pass: `relational-field` 133 claim-list entries, `book-structure` 117, `interlocutors` 108, `recognition` 107, `felt-shift` 81, all far past the ~25 split guideline. The maps name their own seams — `relational-field` between the Third-Entity core and the facilitation craft, `recognition` between the ecology ground and the rest — and each flags the split as "the likely next structural move"; `ops/goals.md` thread 19 records it as pending after the 2026-08-21 harvest pushed four maps further over the line. The recommendation is a /reflect concern-resort pass through the oversized maps along the seams they name, plus one line added to the map-split rule: a section named by an arrival event is a holding pen, resorted by concern rather than kept. This is existing-pipeline work, not new apparatus. It competes for time against the reading queue and Book I's drafting, and the maps are navigational rather than blocking, so the timing is the author's.

*Author judgment call on a single new query.*

- **`the reweave scope is a number in prose that nothing recomputes`** — /reweave rebuilds its target set (notes with zero inbound links from any non-map note) by hand on each run, and the hand count was once nine in prose against seventeen in fact. The narrow fix is a three-line query /reweave runs on demand, not a hook condition. For it: the cost of trusting a wrong count is stranded notes. Against it: the standing rule to add no new script without a recorded failure, and both runs so far recomputed rather than trusting, so no note was actually lost. This is the one check-proposal whose target is a real pipeline floor rather than a growth measure; the recommendation leans against on the standing direction, and the decision is the author's.

**The three standing questions.**

1. *What reached the manuscript since the last pass?* One pilot letter, sent to real readers before 2026-08-14 — the answerability clock struck once. No chapters were drafted, and Book I's drafting is the pending output the author owns (`ops/goals.md` thread 18). The window's other work — the re-grounding of 2026-08-16, the learning-arc spine of 2026-08-20, the harvest of 2026-08-21 — is preparation. The vault's own measure returns one letter and a large increase in readiness.
2. *What proportion of the period's new notes would a drafting session reach for?* The window's headline intake is the 2026-08-21 harvest of sixty-seven crossover notes. On a sample, the content-crossover notes pass the writing test strongly and state their use to the writing — `a genuine transformation registers first as loss rather than as gain` (Iser at primary depth, Barthes secondary, refusal kept), `the gold thread re-owned is a loving filament…` (a lived figure given two namers and tied to the arc's integration phase), `another person can only sound the note already strung in you…` (a physical model for the book's resonance theory) — and each keeps both halves of its crossover by page-level address rather than a from-memory quote. The weaker sub-set is the notes whose subject is the reframe's own vocabulary (`an ecology is a bounded but permeable domain…`, `a tradition is a cultivated locus of recognition`), which are meta-frame rather than reader-facing propositions. The real exposure is sequence, not quality: sixty-seven nascent notes were minted ahead of their grounding, every quote reserved and the whole of Tier 8 still to read, into a graph just cut from 588 to 421 for unfounded material. Their value is realized only if Tier 8 is read; until then they are high-quality pointing carrying a grounding debt, and the failure mode to watch is that debt going unpaid while further batches arrive.
3. *Did the period's work drift toward the system vocabulary?* Not toward the old system — the sample showed no molecule-formula sorting. The window did produce a note-web that defines and elaborates the reframe's vocabulary (ecology, locus, tradition-as-locus), which the center-of-gravity addendum of 2026-08-16 names as the second wardrobe of the same regression. The discipline that keeps it a way-in is holding: those notes are marked nascent, held as candidates, and fork-flagged (the ecology definition points at Fork 2 as unsettled), so the vocabulary is a way-in rather than installed architecture. The learning-arc spine orders claims by recognition → relation → participation → stewardship, but the author decided that structure on 2026-08-20 with a recorded rationale through the map-proliferation gate, so it is sanctioned rather than drift. One watch item: `a tradition is a cultivated locus of recognition` is the hinge by which thinker-sorting could regress — if a future intake begins filing thinkers as "loci" the way the old regression filed them into triad corners, that is the drift the addendum warns of. It is not happening yet.

**Implemented this pass.** Two statuses stamped (the two resolved-by-removal observations above). Nothing else built or closed: every disposition above is a proposal, and this log's rule holds — proposals are never auto-implemented, and the closures, the two guidance adoptions, the map concern-resort, and the reweave-query call are the author's.

**Open after this review.** Nine observations remain (eleven minus the two stamped). Seven of the nine carry a recommended disposition above and close on the author's word; the crux (growth-trigger) and the reweave query are the two that need his decision rather than his confirmation. The single operational tension (`the metabolic arc is a developmental scheme with no anti-ladder feature`) stands in its narrowed 2026-08-05 form and was not reopened. The one piece of real work the pass surfaces is the map concern-resort, held for the author's timing against the reading queue and Book I.
