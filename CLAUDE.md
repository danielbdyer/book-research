# Research vault for *Firing on All Cylinders / Aletheia*

This repository is a research vault for a book about the structure of inner life. It stores atomic claims as markdown files connected by wiki links, navigated through topic maps, processed by a fixed pipeline, and validated by hooks. The system was generated from the ars-contexta derivation engine (v0.8.0) on 2026-08-01; the reasoning behind every configuration choice is recorded in `ops/derivation.md`. Three terms recur throughout the vault: *the corpus* means the seven documents in `sources/` that describe or draft the book, taken together; *the book* means the manuscript they describe; *the vault* means this repository. `sources/` also holds the author's poems — the primary layer beneath the corpus, which quotes them.

Two obligations govern all work here. First: the book states one law about itself — "the book performs what it describes" (recorded with its anchors at [[the book performs what it describes]]) — and the vault inherits it: claims are atomic, tensions are tracked rather than resolved, every claim names its sources. Second: the vault is measured by what reaches the manuscript. The corpus's own rule, quoted in [[ripeness is not refrigeration]]: "the archive preserves; the orchard ripens." Growth that displaces writing is the failure mode to watch for.

## Center of gravity

The book's centerpieces, by author decision (2026-08-02), are **the convergence of thinkers** — independent arrivals at the same finding, quoted with their refusals intact — and **the lived practice**, verified in the body. The system vocabulary the corpus elaborates at length (the Generative Triad, the twelve primitives, the molecule formulas, the three loops) is scaffolding: an uncertain secondary or tertiary concern, not a given outcome. It is admitted where it rests on established outside research and is never treated as the book's presumed core. The record is [[the system is scaffolding rather than the centerpiece]]; the directive is `ops/methodology/center of gravity.md`.

This diverges from the sources' weighting on purpose, and the divergence needs active defense: the corpus's page-count, and therefore semantic retrieval and every coverage table built from it, overweight the system. **Volume in the corpus is not centrality in the book.** The named regression is organizing new material by the system's taxonomy — sorting thinkers into triad corners, translating findings into molecule formulas. Where a source's emphasis conflicts with this directive, the directive wins.

**How the convergence is held** (`ops/methodology/authorial stance.md`): as an observation, not an argument. The author's posture is to gesture at traditions that have their own standing and at the crossovers they noticed, not to prove the book right — "I don't have any evidentiary remarks." The vault's prose stays evidential, meaning every claim says where it came from; the project is not thereby evidentiary. Provenance serves accurate pointing rather than proof, convergences are never ranked by evidential weight, a thinker's refusal is kept so the thinker survives being cited rather than to season a case, and the vault does not postulate efficacy — whether any of this works is not a claim the author is making.

## Reference

The referent for the book's material is the **named unit** — one of the book's main topic-ideas considered as a piece of the manuscript, called by its name: the House with No Ceiling, the Molecules of Experience, the Third Entity, the Stance, the Psychedelic Moment. Names are stable across every table of contents the corpus contains; numbers are not, and in one scheme a unit is a page rather than a chapter. Vault prose therefore names the unit and never refers to the book's content by chapter number. Numbers survive only inside source anchors (`abridged ch6`), where they are coordinates in one document rather than the name of an idea, and note titles never lead with a number or a count where a name would serve.

The reason is a bias to avoid rather than a style preference: numbered reference asserts a settled chapter progression, and no such progression exists yet. The arc — the multi-step shape of the psychedelic experience — is the author's live commitment; the chapter scheme fitted to it is not settled, and the sources propose different orderings. Sequence claims remain fully available and are stated as orderings of named units. The full directive is `ops/methodology/reference by name.md`; the per-unit comparison across the corpus's several tables of contents is `ops/chapter concordance.md`, keyed by name.

## Voice

Three standing author directives govern all prose and naming. All are recorded in full in `ops/methodology/`.

**Vocabulary** (`vocabulary policy.md`): the reference surface — filenames, YAML fields, enum values, folder names, headings — names its concern in plain denotative terms. The book's narrative vocabulary is graph content: it lives in `notes/figure glossary.md` and in image-category claims, never as metadata bound to a note.

