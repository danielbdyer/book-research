---
name: lens
description: Maintain the polyphony of lenses — the family files (the-loci.md, the-axioms.md, …) that each read the book's material through one organizing structure, at full depth, on a content-hash substrate so they re-verify rather than re-derive. Use to check whether the families still hold, to fold in what changed, to deepen a family, or to author a new one. Triggers on "/lens", "/lens refresh", "/lens rederive", "/lens new", "are the lenses current", "deepen a family", "add a lens".
user-invocable: true
allowed-tools: Read, Write, Edit, Grep, Glob, Bash, Task
context: fork
---

**What this skill is.** `/lens` maintains the **polyphony of lenses** — the standing answer to "what are the different entry points from which the book's material organizes, and how deeply is each attested?" The polyphony rests on the conversation's own charter, that there is no single right way to organize the material and no lens may become sovereign (`the-conversation-catalog.md`, Family A). `the-lenses.md` is the index; beneath it sit the **family files**, each a deep read of one organizing structure: `the-loci.md` (the standpoints the book sees from), `the-axioms.md` (its foundational commitments), and any others authored the same way. A family is not a summary — it is a *named domain with a few attested members and an open edge*, built to grow by being questioned.

**The shape of a family file.** Every family is authored from `the-conversation-catalog.md` (the deduplicated catalog of the reframe conversation's structures) and the primary transcript — or, once the pivot is running, from the graph itself — deepened with the notes the graph already holds. A family finds *its own* organizing frame from the source material — the Loci is a register of standpoints, the Axioms a three-layer architecture, the Paradoxes one knot across roles, the Constellation convergence-groups — so do not force one outer frame; find the structure the material already has.

**The member schema (the depth every entry owes, adapted to the family's shape).** The Loci set the standard and it is not optional: each register entry — a locus, an axiom-layer, a role, a convergence-group — carries five fields, so a family *generates* rather than merely lists. Skipping them is how families 2–4 first drifted shallow (fixed 2026-08-21).
- **Statement / question** — what the entry is, in one line.
- **Reveals / leaves open** — what standing here discloses *and* what it hides or cannot settle (a locus's discloses/hides, an axiom's protects/forecloses, a paradox's two collapse-costs, a convergence's what-it-establishes/what-it-can't-settle). This is the *vimarśa* check that keeps an entry from over-reaching, and it is where a kept refusal lives.
- **Attested** — the members already named, each a `[[note]]` if installed (this is what the coverage census counts) or a locator if only a **candidate** so far, and each with a **provenance** tag (*author-voiced* = primary, a `## Prompt:` turn; *model-produced* = works-consulted, a `## Response:` turn; *mixed*).
- **Open edge** — the members implied but not yet named: the frontier the fourth question feeds and the reading queue draws from. An entry with no open edge has stopped being generative; every entry owes one.
- **Enters** — where the entry touches the manuscript.

For a small family the five fields sit on each member; for a large one (the Constellation's 125 members) they sit on each **group**, never collapsing to a bare attestation list — depth is per-entry, not per-member, but it is never dropped.

**The apparatus — the five questions that grow any family.** The Five Great Questions of the reframe conversation (`the-conversation-catalog.md`, Family B), turned from a reader's cycle into an explorer's engine. Run them against any named domain and it grows: **Locus** (from where does this see / whose commitment is this?) · **Encounter** (what is actually attested here?) · **Recognition** (what does this disclose, and what does it hide?) · **Perspective** (*what's around this we haven't named yet?* — the generative frontier) · **Practice** (what does this let the book do / where does it enter the manuscript?). The fourth question is the engine; it is also the flood-risk, which is why admission is gated (below).

**The substrate — inline content-hash markers, so a family re-verifies rather than re-derives.** Every section of a family file carries an inline marker naming the vault files it rests on and a checksum of their content:

```
<!--cache id=SECTION crc=abcd1234 src=path one.md|path two.md derived=2026-08-21-->
```

Plus one `<!-- baseline notes=N decisions=N derived=YYYY-MM-DD -->` line per family. **Detection is delegated to the checker, never re-implemented in this skill:** `scripts/queries/lens-check.sh` sweeps every family in its manifest, reports each section FRESH or EXPIRED (a source moved under it), prints a per-family **census**, and shows baseline drift. Because it hashes content, it is immune to the auto-commit hook and busts exactly the section whose sources changed. Since a section cites `the-conversation-catalog.md` and its member notes, the day the author turns a candidate member into a claim, the section that named it expires and asks to be re-read.

**The census is the bound — the guard against this layer running away.** Each sweep prints, per family: register entries, **attested notes** (exact — the distinct `[[links]]` the family pulled in), and open-edge mentions (a frontier proxy). A growing open edge is a healthy live frontier — *unless the attested count stays flat while it grows*, which is collecting-without-admitting, the vault's highest-rated failure mode, made countable. The open edge is a candidate **inbox**, not a backlog: a member waits there until a human promotes it, exactly as a reading waits in `ops/reading queue.md`. This is why the layer is safe to grow — the engine proposes into the open edge; admission into the book stays a human act.

**Disciplines this skill inherits and never breaks.** It never places material in a chapter — placements are the author's alone. It never quotes from memory and shows both halves of any correspondence (`ops/methodology/both halves of a correspondence.md`); every quote carries its locator. It writes to `ops/methodology/prose register.md` — statement-first, plain, figures of speech only inside quotation marks, no pipeline coinage sent to the author unglossed. It states each member at the strength of its evidence and tags its provenance. It merges what is identical and never what merely rhymes. And it installs nothing into `notes/` — a family reads and points; material enters the graph only through the pipeline.

---

## The four modes

### `/lens` (verify — the default, cheap, no subagents)

1. Run `scripts/queries/lens-check.sh`. It sweeps every family, re-computes each section's checksum, and prints FRESH / EXPIRED, the census, and baseline drift.
2. Report in plain language: which families still hold, which sections expired and what source moved under them, and — reading the census — whether any family's frontier is growing while its attested count stays flat (the collecting-without-admitting signal). A clean sweep is health; say so and stop.
3. Open no subagents. Verifying is a checksum, not a re-reading.

### `/lens refresh [family]` (fold in only what changed)

Use when the default run reported expired sections or baseline drift. Scope to one family if named, else all.

1. `scripts/queries/lens-check.sh --stale` gives the worklist as `family: section-id`. For **each expired section**, dispatch one focused Opus subagent (general-purpose, model omitted so it inherits the session model) that re-reads that section's named sources — the catalog entry, the cited notes, the transcript locators — and returns either the corrected section at full depth (members, provenance tags, attested links, open edge) or a confirmation that it still holds despite the edited source. Keep every fresh section byte-for-byte; touch only the expired ones. Fold new material into the region where it belongs — never append a parallel restatement.
2. If baseline reported new notes, run the **Perspective pass** for each family: ask whether any new note is an *attested member* of one of the family's open edges (a candidate the graph has now filled). If so, promote it — move it from the open edge to the attested members and link it. This is the substrate loop closing: the frontier told the reading queue what to find, and the note comes back as a member. Promotion is admission, so it is a judgment, not a batch move.
3. For every section you changed, regenerate its checksum with the stamp helper (`scripts/queries/scaffold-check.sh --crc 'path one.md|path two.md'`) and update the inline marker. Advance the family's `<!-- baseline notes=N decisions=N derived=DATE -->` line to current counts and today's date **only when the drift is folded in**.
4. Re-run `scripts/queries/lens-check.sh`; confirm the family all-fresh with baseline current. Run `scripts/queries/link-check.sh --count` (must stay 0) — new `[[links]]` must resolve.
5. Report the delta plainly: what moved, what you re-derived, what note was promoted from a frontier to a member, and what you held back and why.

### `/lens rederive <family>` (rebuild one family from scratch)

Use when a family's organizing frame is in question, or the catalog entry it rests on has changed enough that section-wise refresh will not do.

1. Re-read the family's catalog entry and the transcript regions it locates. Mine at depth: for a dense domain, dispatch focused Opus subagents over bounded transcript regions, each returning every member verbatim with locator, provenance, and (if the source assigns one) its place in the family's own structure. Follow every mining fan-out with a **gap-sweep** agent over the mentions the bands did not cover, so completeness is provable, not assumed.
2. Author the family whole, on the substrate: find its own organizing frame, deduplicate the mined members (**merge what is identical, never what merely rhymes** — this is a human judgment, never a workflow's), tag every member's provenance, link the attested ones, name each region's open edge, and place one inline marker per section plus the baseline line.
3. Stamp every checksum with the stamp helper; run `lens-check.sh` to confirm all-fresh, and `link-check.sh --count` for 0.
4. Record the rederive in `ops/completed.md`; update `the-lenses.md` if the family's summary line moved.

### `/lens new <name>` (author a new family)

Use to grow the polyphony by one lens. A new family is a `/rethink`-adjacent act — the polyphony is capped to the material's real structures, so a new family needs a catalog entry it reads from, not an invented frame.

1. Confirm the candidate is a real structure in `the-conversation-catalog.md` (or a standout the catalog names). If it is not in the catalog, it is not yet a family — route the idea to the catalog first.
2. Author it exactly as `rederive` step 2 builds one: mine at depth with a gap-sweep, find the material's own frame, deduplicate by hand, tag provenance, link attested members, name open edges, stamp markers and baseline.
3. **Register it in the manifest**: add the filename to the `FAMILIES` array in `scripts/queries/lens-check.sh`, and add its summary line and crossings to `the-lenses.md`.
4. Verify (`lens-check.sh` all-fresh, `link-check.sh --count` 0); record in `ops/completed.md` and `ops/goals.md`.

---

## On workflows — what is safe to delegate

A per-family workflow is genuinely workflow-shaped: one agent per region runs Encounter + Recognition + Perspective and returns a register entry plus a reading-queue proposal per open edge. But two operations must stay by hand, learned from building the dense families: **deduplication** (merging "Axiom 6" with "Authorship" is right; merging "no locus is sovereign" with "the framework is subject to itself" is wrong, and only a full read separates them) and **admission** (promoting a candidate to a member, or a member to a note). So a workflow may **gather and locate**; a human **dedups and admits**. And run a workflow only against the sections a `lens-check.sh` sweep marks expired — never the whole layer on a timer. The check is the governor; without it, the Perspective engine floods.

## The inline marker, precisely

One marker per section, on its own line, conventionally right under the region it guards:

```
<!--cache id=<ID> crc=<8 hex> src=<path>|<path>|... derived=<YYYY-MM-DD>-->
```

`id` is a short stable handle (a `-src` suffix marks the family-level "derived from these primary sources" receipt, which the census excludes from its entry count). `crc` is regenerated with the stamp helper, never hand-edited. `src` is pipe-separated because vault paths contain spaces and em-dashes. Choose a section's sources as the files whose change should change it — the catalog entry it derives from, the notes its members are attested by, and, where a section rests on an author decision, `ops/decisions.md`. The checker strips fenced ``` code blocks before scanning, so an illustrative marker inside a fence (like this one) is ignored; live markers sit in prose. A marker pointing at files unrelated to its section will either never fire or fire on noise — keep the sources honest.
