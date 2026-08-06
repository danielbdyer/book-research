---
description: This directive, issued 2026-08-05, requires every claim to name the bearer and the figure that carry it in the corpus, because the extraction pipeline follows names and images and silently misses propositions attached to neither.
category: configuration-state
created: 2026-08-05
status: active
---

# propositions carry names and images

This is an author directive, issued 2026-08-05, global and standing. His instruction: "Let's be sure to attach the propositions to the names and images that they need."

## The defect it answers

On 2026-08-05 the mesh grid found that two of the eight propositions it treats as load-bearing had no claim note in this vault at all, while the vault held seated adversaries against both. Writing them showed that neither was missing from `sources/` — both are stated plainly and repeatedly there. What was missing was the extraction.

The pattern behind the miss is the useful part. The vault's pipeline is good at two kinds of material and had been reaching for them without noticing it was only reaching for them:

- **Named material.** A proposition attached to a thinker gets a chair, and the chair pulls the proposition into the graph with it. Dōgen's anti-instrumentality clause was in the corpus for months and no session extracted it, because Dōgen had no chair.
- **Figured material.** A proposition attached to one of the corpus's images gets extracted as an image claim, and the figure glossary keeps it findable. The house with no ceiling carries the householder claim; the gatekeeper carries the threshold posture.

A proposition attached to neither is invisible to both routes. It sits in the prose, gets read, and produces no note — and because the vault's health checks count links, topics and schema rather than coverage, nothing fires. The two propositions were found by an outside instrument sorting the roster, which is not a route the vault can rely on.

## The rule

Every claim names, where the corpus supplies them, two things beyond its sources:

1. **The bearer** — the thinker in whose voice the corpus states the proposition, and their chair if one exists. Where the corpus states a proposition in no one's voice, the claim says so, because an unborne proposition is a finding about the book rather than a gap in the note.
2. **The figure** — the corpus's own image for the proposition, attributed once and crosswalked through `notes/figure glossary.md`, under the standing rule that the name is a candidate label and never carries a sentence alone (`naming and epistemic humility.md`).

Both are recorded in the note's substantiation layer and in the footer's link glosses, so a later pass can find the proposition by either route.

## What this is not

It is not permission to organize claims by thinker or by image. The center-of-gravity directive holds: the convergence of thinkers is a centerpiece and the corpus's figures are candidate labels, and neither is the filing system. The rule runs the other way — the proposition leads and stays the subject of its own note, and the bearer and figure are attached to it so it can be found. A note titled for its figure rather than its claim has inverted this.

Nor does it license inventing a bearer. Where the corpus states something in nobody's voice, naming a modern thinker who happens to hold the same view would manufacture the attachment this directive exists to record honestly.

## The standing consequence

Two of the eight were found by accident, which means the vault has no way to know how many remain. The counted maintenance conditions do not detect this class of defect — they check whether existing notes are well-formed, never whether the corpus holds a proposition no note states. Building a coverage check for it is a live question rather than a decided one, and it is recorded as such at `ops/observations/nothing counts propositions the corpus states and the vault never wrote.md`.
