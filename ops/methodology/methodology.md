---
description: This map indexes the vault's self-knowledge — the derivation reasoning, the standing author directives, and the corrections accumulated over time.
type: moc
---

# methodology

This folder records what the system knows about its own operation. The /rethink command reads from and writes to it, and /remember adds corrections captured from sessions; the upstream plugin's /architect meta-command also reads it when that plugin is installed (see `manual/configuration.md`).

## Contents

- `ops/derivation.md` — why each configuration choice was made, and the four author directives issued during setup.
- [[vocabulary policy]] — the standing directive on naming: denotative reference surface; narrative vocabulary as graph content.
- [[prose register]] — the standing directive on prose: expository, evidential, complete sentences, self-explanatory system references.
- [[center of gravity]] — the standing directive on the book's centerpieces: the convergence of thinkers and the lived practice; the system vocabulary is scaffolding, and volume in the corpus is not centrality in the book.
- [[writing test]] — the standing directive on admission: material is admitted when it would satisfy future writing; what only describes the vault's state routes to ops/, and an absence is worth one seed, not an essay.
- [[reference by name]] — the standing directive on reference: the named unit is the referent for the book's material, and chapter numbers are citation locators only, because numbered reference asserts a chapter progression that is not settled.
- [[craft evidence]] — the standing directive on the craft category: record the mechanism observable in executed prose, never the manuscript's verdict on itself, and quote the author's recorded authorship conditions rather than restating them.
- [[source standing]] — the standing directive on sources: descriptive documents and manuscript drafts are read differently, a draft's arguments for itself carry no evidential weight, and agreement between a document and its own upstream input is not corroboration.
- [[authorial stance]] — the standing directive on posture: the convergence is held as an observation rather than an argument, provenance serves accurate pointing rather than proof, and the vault postulates no efficacy.
- [[naming and epistemic humility]] — the standing directive on the corpus's coinages: figures and names are candidate labels for concerns, never referents; the concern leads in plain terms and the name is attributed once where the crosswalk earns its place.
- [[personal provenance]] — the standing directive on the book's lifeblood: personal material from the making is admissible where holding it lets the writing be whole — owned, delicately, in honor of what is becoming.
- [[thesis-bearing and company]] — the standing directive on the second interlocutor axis, added 2026-08-05: sorting the company by contribution never asked what happens to the book if a thinker leaves, so `load:` records that and `discipline:` records where each got their epistemics. The axis allocates reading and never ranks evidence; a load assignment is a proposal until the author makes it.
- [[the book's current shape]] — the author's statement of 2026-08-04 on where the book actually stands, sorted into three tiers by his own confidence: a session builds on tier one, holds tier two loosely and never lands it, and treats tier three as undecided rather than as a gap to fill. It also carries the rule that keeps the tiers honest — a decision about one thing must not quietly settle a different question it touched, and a refusal is not evidence about anything but what was refused.
- [[propositions carry names and images]] — the standing directive on attachment, issued 2026-08-05: every claim names the bearer and the figure the corpus supplies for it, because the pipeline reaches for material attached to a thinker or an image and a proposition attached to neither is invisible to both routes. It is not permission to file claims by thinker or by figure; the proposition stays the subject of its own note.
- [[reporting to the author]] — the standing directive extending the prose register to what a session says to him, issued 2026-08-05: the vault's working vocabulary is the pipeline's invention rather than his, so a vault-internal term is given its referent before it is used as a handle, a finding is reported with what produced it, a proposal states the problem and one real instance of each option before its conclusion, and the strength of the evidence is stated with the recommendation.
- [[both halves of a correspondence]] — the correction of 2026-08-05: a note claiming the book's construct is somebody else's shows both halves or names the half it cannot show. A measured pass found thirteen such notes quoting the corpus and paraphrasing the thinker, which is the most fluent possible form of an unchecked claim. Never quote from memory to close the gap.
- [[the primary material]] — the author's statement of 2026-08-05 on what the research is about: the primary material, not the corpus, which he calls "an imperfectly potentiated form of the essences I really care about." The corpus keeps its standing as evidence and loses its authority over the subject; where the two conflict the primary material governs, and reading the thinkers' own works is the directive's first action rather than a task queued behind it.
- [[the graduate student phase]] — the author's statement of 2026-08-05 naming the project's current phase: following the research backlog's rabbit holes where valuable is expected and favorable rather than the displacement risk it would normally read as, "as long as it's metered." The admission standard for individual notes is unchanged; what changes is how a pattern of pursuit is read.

## Retrieval note: chairs are found by name, not by meaning

An interlocutor note's description is mostly about the tradition it seats the thinker for, so the note does not surface in a semantic search for its own subject. Measured 2026-08-03: five of seventeen chairs were absent from the top ten results for their own description, one from the top twelve, while a keyword search on a work title returned its note first. Twenty-three chairs were added on 2026-08-05, which makes the gap wider rather than narrower.

The consequence for any pass that reaches for related material — /reflect, /reweave, /verify — is that `qmd query` will not find a thinker by what they hold. **Retrieve chairs by surname or work title using `qmd search`, or by `rg -l '^category: interlocutor' notes/`.** And /verify's retrieval test, which asks whether a note surfaces in a search for its own description, reports a failure for interlocutor notes that no description can fix; run it with a name query for any note whose subject is a person.

This is guidance rather than a counted condition, because it rests on one measurement (`ops/observations/semantic search does not find a note inside its own topical cluster.md`).

## How to use this folder

List the notes: `ls ops/methodology/`. Find active directives: `rg '^status: active' ops/methodology/`. Corrections captured by /remember land here as dated notes; when a correction contradicts a standing directive, the contradiction goes to `ops/tensions/` for the next /rethink review.
