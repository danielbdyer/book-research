# book-research

This repository is a research vault for *Firing on All Cylinders / Aletheia*, a book about the structure of inner life. It stores single-claim notes connected by wiki links, organized by topic maps, processed by a six-phase pipeline, and checked by hooks. The system was generated from the ars-contexta derivation engine (v0.8.0) and is self-contained: its skills and hooks live in `.claude/` and load in any Claude Code session on this repository.

## Where to start

- **Agents** receive `CLAUDE.md` automatically; it defines the vault's terms, schema, pipeline, and standing policies. The SessionStart hook injects the file tree, the active goals, and any maintenance conditions.
- **Readers** start at `notes/index.md`, the entry point listing the six doctrine maps and six structural maps, then `notes/methods.md` for the working rules and the source registry.
- **The manual** is at `manual/manual.md`: first session, command reference, workflows, configuration, troubleshooting.

## Layout

| Path | Contents |
|------|----------|
| `notes/` | The knowledge graph: claims and topic maps. |
| `sources/` | The source documents (immutable). |
| `archive/` | Provenance notes recording what has been extracted from each source. |
| `inbox/` | Capture; processed out by the pipeline. |
| `templates/` | The authoritative note schemas. |
| `manual/` | User documentation. |
| `ops/` | Goals, configuration, work queues, and the standing author policies. |
| `scripts/` | Graph queries and `bootstrap.sh`, which restores tools (tree, qmd) in a fresh container. |
| `.claude/` | The sixteen pipeline skills and three hooks, versioned with the vault. |

## Current state

Generated 2026-08-01 from four source documents, followed by a starter extraction pass (roughly forty notes) and a five-auditor quality pass. The pending work is enumerated in `ops/queue/candidates.md` (about sixty thinker and concept evaluations, none yet researched) and `ops/queue/extractions.md` (the source regions not yet extracted). The active threads are in `ops/goals.md`; the /next command recommends what to do first.
