# Research vault for *Firing on All Cylinders / Aletheia*

This repository is the research vault for a book about the structure of inner life. It stores the book's material as atomic claims — one proposition per markdown file — connected by wiki links, gathered by topic maps, processed by a fixed pipeline, and validated by hooks. Three terms recur: **the corpus** is the seven documents in `sources/` that describe or draft the book, taken together; **the book** is the manuscript they describe; **the vault** is this repository. Beneath the corpus sits its primary layer: `sources/the poems.pdf`, the author's lifetime collection of sixteen poems, which the corpus quotes and not the other way around. This file is the durable law; the current state of the work — the center, the reading order, the torch — lives in `ops/orientation.md`, which the session hook injects first.

The vault exists to serve the writing. The author's stated first goal is "to support that same writing of the book and to enable that third thing's evolution, as it has always been" (author statement, 2026-08-03), and the vault is measured by what reaches the manuscript. The corpus's own rule: "the archive preserves; the orchard ripens" ([[ripeness is not refrigeration]]) — growth that displaces writing is the failure mode every guard below exists for. The deliverable beneath every deliverable is the pilot move: one chapter, fully treated, sent to two real readers ([[seventeen chapters rest at madhyama]]).

The book states one law about itself — "the book performs what it describes" (recorded with its anchors at [[the book performs what it describes]]) — and the vault inherits it: claims are atomic, tensions are tracked rather than resolved, and every claim names its sources.

## The center

The book's centerpieces, by author decision (2026-08-02), are **the convergence of thinkers** — independent arrivals at the same finding, quoted with their refusals intact — and **the lived practice**, verified in the body. The system vocabulary the corpus elaborates at length (the Generative Triad, the twelve primitives, the molecule formulas, the three loops) is scaffolding: an uncertain secondary or tertiary concern, admitted where it rests on established outside research and never treated as the book's presumed core. The record is [[the system is scaffolding rather than the centerpiece]]; the directive is `ops/methodology/center of gravity.md`.

This diverges from the sources' own weighting on purpose, and the divergence needs active defense: the corpus's page-count — and therefore semantic retrieval and every coverage table built from it — overweights the system. **Volume in the corpus is not centrality in the book.** The named regression is organizing new material by the system's taxonomy: sorting thinkers into triad corners, translating findings into molecule formulas. Where a source's emphasis conflicts with this directive, the directive wins.

**The stance** (`ops/methodology/authorial stance.md`): the convergence is held as an observation, not an argument. The author gestures at traditions that have their own standing and at the crossovers he noticed — "I don't have any evidentiary remarks." Company, not proof. The vault's prose stays evidential, meaning every claim says where it came from, but the project is not thereby evidentiary: provenance serves accurate pointing rather than proof, convergences are never ranked by evidential weight, a thinker's refusal is kept so the thinker survives being cited rather than to season a case, and the vault does not postulate efficacy — whether any of this works is not a claim the author is making.

## Posture

Five standing directives govern all prose and naming. Each is recorded in full in `ops/methodology/`; the whole directive set is indexed at `ops/methodology/methodology.md`.

**Keep the reference surface denotative** (`vocabulary policy.md`). Filenames, YAML fields, enum values, folder names, and headings name their concern in plain terms. The book's narrative vocabulary is graph content — it lives in `notes/figure glossary.md` and in image-category claims, never as metadata bound to a note.

**Name the unit, never the number** (`reference by name.md`). The referent for the book's material is the named unit — the House with No Ceiling, the Molecules of Experience, the Third Entity, the Stance, the Psychedelic Moment. Names are stable across every table of contents the corpus contains; numbers are not, and numbered reference asserts a settled chapter progression that does not exist — the arc is the author's live commitment, the chapter scheme fitted to it is not. Numbers survive only inside source anchors (`abridged ch6`), as coordinates in one document, and note titles never lead with a number or a count where a name would serve. Sequence claims stay fully available, stated as orderings of named units; the per-unit comparison is `ops/chapter concordance.md`.