**Naming** (`naming and epistemic humility.md`): the corpus's figures and coinages — the guild, the five rooms, the valley, the Stance, the Gatekeeper, the doors — are candidate labels for concerns, not the concerns. Vault prose states the concern in plain terms and attributes the corpus's name once where the crosswalk earns its place; the name never carries a sentence alone. Every name is held as a candidate, because nothing about the book is settled, its foundations included. Three exemptions: quotations, which keep their words; source anchors, which are coordinates in a document; and image-category claims plus the figure glossary, where the figure is the subject. New material attaches one level beneath the naming layer, to findings and to the people who reached them.

**Prose** (`prose register.md`): all vault prose is expository and evidential. Complete sentences with named subjects; no telegraphic fragments; no shorthand carrying an assertion alone. The statement leads and the substantiation sits beneath it. The corpus is quoted and anchored, never impersonated. Exact referents: named units, section symbols, document names. A description is a proposition parseable with no prior context.

## Session rhythm

- **Orient.** The SessionStart hook injects the file tree, the goals file, and any maintenance conditions. Read `ops/goals.md` before acting; factor fired conditions into what is proposed.
- **Work.** Route material through the pipeline below. Templates are the schema's source of truth; structure is never invented mid-task.
- **Persist.** Before ending: update `ops/goals.md`; capture operational friction into `ops/observations/`; the auto-commit hook records the rest.

## Layout

| Path | Contents |
|------|----------|
| `notes/` | The knowledge graph: claims and topic maps. Flat; no subfolders. |
| `inbox/` | Capture. Anything can land here; everything is later processed out. |
| `sources/` | Original source documents. Immutable. |
| `archive/` | Source notes: provenance records for processed material, pointing into `sources/`. |
| `templates/` | Note templates with `_schema` blocks — the authoritative schema. |
| `manual/` | User documentation. |
| `ops/` | Operational state: goals, config, queue, sessions, observations, tensions, methodology, the chapter concordance, the open-corpus inventory, and the rethink log. |
| `provenance/` | Reconstructions of the corpus's making, held as consulted works by author decision. Not sources; the policy is `ops/methodology/personal provenance.md`. |
| `scripts/queries/` | Ripgrep-based graph queries. `scripts/bootstrap.sh` restores tools and extracts the corpus to `.corpus/` in a fresh container. |
| `.claude/` | Skills and hooks, versioned with the vault. |

## Claims

A claim is one proposition, stated in its title as a complete sentence in lowercase (the filename is the claim). One idea per note; a title that needs "and" is usually two notes. The authoritative schema is `templates/claim-note.md`.

- `description:` — a complete sentence adding information beyond the title; the filter-before-read layer.
- `topics:` — the topic maps the claim belongs to, recorded twice: as a YAML array of wiki links (the machine-readable form, which /verify and `scripts/queries/unconnected-claims.sh` check) and in the note's `Topics:` footer (the human-readable form). Both must be present and must agree; at least one map is required.
- `category:` — one of `claim`, `isomorph`, `tension`, `open-question`, `image`, `practice`, `structure`, `craft` (plus `interlocutor` and `source` from their own templates). `craft` records a mechanism observable in the executed prose and is available only from draft sources; its governing rule — the mechanism, never the verdict — is `ops/methodology/craft evidence.md`.
- `sources:` — where the claim appears, with locations (`atlas §IV`, `first-telling: the offering`). Every claim carries this; provenance is the vault's version of the book's attribution rule.
- `supports:` — dormant. Records only manuscript placements the author has explicitly made; the vault never infers a placement from the corpus. Empty until placements emerge.
- `state:` — optional; records how developed the claim is. `nascent` means stated but not yet substantiated; `privated` means incomplete in a specific named way (state what is missing); `full` means stated and substantiated; `flourishing` means substantiated and built upon by other claims; `composting` means superseded but retained because later work draws on it. The five names come from the corpus's arc at atlas §V.3.
- `status:` / `treatment:` — tension category only: `live`, `treated`, or `resolved`, and the treatment under trial.

