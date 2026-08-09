---
description: This page describes the settings files, the standing author policies, and the semantic search setup.
type: manual
generated_from: "arscontexta-0.8.0"
---

# Configuration

## The files

- `ops/config.yaml` — the live settings: processing depth, extraction selectivity, verification checks. Edit directly; changes apply to the next command run.
- `ops/derivation.md` — why the settings are what they are, including the four author directives from setup. It is the historical record; the upstream plugin's /architect and /reseed meta-commands read it when that plugin is installed (see "The upstream plugin" below).
- `ops/derivation-manifest.md` — the machine-readable form the skills read at invocation: vocabulary, extraction categories, dimensions. Changing vocabulary or categories means editing this file.
- `ops/methodology/` — the standing policies (vocabulary, prose register) and accumulated corrections.
- `.arscontexta` — the marker file the hooks check before acting. `git: true` enables auto-commit. The `session_capture` key is inert from 2026-08-09: the hook block that wrote a record per session was removed, because each record held an identifier, a timestamp and the word "active" and nothing a later session could read. Deleting the file disables all hooks.
- `.claude/settings.json` — the hook wiring. Changes require a session restart.

## The standing policies

The standing directives that govern writing have grown well past the founding pair, and the live index is `ops/methodology/methodology.md`, one line per directive. The founding pair still binds — naming is denotative (narrative vocabulary lives in `notes/figure glossary.md` as content) and prose is expository and evidential (complete sentences, quotes marked and anchored) — and the register countermeasure of 2026-08-05 binds every sentence a session writes: seven lines, stamped at every surface a session loads and verified by `scripts/queries/countermeasure.sh` at each session start. A third founding directive governs structure: manuscript placements are never inferred; the `supports:` field on claims stays empty until the author makes a placement.

## Semantic search

qmd provides hybrid search over the notes. The index is project-local in `.qmd/` and not committed. Commands: `qmd query "..."` (hybrid), `qmd search "..."` (keyword only), `qmd update && qmd embed` (refresh after adding notes). In a fresh container qmd is absent; `scripts/bootstrap.sh` reinstalls it and rebuilds the index.

## The upstream plugin

The vault was generated from `agenticnotetaking/arscontexta` v0.8.0 and is self-contained. Installing the plugin adds its meta-commands (setup, health, architect, reseed, and a query interface over its methodology research base): `/plugin marketplace add agenticnotetaking/arscontexta`, then `/plugin install arscontexta@agenticnotetaking`, then restart.

Read [[meta-skills]] next for the commands that change the system.