**Hold every name as a candidate** (`naming and epistemic humility.md`). The corpus's figures and coinages — the guild, the five rooms, the valley, the Stance, the Gatekeeper, the doors — are candidate labels for concerns, not the concerns, because nothing about the book is settled, its foundations included. Vault prose states the concern in plain terms and attributes the corpus's name once where the crosswalk earns its place; the name never carries a sentence alone. New material attaches one level beneath the naming layer, to findings and to the people who reached them. Exemptions: quotations keep their words; source anchors are coordinates; image-category claims and `notes/figure glossary.md` take the figure as their subject; and a named unit is a stable handle rather than a concept label — if the sentence would survive the book being renamed, it is about the concept and takes plain terms.

**Write expository, evidential prose** (`prose register.md`). Complete sentences with named subjects; no telegraphic fragments; no shorthand carrying an assertion alone. The statement leads and the substantiation sits beneath it. Exact referents: named units, section symbols, document names; a description is a proposition parseable with no prior context. The corpus is quoted and anchored, never impersonated — and compression is required, because the sources are highly styled and their style is contagious. An admiring paraphrase reproduces their cadence without adding a proposition; the corpus records the mechanism itself at [[felt shift versus felt confirmation]] — a reader's bodily assent can respond to fluent prose rather than to the claim. Quote when the phrasing is itself the finding; mark and anchor every quote.

**Hold personal material under the three conditions** (`personal provenance.md`). By author decision (2026-08-03), material from the book's making is admissible where holding it lets the writing be whole rather than disembodied: own it, do it delicately, in honor of what is becoming. Record at the specificity the record supplies; distances the record kept are kept.

## Session rhythm

- **Orient.** The SessionStart hook injects `ops/orientation.md` first — the center, the reading order, and the torch — then the file tree, the goals file, the methodology descriptions, and any maintenance conditions. Read the orientation and `ops/goals.md` before acting; factor fired conditions into what is proposed, and read silence as health — the hook says so explicitly when nothing fires. Before treating an apparent inconsistency as work, check `ops/decisions.md`.
- **Work.** Route material through the pipeline below. Templates are the schema's source of truth; structure is never invented mid-task.
- **Persist.** Before ending: update `ops/goals.md`; add the session's entry to `ops/completed.md` with paths to what it produced; keep `ops/orientation.md` current where the session moved the center; capture operational friction into `ops/observations/`; the auto-commit hook records the rest.

## Layout

| Path | Contents |
|------|----------|
| `notes/` | The knowledge graph: claims and topic maps. Flat; no subfolders. |
| `inbox/` | Capture. Anything can land here; everything is later processed out. |
| `sources/` | Original source documents. Immutable. |
| `archive/` | Source notes: provenance records for processed material, pointing into `sources/`. |
| `templates/` | Note templates with `_schema` blocks — the authoritative schema. |
| `manual/` | User documentation. |
| `ops/` | Operational state: the orientation surface, goals, the completed log, the decisions register, config, queue, sessions, observations, tensions, methodology, the chapter concordance, the open-corpus inventory, and the rethink log. |
| `provenance/` | Reconstructions of the corpus's making, held as consulted works by author decision. Not sources; the policy is `ops/methodology/personal provenance.md`. |
| `scripts/queries/` | Ripgrep-based graph queries. `scripts/bootstrap.sh` restores tools and extracts the corpus to `.corpus/` in a fresh container. |
| `.claude/` | Skills and hooks, versioned with the vault. |

## Writing a claim

A claim is one proposition, stated in its title as a complete sentence in lowercase (the filename is the claim). One idea per note; a title that needs "and" is usually two notes. The authoritative schema is `templates/claim-note.md`.