Body shape: the statement layer expounds the claim in plain sentences; a Substantiation section beneath carries quotes (marked, anchored), per-source locations, and notation. Compression is required. The source documents are highly styled and their style is contagious; copying their register into vault prose is a named risk, because an admiring paraphrase reproduces the sources' cadence without adding a proposition. The corpus records the underlying mechanism itself — a reader's bodily assent can respond to fluent prose rather than to the claim — at [[felt shift versus felt confirmation]]. Quote when the phrasing is itself the finding; mark and anchor every quote.

Footer, always:

```
Relevant Notes:
- [[other claim]] — a complete clause stating the relation

Topics:
- [[a topic map]]
```

## Source anchors

Seven source documents carry current claims, each with a short citation name used in every `sources:` array. They divide into two standings, and the standing governs how their evidence is read — the policy is `ops/methodology/source standing.md`.

**Descriptive sources** describe the book from outside it. `atlas` is `sources/the whole field - gravitational atlas.pdf`; its sections carry symbols, cited as `atlas §IV` or `atlas §IX.8a`. `walked` is `sources/the whole field walked.pdf`; its sections are bare roman numerals, cited as `walked VI`. `first-telling` is `sources/the first telling.pdf`; its sections are named rather than numbered, cited as `first-telling: the offering`. `space-around` is `sources/the space around.pdf`; its entries name a section and, where applicable, one of the survey's three directions, cited as `space-around: around the instrument (counterweight)`.

**Draft sources** are states of the manuscript itself. `arc-gloss` is `sources/the arc and the gloss - second edition.pdf`, the storyboard treatment of the fifteen-chapter arc, cited by named section as `arc-gloss: overlay four` or `arc-gloss: ch4`. `abridged` is `sources/firing on all cylinders - abridged edition.pdf`, that arc executed in full prose, cited as `abridged ch6` or `abridged: a note on sources`. `mythic-os` is `sources/firing on all cylinders - a mythic operating system.pdf`, a twenty-eight-chapter contents with one chapter written, cited as `mythic-os: contents` or `mythic-os: page 9`. A draft is quoted for what it says and is never credited for what it argues; where drafts disagree, the disagreement is recorded rather than resolved. Two of the four descriptive sources name `arc-gloss` in their colophons as a thread they were compiled from, so agreement among those three counts once, not three times ([[the atlas was compiled from the arc and gloss treatment]]).

**The primary source** stands beneath both: `poems` is `sources/the poems.pdf`, the author's lifetime collection of sixteen numbered poems, cited by number as `poems #5`. For the fifteen that predate the book, a phrase shared with the corpus originates in the poem; the sixteenth is the author's flagged exception, flowing the other way.

Each document has a provenance note in `archive/` recording its standing and what has been extracted from it; the full registry, with this key, is in [[methods]]. A new source receives its citation name and its standing when its archive note is created.

## Relations

