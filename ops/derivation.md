---
description: This file records how the knowledge system was derived and configured, including the four author directives issued during setup. The upstream plugin's /architect and /reseed meta-commands read it when that plugin is installed.
created: 2026-08-01
engine_version: "0.8.0"
---

# System derivation

This vault holds the research notes for *Firing on All Cylinders / Aletheia*, a book about the structure of inner life. The system was derived from the ars-contexta v0.8.0 setup engine, run manually in-session (the plugin's source was cloned and its setup procedure followed by the session agent, rather than installed and run as a plugin). The derivation was seeded from four source documents supplied by the author on 2026-08-01; each has a provenance record in `archive/`.

## Configuration dimensions

Each row records the chosen position and the evidence for it in the source material or the author's statements.

| Dimension | Position | Basis | Confidence |
|-----------|----------|-------|------------|
| Granularity | atomic | The corpus is already atomized: the atlas is a network of single-statement entries, and the book's own alphabet is presented as small and closed. | High |
| Organization | flat | The atlas organizes associatively, by cross-link rather than hierarchy, and states that its indentation depth records derivation rather than importance. | High |
| Linking | explicit, typed | The atlas ships typed edges (isomorph, tension, privation, feeds-into, cross-link). Implicit semantic linking is deferred until the qmd index is in regular use. | High |
| Processing | heavy, at deep depth | Four overlapping tellings of the same material require deduplication into single claims with multiple source anchors, and the space-around survey supplies roughly sixty candidate evaluations. The author set `deep` as the standard processing depth (2026-08-01): full pipeline, fresh context per phase, all verification checks on every pass. | High |
| Navigation | 3-tier | Index, then topic maps, then claims — matching the atlas's own structure of a summary, twelve sections, and entries. | High |
| Maintenance | condition-based | The research preset (the engine's stock configuration for research vaults) defaults to condition-based maintenance: the session-start hook surfaces counts, and work responds to them rather than to a schedule. | Inferred |
| Schema | dense | The corpus is natively typed: thinkers carry seats, tensions carry treatments, states carry stages. The author builds structured systems (the corpus references a sister ontology project). | High |
| Automation | full | The research preset's default is full automation: all hooks, all skills, the full pipeline. | Medium |

## Author directives issued during setup

Four directives were issued while the vault was being generated. Each is recorded in full in `ops/methodology/` or reflected in the schema; all four bind future work.

1. **Denotative naming** (recorded in `ops/methodology/vocabulary policy.md`). The reference surface — filenames, YAML fields, enum values, folder names, headings — names its concern in plain terms. The book's narrative vocabulary is graph content: it lives in `notes/figure glossary.md` and in image-category claims, never as metadata bound to a note. This directive replaced an earlier draft of the vault that used the corpus's figures (wells, orbits, the porch) as primary names.
2. **Expository prose** (recorded in `ops/methodology/prose register.md`). All vault prose is evidential and complete-sentenced; the corpus is quoted and anchored, never impersonated; system references are self-explanatory. The author supplied a register document from another project as the model.
3. **No inferred placements.** Manuscript structure is provisional; the vault records the working structure the sources describe but never assigns claims to chapters or parts. The `supports:` field on claims is dormant and records only placements the author has explicitly made.
4. **Stoic reporting.** The vault reports the corpus's structure without relaying its self-evaluations. The book's admiring descriptions of its own moves are not evidence and do not appear in vault prose except as clearly attributed quotations when the phrasing itself is the object of study.

## Vocabulary decisions

| Concern | Name chosen | Note |
|---------|-------------|------|
| Notes folder | `notes/` | An earlier draft used a corpus figure for this folder; the plain name replaced it under directive 1. |
| Note type | claim | The unit is one proposition, stated in the filename. |
| Navigation unit | topic map | The structural marker in frontmatter remains `type: moc` for compatibility with the generated skills. |
| Membership field | `topics:` | The corpus's figure for membership ("orbit") appears only in the figure glossary. |
| Tension records | claims with `category: tension` | The corpus's figure is "fault lines." Doctrinal tensions are content in `notes/`; operational tensions are separate records in `ops/tensions/`. |
| People records | claims with `category: interlocutor` and a functional `seat:` | Seat values are denotative (`reference-lineage`, not "porch"); the correspondence to the corpus's seating figures is in the figure glossary. |
| Pipeline commands | canonical ars-contexta names (/reduce, /reflect, /reweave, /verify, and the rest) | The sixteen generated skills cross-reference each other by these names and read `ops/derivation-manifest.md` at run time. The corpus's process figures (harvest, walked) appear only in the figure glossary. |

## Platform

- Tier: Claude Code, with `.claude/` versioned inside the repository so the skills and hooks travel with it into any session or container.
- Automation: full. SessionStart runs orientation and session capture; PostToolUse runs note validation and an asynchronous git auto-commit. All hooks check for the `.arscontexta` marker file before acting.
- Semantic search: qmd, with a project-local index in `.qmd/` (not committed). In a fresh container, `scripts/bootstrap.sh` reinstalls the tools and rebuilds the index.

## Active feature blocks

Included: atomic-notes, wiki-links, mocs (as topic maps), processing-pipeline, schema, maintenance, self-evolution, methodology-knowledge, session-rhythm, templates, ethical-guardrails (as the provenance rule), helper-functions, and graph-analysis (as the query scripts). Excluded, with reasons: self-space (the research preset routes goals to `ops/goals.md` and identity to CLAUDE.md; a separate agent-identity directory serves personal-assistant vaults, not research vaults); multi-domain (one domain: the book); personality (the research preset's neutral register, reinforced by directive 2).

## Coherence checks

The chosen configuration matches the research preset's reference shape, so no hard constraint fails. One soft constraint required a decision: typed explicit linking benefits from semantic search, which is installed but only useful once embedded and re-run as notes change; until that habit exists, the ripgrep query scripts carry discovery. The upstream plugin's /health meta-command, when that plugin is installed, should confirm the qmd index is being refreshed; until then, run `qmd update && qmd embed` after bulk note changes.

## Known risks

Five failure modes are rated high for this configuration, each with its guard. The same five appear in CLAUDE.md, which is the operational copy.

1. Vault work displacing manuscript work. The corpus itself warns that a map of this territory is not the territory. The guard is the output rule in `notes/methods.md` and the /rethink question about what reached the manuscript.
2. Collecting without admitting. Roughly sixty candidates await evaluation on the pending list in `ops/queue/candidates.md`. The guard is the admission standard: nothing is seated unless it would change how the project thinks.
3. Transplanting the sources' prose. The source documents are highly styled and their style is contagious. The guard is directive 2 and the quote-marking rule.
4. Claims with no topic map. The guard is the frontmatter topics array, checked by /verify and by `scripts/queries/unconnected-claims.sh`.
5. Topic map proliferation. The guard is the rule that new maps require a /rethink pass with a recorded rationale.

## Generation record

Generated 2026-08-01: the folder layout (`notes/`, `inbox/`, `sources/`, `archive/`, `templates/`, `manual/`, `ops/`, `scripts/`, `.claude/`); CLAUDE.md; five templates; twelve topic maps with their index, and a starter set of roughly forty claims, tensions, candidate files, and provenance records; the sixteen pipeline skills copied from the plugin's skill sources; the hook scripts and settings; the queue files; and this record. The starter content was extracted from the four source documents in a single pass; the unextracted remainder is enumerated in `ops/queue/extractions.md`.