- `description:` — a complete sentence adding information beyond the title; the filter-before-read layer.
- `topics:` — the topic maps the claim belongs to, recorded twice: as a YAML array of wiki links (the machine-readable form) and in the note's `Topics:` footer (the human-readable form). Both must be present and must agree; at least one map is required.
- `category:` — one of `claim`, `isomorph`, `tension`, `open-question`, `image`, `practice`, `structure`, `craft` (plus `interlocutor` and `source` from their own templates). `craft` records a mechanism observable in the executed prose, available only from draft sources; the rule — the mechanism, never the verdict — is `ops/methodology/craft evidence.md`.
- `sources:` — where the claim appears, with locations (`atlas §IV`, `first-telling: the offering`). Every claim carries this; provenance is the vault's version of the book's attribution rule.
- `supports:` — dormant by design. Records only manuscript placements the author has explicitly made; empty until placements emerge.
- `state:` — optional; how developed the claim is: `nascent` (stated, not yet substantiated), `privated` (incomplete in a specific named way), `full`, `flourishing` (built upon by other claims), `composting` (superseded but drawn on). The five names come from the corpus's arc at atlas §V.3.
- `status:` / `treatment:` — tension category only: `live`, `treated`, or `resolved`, and the treatment under trial.

Body shape: the statement layer expounds the claim in plain sentences; a Substantiation section beneath carries quotes (marked, anchored), per-source locations, and notation. Compression is required — the register and its reasons are in Posture above.

Footer, always:

```
Relevant Notes:
- [[other claim]] — a complete clause stating the relation

Topics:
- [[a topic map]]
```

## Sources

Eight documents carry current claims, each with a citation name used in every `sources:` array:

| Name | Document | Cited as | Standing |
|------|----------|----------|----------|
| `atlas` | `sources/the whole field - gravitational atlas.pdf` | `atlas §IV`, `atlas §IX.8a` | descriptive |
| `walked` | `sources/the whole field walked.pdf` | `walked VI` | descriptive |
| `first-telling` | `sources/the first telling.pdf` | `first-telling: the offering` | descriptive |
| `space-around` | `sources/the space around.pdf` | `space-around: around the instrument (counterweight)` | descriptive |
| `arc-gloss` | `sources/the arc and the gloss - second edition.pdf` | `arc-gloss: overlay four`, `arc-gloss: ch4` | draft |
| `abridged` | `sources/firing on all cylinders - abridged edition.pdf` | `abridged ch6`, `abridged: a note on sources` | draft |
| `mythic-os` | `sources/firing on all cylinders - a mythic operating system.pdf` | `mythic-os: contents`, `mythic-os: page 9` | draft |
| `poems` | `sources/the poems.pdf` | `poems #5` | primary |

The standing governs how evidence is read; the policy is `ops/methodology/source standing.md`. A **descriptive** source describes the book from outside it. A **draft** is a state of the manuscript itself: quoted for what it says, never credited for what it argues, and where drafts disagree the disagreement is recorded rather than resolved. The **primary** source stands beneath both: for the fifteen poems that predate the book, a phrase shared with the corpus originates in the poem; the sixteenth is the author's flagged exception, flowing the other way. Two of the descriptive sources name `arc-gloss` in their colophons as a thread they were compiled from, so agreement among those three counts once, not three times ([[the atlas was compiled from the arc and gloss treatment]]). Each source has a provenance note in `archive/` recording its standing and extraction state; the full registry is in [[methods]]; a new source receives its citation name and standing when its archive note is created. Works consulted — the provenance reconstructions persisted in `provenance/` — are cited in place and get no archive note.

## Relations

A relation is always stated in words in the link gloss; notation never carries an assertion alone. The atlas ships a six-glyph set (◉ major mass, ⚡ kept tension, ≈ isomorph, ⊖ privation, ⟿ feeds-into, § cross-link) that the vault records but does not lean on: in practice glosses are words alone, a glyph's absence is compliance rather than neglect, and the standing is settled (`ops/decisions.md`; reasoning in `ops/rethink-log.md`). For the relation between two states of the same element — the relation the draft sources are full of — the vault adds five directed names, deliberately unglyphed: **carried unchanged into**, **revised into**, **compressed into**, **dropped at**, and **added at**, each stated with both states and the direction ("compressed into `abridged ch1` from `mythic-os: page 9`"); the per-chapter rows are in `ops/chapter concordance.md`. Tension claims carry `status:` and `treatment:`; resolving a tension is the author's act, never the vault's.

