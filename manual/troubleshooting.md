---
description: This page lists common problems — orphaned claims, dead links, stale goals, missing tools, hook failures — and the fix for each.
type: manual
generated_from: "arscontexta-0.8.0"
---

# Troubleshooting

- **A claim belongs to no topic map.** Run /reflect, which assigns membership, or edit both locations directly: the frontmatter `topics:` array and the `Topics:` footer, which must agree. The write-validation hook only checks that a `topics:` key exists in the frontmatter; it does not check that the array has entries. `scripts/queries/unconnected-claims.sh` finds empty arrays and array-footer disagreements.
- **A wiki link does not resolve.** The target was renamed or does not exist yet. `rg -l 'the old title' notes/` finds referrers after a rename. Links to notes that are planned but unwritten are acceptable if the surrounding sentence says the note does not exist yet.
- **The goals file is stale.** Symptoms: the orientation report describes work that is finished. Update `ops/goals.md`; it is the session-to-session memory and only stays useful if the persist step maintains it.
- **qmd is missing or its results are stale.** In a fresh container, run `scripts/bootstrap.sh`. After adding notes, run `qmd update && qmd embed`.
- **Hooks are not firing.** The hooks check for `.arscontexta` in the repository root and exit silently without it. Hook wiring lives in `.claude/settings.json`; changes to it require a session restart.
- **The skills do not appear as commands.** The skill index loads at session start. After generating or editing skills, restart the session.
- **A note reads wrong.** Check it against the standing directives in `ops/methodology/` — start with denotative naming and the "Write with research diction" directive — and the templates' `_schema` blocks. The most common faults: a description that restates the title, an unmarked quotation, a reference that points instead of carrying its content, an abstract noun left unexpanded, and a narrative term used as if it were a schema term. Repair drifted prose with `/recompose`.
- **The inbox keeps growing.** Run /pipeline, or /ralph for a large backlog. If the backlog recurs, reduce intake or raise extraction selectivity in `ops/config.yaml` — the admission standard exists to keep volume meaningful.
