---
name: scaffold
description: Maintain ops/scaffold.md — the book's structure read as the deduplicated union of eight structural readings of the graph, at the full depth of the reading, with inline CRC cache-expirations so it re-verifies rather than re-derives. Use to check whether the scaffold still holds, to fold in new material, or to rebuild it. Triggers on "/scaffold", "/scaffold refresh", "/scaffold rederive", "is the scaffold current", "what's load-bearing", "map the structure", "update the scaffold".
user-invocable: true
allowed-tools: Read, Write, Edit, Grep, Glob, Bash, Task
context: fork
---

**What this skill is.** `/scaffold` maintains `ops/scaffold.md` — the standing, deep answer to "what shape has the book's material taken on its own, and how deeply is each part of that shape attested?" It was written for this vault (like `/recompose`) and has no upstream stock text; `ops/methodology/prose register.md` and `CLAUDE.md` govern it directly. The file is the **deduplicated union of eight structural readings** (the draft chapter schemes, the psychedelic arc, the two-book learning spine, the thinker constellation, the reframe conversation, the constructed system, the named units and the walkable house, the doctrine's still center) — *not a summary of them*. The container-level structure (the arc, the anchors, the still center, the spine, the joints) is the organizing frame; beneath each frame-node sits the full depth the readings found. The working derivation, with each reading's original map and Venn inputs, is `skeletal-structures-venn-2026-08-21.md`.

**The operation is a deduplicating union, never a compression.** Where readings overlap, state the finding once, at the fullest depth any reading reached it, and name the corroborating readings. Where they diverge or correct each other, keep every distinct and dissenting note, attributed to its reading — **merge what is identical, never what merely rhymes.** The corrections are load-bearing (the two-houses correction, the felt-shift-was-never-author-ratified finding, the false friends); averaging them away is the same failure the deep file exists to undo. The HTML "One Arc, Eight Readings" artifact is a doorway that compresses on purpose; this file is where the compression is undone, so never let the artifact's brevity set the depth of the markdown.

**The one idea that makes it cheap — inline CRC cache-expirations.** Every cached section carries an inline marker naming the vault files it rests on and a CRC32 of their content:

```
<!--cache id=SECTION crc=abcd1234 src=path one.md|path two.md derived=2026-08-21-->
```

`scripts/queries/scaffold-check.sh` walks these markers, re-computes each section's CRC from the current bytes of its sources (so the check tracks what a file *says*, immune to the auto-commit hook and rebases), and reports each section FRESH or EXPIRED, plus baseline drift (new notes/decisions since the last full derive). The checksum lives next to the content it guards; the file is its own cache, parseable by one regex. Never re-derive a section the marker still affirms.

**Disciplines this skill inherits and never breaks.** It reads gravity; it never places material in a chapter (placements are the author's alone). It never quotes from memory and shows both halves of any correspondence. It states each finding with its locators and at the strength of its evidence — primary-read, corpus-relay, and synthesis are different situations, and §16 of the file keeps that ledger honest. It preserves each reading's distinctive depth in full.

---

## The three modes

### `/scaffold` (verify — the default, cheap, no subagents)

1. Run `scripts/queries/scaffold-check.sh`. It walks the inline markers, re-computes each section's CRC, and prints FRESH / EXPIRED plus baseline drift.
2. Report in plain language: how many sections still hold, which expired and what source moved under them, whether new material may be uncovered territory. A clean check is the healthy state — say so and stop.
3. Open no subagents here. Verifying is a checksum, not a re-reading.

### `/scaffold refresh` (fold in only what changed)

Use when the default run reported expired sections or baseline drift.

1. `scripts/queries/scaffold-check.sh --stale` gives the worklist. For **each expired section**, dispatch one focused Opus subagent (general-purpose, model omitted so it inherits the session model) that re-reads that section's named sources and the reading(s) that produced it, and returns either the corrected section at full depth — statement, substantiation, locators, attribution — or a confirmation that it still holds despite the edited source. Keep every fresh section byte-for-byte; touch only the expired ones. Preserve the dedup discipline: fold new material into the section where it belongs, do not append a parallel restatement.
2. If baseline reported new notes or decisions, run a coverage pass for **new territory**: read the new decisions rows (`scripts/queries/decided.sh` shows the register) and the added notes (`git diff --stat` against the baseline, or the newest `notes/*.md`), and ask whether any is *high-confidence* — placed at the same position by more than one reading, or settled by an author decision. Material that clears that bar joins the relevant section or becomes a new frame-node; a genuine new divergence becomes a joint in §14; anything short of it is left for the writing test. A single reading's placement is not yet scaffold.
3. For every section you changed or added, regenerate its CRC with `scripts/queries/scaffold-check.sh --crc 'path one.md|path two.md'` and update the inline marker. Advance the `<!-- baseline notes=N decisions=N derived=DATE -->` line to the current counts and today's date **only when the drift is folded in** — the baseline records the last point at which the whole graph was reconciled.
4. Re-run `scripts/queries/scaffold-check.sh`, confirm all-fresh with the baseline current. If the author wants the visual kept in step, regenerate the "One Arc, Eight Readings" artifact and redeploy it to its existing URL — but the markdown is the artifact, the HTML only its doorway.
5. Report the delta plainly: what moved, what you re-derived, what entered and what you held back and why.

### `/scaffold rederive` (rebuild the whole thing)

Use when the finding-set itself is in question — a reading is missing, the eight lenses have changed, or the author wants the structure re-read from scratch.

1. Dispatch the eight structural readers as Opus subagents (general-purpose, model omitted, background). Each maps one latent skeleton at real locators and returns its map plus an explicit "overlap / Venn input" section naming every coincidence with the others. The reader briefs and the eight lenses are recorded in the header of `skeletal-structures-venn-2026-08-21.md`; reuse them so the ledger stays a continuous record.
2. Weave the deduplicated union — the structural frame (Part I), each reading in full (Part II), the joints, cautions, and evidence ledger (Part III) — appending each reader's map and Venn input to the ledger, then rewriting `ops/scaffold.md` whole with inline CRC markers per section.
3. Regenerate every CRC with `--crc`, reset the baseline, run the verifier to confirm all-fresh, regenerate and redeploy the artifact.
4. Record the rederive in `ops/completed.md` with the ledger and artifact paths; update `ops/goals.md` if the structure moved the torch.

---

## The inline marker, precisely

One marker per cached section, anywhere in the section's body (conventionally right under the heading), on its own line:

```
<!--cache id=<ID> crc=<8 hex> src=<path>|<path>|... derived=<YYYY-MM-DD>-->
```

`id` is a short stable name (the section's handle). `crc` is CRC32 of the sources' content — never hand-edit it, regenerate with `--crc`. `src` is pipe-separated because vault paths contain spaces. `derived` is optional and informational. Choose a section's sources as the files whose change would change it — the notes that state it, the concordance rows that compare it, and, for a joint, `ops/decisions.md`, so that when the author closes the question the marker expires and the next run notices the joint may have become a core finding. The parser strips fenced ``` code blocks before scanning, so an illustrative marker inside a fence (like this one) is ignored; live markers sit in prose. Keep the sources honest: a marker pointing at files unrelated to the section will either never fire or fire on noise.