## Topic maps

A topic map (`type: moc`) gathers the claims of one concern, in three tiers: `notes/index.md`, then the maps, then claims. Twelve maps: six doctrine (`recognition`, `contraction-not-corruption`, `felt-shift`, `container-anatomy`, `relational-field`, `answerability`) and six structural (`interlocutors`, `book-structure`, `tensions`, `research-frontier`, `methods`, `open-questions`); `notes/figure glossary.md` is not a map but the vocabulary crosswalk between the corpus's figures and the vault's names. The set is capped to the corpus's own architecture: creating a new map requires a /rethink pass with a recorded rationale, and when a map's claim list exceeds roughly twenty-five entries it splits within its section structure first. Every claim appears in at least one map's claim list; /reflect maintains the lists; every map ends with a "What remains" section naming its open work.

## Pipeline

Material never goes directly into `notes/` outside a pipeline phase. Raw captures land in `inbox/`; source documents land in `sources/` with an archive note; claims are produced by /reduce and connected by /reflect.

| Phase | Command | What it does |
|-------|---------|--------------|
| Record | manual | Capture into `inbox/`. No formatting requirements apply at capture time. |
| Reduce | `/reduce` | Extract claims from a source against the extraction categories in `ops/derivation-manifest.md`. |
| Reflect | `/reflect` | Find connections; update topic map claim lists. |
| Reweave | `/reweave` | Backfill older claims when new material changes their context. |
| Verify | `/verify` | Check every note for schema compliance, resolving links, and description quality. |
| Rethink | `/rethink` | Review observations and tensions; challenge the system's own configuration. |

Support commands: `/seed`, `/pipeline`, `/ralph`, `/tasks`, `/next`, `/stats`, `/graph`, `/validate`, `/learn` (outward research), `/remember` (capture methodology corrections), `/refactor` (structural change).

The admission standard is the writing test (`ops/methodology/writing test.md`): **would a drafting session reach for this?** By author decision (2026-08-03) the test extends to the book's lifeblood: personal material from the making is admissible where holding it lets the writing be whole rather than disembodied, under the three conditions in Posture above. A note earns its place by supplying something writing can use — a claim to state, a figure to quote, a mechanism to build against, a fact that decides a manuscript question. Material that only describes the vault's own state routes to `ops/`, and analysis of an absence is worth one seed, not an essay. Declined material keeps a record of what it was and why (`ops/queue/declines.md`).

## Interlocutors

Thinkers are notes (`category: interlocutor`, template `templates/interlocutor.md`) with a functional `seat:` — `facilitation`, `emotion-work`, `speech-acts`, `container-makers`, `coaches`, `source-tradition`, `reference-lineage`, `margin-voices`, `chapter-patron`, `recommended-reading`, `candidate`, or `declined`. Each note records the one sentence that justifies the seat. Candidate evaluations end in a recommendation with evidence; the seating decision belongs to the author.

## Placement

Manuscript structure is provisional, and placements emerge from the author's decisions — the vault never assigns material to chapters or parts on its own. `notes/book-structure.md` records the working structure the sources describe, as description. The dormant `supports:` field activates only when the author makes a placement (`ops/decisions.md` holds the row); `scripts/queries/placements.sh` then reports what has been placed.

## Search

- **Structural queries**: `rg` over YAML (for example `rg '^category: tension' notes/`), plus `scripts/queries/` — `unconnected-claims.sh`, `nascent-stubs.sh`, `coverage.sh`, `tensions-status.sh`, `candidate-seats.sh`, `placements.sh`.
- **The corpus itself**: `scripts/bootstrap.sh` extracts every PDF in `sources/` to `.corpus/*.md`, preserving `===PAGE n===` markers so a hit can be traced to a citable location. `.corpus/` is gitignored and regenerated, so it cannot drift. Search it with `rg -w 'pattern' .corpus/`. **Use word boundaries**: unbounded matching reports "habit" across the corpus by matching *inhabit* and "ritual" by matching *spiritual*, which has already produced one wrong conclusion.
- **Semantic search**: qmd, with a project-local index in `.qmd/` (gitignored) over two collections, the vault's notes and the extracted corpus. `qmd query "..."` for hybrid search, `qmd search "..."` for keyword-only, `qmd vsearch "..."` for vectors alone; add `--no-rerank` when a query hangs. After bulk note changes run `qmd update && qmd embed`.
- **In a fresh container, run `scripts/bootstrap.sh` first.** Each step reports independently and none is fatal to the others.

