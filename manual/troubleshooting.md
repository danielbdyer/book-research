---
description: Common problems — orphaned claims, dead links, stale goals, missing tools, hook issues — and their fixes.
type: manual
generated_from: "arscontexta-0.8.0"
---

# Troubleshooting

- **A claim belongs to no topic map.** Run /reflect, which assigns membership; or add the map to the claim's `topics:` list and the claim to the map's list directly. The write-validation hook warns when a new note lacks a topics footer.
- **A wiki link does not resolve.** The target was renamed or does not exist yet. `rg -l 'the old title' notes/` finds referrers after a rename. Links to notes that are planned but unwritten are acceptable if the surrounding sentence says the note does not exist yet.
- **The goals file is stale.** Symptoms: the orientation report describes work that is finished. Update `ops/goals.md`; it is the session-to-session memory and only stays useful if the persist step maintains it.
- **qmd is missing or its results are stale.** In a fresh container, run `scripts/bootstrap.sh`. After adding notes, run `qmd update && qmd embed`.
- **Hooks are not firing.** The hooks check for `.arscontexta` in the repository root and exit silently without it. Hook wiring lives in `.claude/settings.json`; changes to it require a session restart.
- **The skills do not appear as commands.** The skill index loads at session start. After generating or editing skills, restart the session.
- **A note reads wrong.** Check it against the two policies in `ops/methodology/` (denotative naming, expository prose) and the templates' `_schema` blocks. The most common faults: a description that restates the title, an unmarked quotation, a mechanism reference that does not name its file, and a narrative term used as if it were a schema term.
- **The inbox keeps growing.** Run /pipeline, or /ralph for a large backlog. If the backlog recurs, reduce intake or raise extraction selectivity in `ops/config.yaml` — the admission standard exists to keep volume meaningful.
