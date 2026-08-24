---
description: "The discipline of 2026-08-24 for the cache markers: a per-section content marker is re-stamped only by re-reading its derived section against the moved source, never by a bare CRC bump, and its derived date is the reread receipt that must advance."
category: configuration-state
created: 2026-08-24
status: active
---

# re-stamping a cache marker

This is a correction the author issued on 2026-08-24, on catching a re-stamp that had bumped a marker's checksum without re-reading the prose that rested on it. His words: a blind bump "defeats the purpose… how can we require a reread going forward?" The occasion was the concealment-versus-contraction weave: two markers in `the-concerns.md` (CONC-recognition, watching `notes/recognition.md`; CONC-contraction, watching `notes/contraction-not-corruption.md`) were re-stamped to match their moved source maps, but the derived recognition and contraction entries in `the-concerns.md` were not re-read to see whether the movement in the source changed what those entries should say. The checksum then certified a freshness no one had checked.

## What a cache marker is, and the gap the correction closes

A cache marker is the inline receipt `<!--cache id=X crc=Y src=path1|path2 derived=DATE-->` that sits in a derived section of a family file (`the-*.md`) or of `ops/scaffold.md`. The `crc` is a CRC32 over the **content of the `src` files** — what those files *say* — so the marker expires when a cited source's content moves and is immune to the auto-commit hook, which touches modification times and not content (`scripts/queries/scaffold-check.sh` is the engine; `scripts/queries/lens-check.sh --stale` is the sweep). This immunity is deliberate and it cuts both ways: editing the derived section's own prose never expires its marker (so a section can be polished freely), which is the same reason a session can recompute the `crc` to match a moved source **without touching the derived prose at all**. The checksum can only report that a source moved; it cannot report whether the derived section was re-read after the move. That judgment is not mechanizable — whether a source's change bears on the prose that interprets it is exactly the question a reread answers — so the discipline is procedural, made auditable, rather than a gate the tooling can enforce alone.

## The two kinds of marker, and their different obligations

- A **provenance-bundle marker** watches a set of sources to answer one question: is this section derived from the current set? Its derived prose is a roll-up whose meaning does not turn on any single source's wording. `CONC-src` (the six doctrine maps) is one. Re-stamping it mechanically to the moved bundle is legitimate: there is nothing to re-read, only a set to re-confirm.
- A **per-section content marker** watches a specific source whose meaning its derived section interprets. `CONC-recognition` (watching `notes/recognition.md`) and `LOC-concept` (watching `the-conversation-catalog.md` and `notes/recognition.md`) are two. When that source moves, the section's claim may now be wrong, incomplete, or newly supported, so re-stamping it **requires re-reading the section against the moved source** and either revising it or confirming that the movement does not bear on it.

## The rule

**Re-stamp a per-section content marker only by re-reading its derived section against the moved source and advancing `derived=` to the date of that reread.** The reread is two-sided, and this is the heart of the rule: ask not only *does the existing prose need correcting?* but *does the moved source now carry something the section ought to add?* — a source gains as well as changes, and a bump that weighs the source's semantic impact on neither count is the blind versioning this rule forbids. Revise where the movement bears on the section, add what it now warrants, or confirm it warrants neither; the consideration itself is what earns the stamp. A bare checksum bump on a content marker, leaving the derived prose unexamined and `derived=` stale, is a defect: it certifies a freshness — and a completeness — that was never checked. A provenance-bundle marker carries the lighter form of the same two-sided question, and only pure marker-digit churn (below) is exempt from asking it.

## How the reread is required going forward

Three things make the reread the default and the skip visible:

1. **The `derived=` date is the reread receipt, and it must advance on every content-marker re-stamp.** This turns the date from decoration into an attestation — "this section was read against its current source on this date" — so a content marker whose `crc` is current but whose `derived=` predates the source's last move is the signature of a bump that skipped the reread.
2. **The refresh skills own content-marker re-stamping.** `/lens refresh` and `/scaffold refresh` re-derive the sections a `--stale` sweep names, which *is* the reread; routing staleness through them makes the reread structural rather than optional. A hand-edited content-marker checksum is the exception, and it must carry the reread — a revision, or a confirmation — in the same commit.
3. **The skip is auditable in the diff.** Because artifact edits are immune, a commit that changes a content marker's `crc` but shows no change in that marker's derived section and no `derived=` advance is the tell, visible on inspection and greppable after the fact.

## Shared sources, churn, and the cascade

Two corollaries keep the rule from turning on itself, both learned 2026-08-24 when a one-row edit to `ops/decisions.md` expired nine markers at once.

- **Marker churn is not a substantive change.** Re-stamping a marker rewrites its own CRC and date, and those characters are part of the file's content, so every marker watching that whole file (`ops/scaffold.md` is watched by many `-src` bundles) goes stale on the next sweep — even though only metadata moved. When the *only* change to a watched source since a marker was last stamped is cache-marker churn, that marker is re-stamped mechanically, content marker or not: the reread requirement is about a source's substantive prose moving, and re-reading a derived section because a checksum digit changed under it would be an unbounded regress. Know it is only churn because you made the change and can see the diff is marker lines alone; a substantive edit in the same file still demands the reread.
- **A shared source cascades, so resolve to a fixed point.** `ops/decisions.md` and `ops/scaffold.md` are cited by many markers, so any edit to them expires a batch. Bring the heavily-edited file to a fixed point first — re-stamp its own internal markers until its `--stale` sweep is empty — then re-stamp the dependent markers in other files against that final state, in one pass, so a later edit does not re-expire what you just stamped. Read the full `--stale` list, never a `tail` of it: a truncated list hides members of the batch and the cascade looks unfinished when it is not (or finished when it is not).

## Relevant Notes:
- [[the chain of understanding]] — the deliverable the markers serve: the honesty of the derived reading, not the freshness of a checksum
