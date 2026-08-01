---
description: The settings files, the standing author policies, and the semantic search setup.
type: manual
generated_from: "arscontexta-0.8.0"
---

# Configuration

## The files

- `ops/config.yaml` — the live settings: processing depth, extraction selectivity, verification checks. Edit directly; changes apply to the next command run.
- `ops/derivation.md` — why the settings are what they are, including the four author directives from setup. Historical record; /architect and /reseed read it.
- `ops/derivation-manifest.md` — the machine-readable form the skills read at invocation: vocabulary, extraction categories, dimensions. Changing vocabulary or categories means editing this file.
- `ops/methodology/` — the standing policies (vocabulary, prose register) and accumulated corrections.
- `.arscontexta` — the marker file the hooks check before acting. `git: true` enables auto-commit; `session_capture: true` enables session records. Deleting the file disables all hooks.
- `.claude/settings.json` — the hook wiring. Changes require a session restart.

## The standing policies

Two author directives govern all writing in the vault and bind the skills: naming is denotative (narrative vocabulary lives in `notes/figure glossary.md` as content), and prose is expository and evidential (complete sentences, quotes marked and anchored, system references self-explanatory). Both are stated in full in `ops/methodology/`. A third directive governs structure: manuscript placements are never inferred; the `supports:` field on claims stays empty until the author makes a placement.

## Semantic search

qmd provides hybrid search over the notes. The index is project-local in `.qmd/` and not committed. Commands: `qmd query "..."` (hybrid), `qmd search "..."` (keyword only), `qmd update && qmd embed` (refresh after adding notes). In a fresh container qmd is absent; `scripts/bootstrap.sh` reinstalls it and rebuilds the index.

## The upstream plugin

The vault was generated from `agenticnotetaking/arscontexta` v0.8.0 and is self-contained. Installing the plugin adds its meta-commands (setup, health, architect, reseed, and a query interface over its methodology research base): `/plugin marketplace add agenticnotetaking/arscontexta`, then `/plugin install arscontexta@agenticnotetaking`, then restart.

Next: [[meta-skills]] for the commands that change the system.