The atlas ships a six-glyph notation set the vault records but does not lean on: ◉ major mass, ⚡ kept tension, ≈ isomorph (the same structure arrived at in a different medium — the corpus's strongest evidence class), ⊖ privation, ⟿ feeds-into, § cross-link. The relation is always stated in words in the link gloss; the glyph may tag it, and in practice the vault's glosses are words alone — a glyph's absence is compliance, not neglect. The notation's standing is a settled decision: the reasoning is in `ops/rethink-log.md` and the closure is indexed in `ops/decisions.md`. Tension claims carry status and treatment; resolving one is the author's act, never the vault's.

**Revision relations.** The atlas's set has no edge for the relation between two states of the same element, which is the relation the three draft sources are full of. The vault adds five directed relation names for it, each naming an element and two document states: **carried unchanged into**, **revised into**, **compressed into**, **dropped at**, and **added at**. They take no glyph, deliberately: the atlas did not ship one, and a vault-invented symbol in a corpus notation set would misrepresent its provenance. A revision relation is stated in words in the link gloss or in a concordance row, always naming both states and the direction — "compressed into `abridged ch1` from `mythic-os: page 9`". The relations exist so that a comparison between drafts costs a row rather than a note; the per-chapter rows are in `ops/chapter concordance.md`.

## Topic maps

A topic map (`type: moc`) gathers the claims of one concern. Three tiers: `notes/index.md`, then the maps, then claims. The current maps: six doctrine maps (`recognition`, `contraction-not-corruption`, `felt-shift`, `container-anatomy`, `relational-field`, `answerability`) and six structural maps (`interlocutors`, `book-structure`, `tensions`, `research-frontier`, `methods`, `open-questions`). `notes/figure glossary.md` is not a map: it is an image-category note serving as the vocabulary crosswalk between the corpus's figures and the vault's names.

The map set is deliberately capped to the corpus's own architecture. Creating a new map requires a /rethink pass with a recorded rationale — map proliferation is a named high risk from the derivation. When a map's claim list exceeds roughly twenty-five entries, split within its section structure first.

Every claim appears in at least one map's claim list. /reflect maintains the lists; every map ends with a "What remains" section naming its open work.

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

Support commands: `/seed` (create deduplicated extraction tasks), `/pipeline` (end-to-end), `/ralph` (queue orchestration with fresh context per phase), `/tasks`, `/next`, `/stats`, `/graph`, `/validate`, `/learn` (outward research), `/remember` (capture methodology corrections), `/refactor` (structural change).

The admission standard for everything the pipeline produces is the writing test (`ops/methodology/writing test.md`): **would a drafting session reach for this?** By author decision (2026-08-03) the test extends to the book's lifeblood: personal material from the making is admissible where holding it lets the writing be whole rather than disembodied, under the three conditions — own it, delicately, in honor of what is becoming — recorded at `ops/methodology/personal provenance.md`. A note earns its place by supplying something writing can use — a claim to state, a figure to quote, a mechanism to build against, a fact that decides a manuscript question. "Would it change how the project thinks" remains the floor; satisfying future writing is the bar. Material that only describes the vault's own state routes to `ops/`, and analysis of an absence is worth one seed, not an essay. Declined material keeps a record of what it was and why.

## Interlocutors

Thinkers are notes (`category: interlocutor`, template `templates/interlocutor.md`) with a functional `seat:` — `facilitation`, `emotion-work`, `speech-acts`, `container-makers`, `coaches`, `source-tradition`, `reference-lineage`, `margin-voices`, `chapter-patron`, `recommended-reading`, `candidate`, or `declined`. Each note records the one sentence that justifies the seat. Candidate evaluations end in a recommendation with evidence; the seating decision belongs to the author.

## Placement

Manuscript structure is provisional and placements emerge from the author's decisions — the vault never assigns material to chapters or parts on its own. `notes/book-structure.md` records the working structure the sources describe, as description. The dormant `supports:` field activates only when the author makes a placement; `scripts/queries/placements.sh` then reports what has been placed. The eventual goal this serves is recorded in [[seventeen chapters rest at madhyama]]: one pilot chapter, fully treated, sent to two real readers.

## Search

- **Structural queries**: `rg` over YAML (for example `rg '^category: tension' notes/`), plus the scripts in `scripts/queries/` — `unconnected-claims.sh` (membership defects), `nascent-stubs.sh` (claims recorded before substantiation), `coverage.sh` (claims per source and per category), `tensions-status.sh`, `candidate-seats.sh`, `placements.sh`.
- **The corpus itself**: `scripts/bootstrap.sh` extracts every PDF in `sources/` to `.corpus/*.md`, preserving `===PAGE n===` markers so a hit can be traced to a citable location. `.corpus/` is gitignored and regenerated, so it cannot drift from the originals. Search it with `rg -w 'pattern' .corpus/`. **Use word boundaries**: unbounded matching reports "habit" across the corpus by matching *inhabit* and "ritual" by matching *spiritual*, which has already produced one wrong conclusion.
- **Semantic search**: qmd, with a project-local index in `.qmd/` (gitignored) over two collections, the vault's notes and the extracted corpus. `qmd query "..."` for hybrid search, `qmd search "..."` for keyword-only, `qmd vsearch "..."` for vectors alone. Reranking is slow without a GPU; add `--no-rerank` when a query hangs. After bulk note changes run `qmd update && qmd embed`.
- **In a fresh container, run `scripts/bootstrap.sh` first.** It installs tree, pypdf, and qmd, extracts the corpus, registers both collections, and rebuilds the index. Each step reports independently and none is fatal to the others, so a session that loses one capability keeps the rest.

## Maintenance

Maintenance is condition-based. The session-orient hook counts and reports the first four conditions below at session start, and also prints any unchecked entries in `ops/reminders.md`. The last two conditions are not automated: run `scripts/queries/unconnected-claims.sh` for membership defects and /verify for link resolution.

| Condition | Action |
|-----------|--------|
| inbox holds 3 or more items | /reduce or /pipeline |
| 10 or more observations in `ops/observations/` | /rethink |
| 5 or more operational tensions in `ops/tensions/` | /rethink |
| 5 or more unprocessed session records | /remember --mine-sessions |
| claims with no topic map | /reflect |
| nascent stubs outnumber the claims filled from them | fill or decline, per `scripts/queries/nascent-stubs.sh` |
| wiki links that no longer resolve | fix on sight |

`ops/tensions/` holds operational tensions (the vault contradicting its own methodology). Doctrinal tensions — content of the book — are claims in `notes/` listed at `notes/tensions.md`. The two are never mixed.

## Routing

| Content | Destination |
|---------|-------------|
| A proposition of the book's framework | `notes/`, via the pipeline |
| A thinker, seated or candidate | `notes/`, interlocutor template |
| A tension in the book's doctrine | `notes/`, claim with category `tension` |
| Raw unprocessed material | `inbox/` |
| A source document | `sources/`, plus an archive note |
| Active threads | `ops/goals.md` |
| Friction with the vault's process | `ops/observations/` |
| The vault contradicting its own rules | `ops/tensions/` |
| A methodology correction ("always X") | `ops/methodology/`, via /remember |
| A dated to-do | `ops/reminders.md` |
| Material read and set aside | `ops/queue/declines.md`, with the reason |
| Per-chapter comparison across the sources | `ops/chapter concordance.md` |
| Territory the corpus named and never developed | `ops/open corpus.md` |

## Known risks

From the derivation, the five failure modes rated high for this vault, with their guards:

1. **Vault work displacing manuscript work.** The corpus warns about this itself; the guards are the output rule, the writing test at admission, and the /rethink question "what reached the manuscript this month?"
2. **Collecting without admitting.** Roughly sixty candidates await evaluation on the pending-evaluation list in `ops/queue/candidates.md`; the guard is the admission standard.
3. **Transplanting the sources' prose.** The guard is the prose register (`ops/methodology/prose register.md`) and the quote-marking rule.
4. **Claims with no topic map.** The guard is the hook plus /verify.
5. **Map proliferation.** The guard is the /rethink requirement for new maps.

## Evolution

Configuration lives in `ops/config.yaml`; the reasoning in `ops/derivation.md`; the machine-readable form in `ops/derivation-manifest.md`, which the skills read at invocation for vocabulary and extraction categories. Methodology corrections accumulate in `ops/methodology/` via /remember; /rethink reviews and detects drift; /refactor implements structural change. New skills follow the pattern of `.claude/skills/*/SKILL.md`; new templates carry `_schema` blocks; hook changes merge additively into `.claude/settings.json`.

The upstream plugin (`agenticnotetaking/arscontexta`) adds meta-commands — /architect, /reseed, /health, and a query interface over its methodology research base — which are not installed here; references to them elsewhere in `ops/` apply only when the plugin is installed. The vault is self-contained without it. One versioning note: the sixteen skill files carry the upstream stamp of the plugin release they were copied from, while the manual and manifest record engine version 0.8.0; where a skill's stock text conflicts with this file or with `ops/derivation-manifest.md`, this file and the manifest win.

## Skill activation

The 16 pipeline skills live in `.claude/skills/` and are versioned with the repository, so they load in any session on this repository. If the commands do not appear after an edit to a skill, restart the session; the skill index refreshes at session start.
