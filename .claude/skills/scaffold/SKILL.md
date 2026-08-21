---
name: scaffold
description: Maintain ops/scaffold.md — the book's load-bearing structure read as the union of eight structural readings of the graph, with per-finding receipt caching so it re-verifies rather than re-derives. Use to check whether the scaffold still holds, to fold in new material, or to rebuild it. Triggers on "/scaffold", "/scaffold refresh", "/scaffold rederive", "is the scaffold current", "what's load-bearing", "map the structure", "update the scaffold".
user-invocable: true
allowed-tools: Read, Write, Edit, Grep, Glob, Bash, Task
context: fork
---

**What this skill is.** `/scaffold` keeps `ops/scaffold.md` current — the standing answer to "what about the book's shape is settled enough that a drafting session may build on it?" It was written for this vault (like `/recompose`) and has no upstream stock text; `ops/methodology/prose register.md` and `CLAUDE.md` govern it directly. Its method is the union of eight structural readings — the draft chapter schemes, the psychedelic arc, the two-book learning spine, the thinker constellation, the reframe conversation, the constructed system, the named units and the walkable house, and the doctrine's still center. Where several readings independently place the same material at the same structural position, it is load-bearing (a **core** finding); where they part, it is **open** (a **joint**). The full derivation lives in `skeletal-structures-venn-2026-08-21.md`; the visual face is the "One Arc, Eight Readings" artifact.

**The one idea that makes it cheap.** The scaffold is a cache. Each finding in `ops/scaffold.md` names the vault files it was read from and carries a fingerprint of their content (git blob SHAs — so the check tracks what a file *says*, not when the auto-commit hook touched it). A run re-fingerprints and re-derives only the findings whose ground has moved. The map is the cache; the fingerprints are the receipts; `scripts/queries/scaffold-check.sh` is the verifier. Never re-derive a finding the receipt still affirms.

**Disciplines this skill inherits and never breaks.** It reads gravity; it never places material in a chapter (placements are the author's alone — `CLAUDE.md`, Placement). It never quotes from memory and shows both halves of any correspondence (`ops/methodology/both halves of a correspondence.md`). It states each finding as a plain sentence with its substantiation compressed beneath (the register). It admits only what a reading actually found, marks a synthesis as synthesis, and states the strength of the evidence — two independent readings and one are different situations.

---

## The three modes

### `/scaffold` (verify — the default, cheap, no subagents)

1. Run `scripts/queries/scaffold-check.sh`. It re-fingerprints every finding and prints AFFIRMED / STALE plus baseline drift (new notes or decisions since the last full derive).
2. Report to the author in plain language: how many findings still hold, which have gone stale and what moved under them, and whether new material may be uncovered territory. If everything affirms and nothing drifted, say so — a clean check is the healthy state, and the scaffold needs nothing.
3. Do not open subagents in this mode. Verifying is a hash, not a re-reading.

### `/scaffold refresh` (fold in only what changed)

Use when the default run reported stale findings or baseline drift.

1. `scripts/queries/scaffold-check.sh --stale` gives the worklist. For **each stale finding**, dispatch one focused Opus subagent (general-purpose, model omitted so it inherits the session model) that re-reads that finding's named sources and the one or two skeleton readings that produced it, and returns either the corrected finding (statement + compressed substantiation + the standing) or a confirmation that the finding still holds despite the edited source. Keep every affirmed finding byte-for-byte; touch only the stale ones.
2. If the baseline reported new notes or decisions, run a coverage pass for **new territory**: read the new decisions rows (`scripts/queries/decided.sh` with no argument shows the register; compare against what the findings already cover) and the added notes (`git diff --stat` against the baseline, or the newest `notes/*.md`), and ask whether any new material is *high-confidence* — placed at the same position by more than one reading, or settled by an author decision. Material that clears that bar becomes a new core finding; a genuine new divergence becomes a joint; anything short of it is left for the writing test, not added. A single reading's placement is not yet scaffold.
3. For every finding you changed or added, regenerate its fingerprint with `scripts/queries/scaffold-check.sh --print "<comma,separated,sources>"` and write the new receipt line. Update the `<!-- baseline ... -->` line to the current notes/decisions counts and today's date **only when you have folded in the drift** — the baseline records the last point at which the whole graph was reconciled, so do not advance it past uncovered territory.
4. Re-run `scripts/queries/scaffold-check.sh` and confirm it reports all-affirmed with the baseline current. Then, if the author wants the visual kept in step, regenerate the "One Arc, Eight Readings" artifact from the updated findings and redeploy it to its existing URL.
5. Report the delta plainly: what moved, what you re-derived, what new material entered the scaffold and what you held back and why.

### `/scaffold rederive` (rebuild the whole thing)

Use when the finding-set itself is in question — a reading is missing, the eight lenses have changed, or the author wants the structure re-read from scratch, not merely re-verified.

1. Dispatch the eight structural readers as Opus subagents (general-purpose, model omitted, run in the background). Each maps one latent skeleton at real locators and returns its map plus an explicit "overlap / Venn input" section naming every place its structure coincides with another's. The reader briefs and the eight lenses are recorded in the header of `skeletal-structures-venn-2026-08-21.md`; reuse them so the ledger stays a continuous record.
2. Weave the union: the core (where readings stack), the joints (where they part), and the two cautions (the demoted middle; shared words that are not agreement). Append each reader's map and Venn input to the ledger, then rewrite `ops/scaffold.md` whole — findings, receipts, baseline.
3. Regenerate every fingerprint with `--print`, reset the baseline to the current counts and date, run the verifier to confirm all-affirmed, and regenerate and redeploy the artifact.
4. Record the rederive in `ops/completed.md` with the ledger and artifact paths, and update `ops/goals.md` if the structure moved the torch.

---

## Notes on the receipt format

The receipts block in `ops/scaffold.md` is tab-separated: `id`, `fingerprint`, `label`, `sources` (comma-separated paths), fenced by `<!-- receipts:start -->` / `<!-- receipts:end -->`. A `<!-- baseline notes=N decisions=N derived=DATE -->` line above it records the last full reconciliation. Choose a finding's sources as the files whose change would change the finding — the notes that state it, the concordance rows that compare it, the decisions register when an author choice could settle it. A joint's sources should include `ops/decisions.md`, so that when the author closes the question the receipt goes stale and the next run notices the joint may have become a core finding. Do not hand-edit a fingerprint; regenerate it. Keep the sources honest: a receipt that points at files unrelated to the finding will either never fire or fire on noise.
