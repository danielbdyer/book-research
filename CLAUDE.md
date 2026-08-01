# Research vault for *Firing on All Cylinders / Aletheia*

This repository is a research vault for a book about the structure of inner life. It stores atomic claims as markdown files connected by wiki links, navigated through topic maps, processed by a fixed pipeline, and validated by hooks. The system was generated from the ars-contexta derivation engine (v0.8.0) on 2026-08-01; the reasoning behind every configuration choice is recorded in `ops/derivation.md`.

Two obligations govern all work here. First: the book states one law about itself — "the book performs what it describes" — and the vault inherits it: claims are atomic, tensions are tracked rather than resolved, every claim names its sources. Second: the vault is measured by what reaches the manuscript. The corpus's own rule, quoted in [[ripeness is not refrigeration]]: "the archive preserves; the orchard ripens." Growth that displaces writing is the failure mode to watch for.

## Voice

Two standing author directives govern all prose and naming. Both are recorded in full in `ops/methodology/`.

**Vocabulary** (`vocabulary policy.md`): the reference surface — filenames, YAML fields, enum values, folder names, headings — names its concern in plain denotative terms. The book's narrative vocabulary is graph content: it lives in `notes/figure glossary.md` and in image-category claims, never as metadata bound to a note.

**Prose** (`prose register.md`): all vault prose is expository and evidential. Complete sentences with named subjects; no telegraphic fragments; no shorthand carrying an assertion alone. The statement leads and the substantiation sits beneath it. The corpus is quoted and anchored, never impersonated. Exact referents: chapter numbers, section symbols, document names. A description is a proposition parseable with no prior context.

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
| `ops/` | Operational state: goals, config, queue, sessions, observations, tensions, methodology. |
| `scripts/queries/` | Ripgrep-based graph queries. `scripts/bootstrap.sh` restores tools in a fresh container. |
| `.claude/` | Skills and hooks, versioned with the vault. |

## Claims

A claim is one proposition, stated in its title as a complete sentence in lowercase (the filename is the claim). One idea per note; a title that needs "and" is usually two notes. The authoritative schema is `templates/claim-note.md`.

- `description:` — a complete sentence adding information beyond the title; the filter-before-read layer.
- `topics:` — which topic maps the claim belongs to; at least one, enforced by hook and by /verify.
- `category:` — one of `claim`, `isomorph`, `tension`, `open-question`, `image`, `practice`, `structure` (plus `interlocutor` and `source` from their own templates).
- `sources:` — where the claim appears, with locations (`atlas §IV`, `first-telling: the offering`). Every claim carries this; provenance is the vault's version of the book's attribution rule.
- `supports:` — dormant. Records only manuscript placements the author has explicitly made; the vault never infers a placement from the corpus. Empty until placements emerge.
- `state:` — optional metabolic state (`nascent`, `privated`, `full`, `flourishing`, `composting`). A privated claim is incomplete rather than wrong; note what is missing.
- `status:` / `treatment:` — tension category only: `live`, `treated`, or `resolved`, and the treatment under trial.

Body shape: the statement layer expounds the claim in plain sentences; a Substantiation section beneath carries quotes (marked, anchored), per-source locations, and notation. Compression is required — the sources are beautifully written, and transplanted shimmer is a named risk (the corpus's own warning: some clicks are the prose, not the recognition). Quote when the phrasing is the finding; mark every quote.

Footer, always:

```
Relevant Notes:
- [[other claim]] — a complete clause stating the relation

Topics:
- [[a topic map]]
```

## Relations

The atlas ships a notation set the vault records but does not lean on: ≈ isomorph (the same structure arrived at in a different medium — the corpus's strongest evidence class), ⚡ kept tension, ⊖ privation, ⟿ feeds-into. The relation is always stated in words in the link gloss; the glyph may tag it. Tension claims carry status and treatment; resolving one is the author's act, never the vault's.

## Topic maps

A topic map (`type: moc`) gathers the claims of one concern. Three tiers: `notes/index.md`, then the maps, then claims. The current maps: six doctrine maps (`recognition`, `contraction-not-corruption`, `felt-shift`, `container-anatomy`, `relational-field`, `answerability`) and the structural maps (`interlocutors`, `book-structure`, `tensions`, `research-frontier`, `figure glossary`, `methods`, `open-questions`).

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

The admission standard for everything the pipeline produces: nothing gets seated unless it would actually change how the project thinks. Eight claims that other work can build on beat forty paraphrases. Declined material keeps its record and its reason.

## Interlocutors

Thinkers are notes (`category: interlocutor`, template `templates/interlocutor.md`) with a functional `seat:` — `facilitation`, `emotion-work`, `speech-acts`, `container-makers`, `coaches`, `source-tradition`, `reference-lineage`, `margin-voices`, `chapter-patron`, `recommended-reading`, `candidate`, or `declined`. Each note records the one sentence that justifies the seat. Candidate evaluations end in a recommendation with evidence; the seating decision belongs to the author.

## Placement

Manuscript structure is provisional and placements emerge from the author's decisions — the vault never assigns material to chapters or parts on its own. `notes/book-structure.md` records the working structure the sources describe, as description. The dormant `supports:` field activates only when the author makes a placement; `scripts/queries/placements.sh` then reports what has been placed. The eventual goal this serves is recorded in [[seventeen chapters rest at madhyama]]: one pilot chapter, fully treated, sent to two real readers.

## Search

- Structural queries: `rg` over YAML (for example `rg '^category: tension' notes/`), plus the scripts in `scripts/queries/`.
- Semantic search: qmd, with a project-local index in `.qmd/` (gitignored). `qmd query "..."` for hybrid search; `qmd search "..."` for keyword-only. After bulk note changes, run `qmd update && qmd embed`. In a fresh container, run `scripts/bootstrap.sh` first.

## Maintenance

Condition-based; the session-orient hook surfaces the counts.

| Condition | Action |
|-----------|--------|
| inbox holds 3 or more items | /reduce or /pipeline |
| 10 or more observations in `ops/observations/` | /rethink |
| 5 or more operational tensions in `ops/tensions/` | /rethink |
| 5 or more unprocessed session records | /remember --mine-sessions |
| claims with no topic map | /reflect |
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

## Known risks

From the derivation, the five failure modes rated high for this vault, with their guards:

1. **Vault work displacing manuscript work.** The corpus warns about this itself; the guard is the output rule and the /rethink question "what reached the manuscript this month?"
2. **Collecting without admitting.** Roughly sixty candidates wait in the frontier; the guard is the admission standard.
3. **Transplanting the sources' prose.** The guard is the prose policy and the quote-marking rule.
4. **Claims with no topic map.** The guard is the hook plus /verify.
5. **Map proliferation.** The guard is the /rethink requirement for new maps.

## Evolution

Configuration lives in `ops/config.yaml`; the reasoning in `ops/derivation.md`; the machine-readable form in `ops/derivation-manifest.md`, which the skills read at invocation for vocabulary and extraction categories. Methodology corrections accumulate in `ops/methodology/` via /remember; /rethink reviews and detects drift; /refactor implements structural change. New skills follow the pattern of `.claude/skills/*/SKILL.md`; new templates carry `_schema` blocks; hook changes merge additively into `.claude/settings.json`.

The upstream plugin (`agenticnotetaking/arscontexta`) adds meta-commands, including a query interface over its 249-note methodology research base. It is optional; the vault is self-contained.

## Skill activation

The 16 pipeline skills live in `.claude/skills/` and are versioned with the repository, so they load in any session on this repository. If the commands do not appear after an edit to a skill, restart the session; the skill index refreshes at session start.
