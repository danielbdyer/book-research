# book-research

This repository is a research vault for *Firing on All Cylinders / Aletheia*, a book about the structure of inner life. It stores single-claim notes connected by wiki links, organized by topic maps, processed by a six-phase pipeline, and checked by hooks. The system was generated from the ars-contexta derivation engine (v0.8.0) and is self-contained: its skills and hooks live in `.claude/` and load in any Claude Code session on this repository.

## Where to start

- **Agents** receive `CLAUDE.md` automatically; it defines the vault's terms, schema, pipeline, and standing policies. The SessionStart hook injects `ops/orientation.md` first — the center, the reading order, and the torch — then the file tree, the active goals, and any maintenance conditions.
- **Readers** start at `notes/index.md`, which leads with the book's center and lists the six doctrine maps and six structural maps, then `notes/methods.md` for the working rules and the source registry.
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
| `ops/` | Orientation, goals, decisions, configuration, work queues, and the standing author policies. |
| `provenance/` | Reconstructions of the corpus's making, held as works consulted by author decision. |
| `scripts/` | Graph queries and `bootstrap.sh`, which restores tools (tree, qmd) in a fresh container. |
| `.claude/` | The sixteen generated pipeline skills, the vault-native `/recompose` register pass, and six wired hooks, versioned with the vault. |

## Current state

The durable statement of what the work is centrally about is `ops/orientation.md`, kept current session by session; the active threads are in `ops/goals.md`, the dated log of finished work in `ops/completed.md`, and the settled questions in `ops/decisions.md`. The pending lists in `ops/queue/` are deliberately long — they enumerate the field, not the current task. The vault was generated 2026-08-01 from four source documents; the registry now holds eight — four descriptive, three manuscript drafts, and the author's poems as the primary source beneath them — with per-source extraction state recorded in `archive/`.