## Maintenance

Maintenance is condition-based. The session hook counts and reports the first four conditions below at session start, prints any unchecked entries in `ops/reminders.md`, and says explicitly when nothing fires. The last two conditions are manual: `scripts/queries/unconnected-claims.sh` and /verify.

| Condition | Action |
|-----------|--------|
| inbox holds 3 or more items | /reduce or /pipeline |
| 10 or more observations in `ops/observations/` | /rethink |
| 5 or more operational tensions in `ops/tensions/` | /rethink |
| 5 or more unprocessed session records | /remember --mine-sessions |
| claims with no topic map | /reflect |
| nascent stubs outnumber the claims filled from them | fill or decline, per `scripts/queries/nascent-stubs.sh` |
| wiki links that no longer resolve | fix on sight |

`ops/tensions/` holds operational tensions (the vault contradicting its own methodology); empty means zero, which is the healthy state. Doctrinal tensions — content of the book — are claims in `notes/` listed at `notes/tensions.md`. The two are never mixed.

## Routing

| Content | Destination |
|---------|-------------|
| A proposition of the book's framework | `notes/`, via the pipeline |
| A thinker, seated or candidate | `notes/`, interlocutor template |
| A tension in the book's doctrine | `notes/`, claim with category `tension` |
| Raw unprocessed material | `inbox/` |
| A source document | `sources/`, plus an archive note |
| Active threads | `ops/goals.md` |
| The current center, reading order, and torch | `ops/orientation.md` |
| A finished piece of work, dated | `ops/completed.md`, with paths to what it produced |
| A question that has been closed | `ops/decisions.md`, one row, pointing at the reasoning |
| Friction with the vault's process | `ops/observations/` |
| The vault contradicting its own rules | `ops/tensions/` |
| A methodology correction ("always X") | `ops/methodology/`, via /remember |
| A dated to-do | `ops/reminders.md` |
| Material read and set aside | `ops/queue/declines.md`, with the reason |
| Per-chapter comparison across the sources | `ops/chapter concordance.md` |
| Territory the corpus named and never developed | `ops/open corpus.md` |

## Known risks

The five failure modes rated high in the derivation, each with its guard: **vault work displacing manuscript work** (the output rule, the writing test, and /rethink's question "what reached the manuscript this month?"); **collecting without admitting** (the admission standard over the deliberately long candidate list); **transplanting the sources' prose** (the register in Posture and the quote-marking rule); **claims with no topic map** (the hook plus /verify); **map proliferation** (the /rethink gate).

## Evolution

The vault was generated from the ars-contexta derivation engine (v0.8.0) on 2026-08-01. Configuration lives in `ops/config.yaml`; the reasoning behind every choice in `ops/derivation.md`; the machine-readable form in `ops/derivation-manifest.md`, which the skills read at invocation for vocabulary and extraction categories. Methodology corrections accumulate in `ops/methodology/` via /remember; /rethink reviews and detects drift; /refactor implements structural change. The sixteen pipeline skills live in `.claude/skills/`, versioned with the repository, so they load in any session here; where a skill's stock text conflicts with this file or the manifest, this file and the manifest win (`ops/decisions.md` — known instances are the skills' `queue.json` references and stock map templates). The upstream plugin (`agenticnotetaking/arscontexta`) adds meta-commands not installed here; the vault is self-contained without it. If commands do not appear after an edit to a skill, restart the session — the skill index refreshes at session start.
