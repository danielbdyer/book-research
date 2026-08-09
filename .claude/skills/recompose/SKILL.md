---
name: recompose
description: Rewrite finished prose to the vault's register without changing what it claims. Repairs fragments, pipeline coinages, bare references, figures of speech, unexpanded abstract nouns, opaque filenames, and citations with no address. Use on a branch, a session's output, or a named file when the prose has drifted from ops/methodology/prose register.md. Triggers on "/recompose", "/recompose [path]", "/recompose --branch", "decomplexify this", "fix the register".
user-invocable: true
allowed-tools: Read, Write, Edit, Grep, Glob, Bash, Task
context: fork
---

**THIS SKILL IS VAULT-NATIVE.** The sixteen skills beside it came from the ars-contexta derivation engine and open with a block overriding their stock text; this one has no stock text beneath it and no upstream to override. Everything below was written for this vault, from one run of the work on 2026-08-06. Its authority is `ops/methodology/prose register.md`, which is canonical and wins wherever this file disagrees with it.

# Recompose

## What this does, and the one law

A recompose pass rewrites prose that is already finished and already true, so that the author can read it. It is the repair for the failure the vault has recorded more than any other: a session states a real finding in words the pipeline invented, in figures standing where statements belong, and in references that gesture at content instead of carrying it, and the result is a page that looks rigorous and cannot be followed. The author's own words for the fault, recorded twice on 2026-08-03 and again on 2026-08-05, are in rules 11 and 12 of `ops/methodology/prose register.md`: "It is arcane and ornate and communicates in a way that is opaque," and "I feel the indirection being displayed in your conversation and your writing right now speaks in references that I cannot quite understand."

**The one law: the register changes and the claims do not.** A recompose pass alters how a thing is said. It never alters what is said, what the evidence is, which category or topic map or status a note carries, or which notes link to which. When the pass finds a claim that is wrong, unresolved, or self-contradicting, it leaves the claim exactly as written and reports the problem — Step 6 below. That restraint is what makes the pass safe to run over dozens of files at once, and abandoning it once would make every future run untrustworthy.

The counterweight binds at equal force, and it is the register's own quality clause. Nothing here shortens or flattens anything. A sentence may be long and subordinate when it unfolds in the order a reader takes it in. Richness is the right fact, complete, with its reason attached. The ban is on compression that withholds and gesture that defers, never on complexity that delivers. A repair that makes a paragraph longer because the paragraph now states what it used to point at is a correct repair. The affirmative test is rule 11's: a tired friend follows it on first reading.

## When to run it

- The author flags a sentence, a file, or a branch as unreadable. This is the first-class case and the reason the skill exists.
- A generative or research round has just filed a batch of notes, and no register pass has run over them. `/reduce`, `/reflect`, `/reweave`, and `/learn` all write prose under time pressure and all have produced recorded violations.
- A subagent's report was filed rather than recomposed. The prose register forbids this — a subagent's report is raw material, never copy — and it is the single most reliable source of drifted prose, because a subagent writes in whatever register its own context produced.
- A pull request is about to be opened, or a branch is about to merge. Prose is cheapest to repair before it is built upon.

Do not run it as routine maintenance over the whole vault. The pass rewrites human-written sentences, and rewriting a sentence that was already clear costs something and gains nothing.

## EXECUTE NOW

**Target: $ARGUMENTS**

Parse immediately:

| Argument | Scope |
|---|---|
| a file path or note title | that file, whole |
| `--branch [ref]` | everything the current branch changed against `ref`, default `origin/main` |
| `--diff` | the uncommitted working tree against `HEAD` |
| `--since <date>` | files modified on or after that date |
| `--session` | the files named in the newest `ops/completed.md` entry |
| empty | ask which files, and offer `--branch` as the likely answer |

Then work Steps 0 through 7 in order. Do not begin editing before Step 0 is complete.

## Step 0 — read the standard, and never work from memory of it

Read these five files at the start of every run. They change — the prose register has taken several author corrections — and a pass run from memory enforces last week's rules.

1. **`ops/methodology/prose register.md`** — canonical. Rules 1 through 12 and the quality clause. Everything in Step 2 is a restatement of these; the compact form is the "Write with research diction" directive in `CLAUDE.md`.
2. **`ops/methodology/vocabulary policy.md`** — the reference surface stays denotative: filenames, YAML fields, enum values, folder names, and headings name their concern in plain terms.
3. **`ops/methodology/naming and epistemic humility.md`** — the corpus's figures are candidate labels for concerns rather than the concerns, and one of them never carries a sentence alone. Note its four exemptions: quotations keep their words, source anchors are coordinates, image-category claims and `notes/figure glossary.md` take the figure as their subject, and a named unit used as a stable handle is not a concept label.
4. **`ops/methodology/reporting to the author.md`** — governs the report this pass ends with.
5. **`ops/register violations.md`** — the sentences the author has actually flagged, with the date and the line each broke. Read it for the shapes he objects to in his own words, not for a pattern list; he has ruled that no regular expression finds the fault.

Then read the file or files in scope, whole, before changing any of them. A repair made without the surrounding argument in view is how a session drops a qualifier.

## Step 1 — fix the scope, and honor the line between new and modified

**A file this work created is in scope whole. A file it only modified is in scope for the lines it added.** Rewriting the untouched parts of an old file inflates the diff, buries the actual repair, and quietly re-authors prose nobody asked about.

```bash
# every file the branch touched
git diff --name-only -z origin/main...HEAD -- '*.md'

# only the files it created
git diff --name-only -z --diff-filter=A origin/main...HEAD -- '*.md'

# only the lines it added to files that already existed
git diff -U0 --diff-filter=M origin/main...HEAD -- '*.md'
```

Write the scope down as a list before starting. Every file on it gets reported on at the end, including the ones you decide need no repair.

## Step 2 — the seven faults

Each fault below has a definition, a way to find it, a repair, and one real specimen from the run of 2026-08-06. Work them in order on each file: the mechanical ones first, because fixing a fragment sometimes dissolves a figure, and the judgment-heavy ones last.

### Fault 1 — the fragment (prose register rule 1)

**What it is.** A statement with no named subject or no finite verb, standing where a sentence belongs.

**How to find it.** Read the last sentence of every paragraph first, because the vault counted its own violations and found that fragments concentrate at paragraph closes. Then read the opening words of every bullet before its first colon, at the same priority, because a headline there substitutes for a claim.

**How to repair it.** Give the statement its subject and its verb, and keep everything the fragment carried. A fragment usually dropped a reason; put the reason back.

> **Before:** Assembled agreement — curated, and reachable by the selection caveat. And unsought refusal — arriving against the gatherer's interest, which a sample curated for participation cannot have been curated to produce.
>
> **After:** The agreements were assembled, because the author gathered the lineages and chose them for the very property their agreement later displayed, which is exactly what the selection caveat covers. The refusals were not assembled, because each of them arrived against the interest of the person doing the gathering, and a set of lineages curated to show participation cannot have been curated to produce objections to the book.

### Fault 2 — the coinage (prose register rule 10)

**What it is.** A word the pipeline invented, used as though the reader already holds it. The author wrote the book these terms describe; he did not write the terms.

**How to find it.** Apply the test the prose register states in place: **a word that is neither the book's own vocabulary nor plain English is the pipeline's.** The glossary below holds the ones found so far, and it is not a closed list — the fault generates new coinages faster than any list catches them.

**How to repair it.** Unfold the word in the sentence where it stands, or replace it with plain words. In a reply to the author, replacement is absolute.

> **Before:** derived from the chairs' own cases and untested
>
> **After:** derived from the thinkers' own cases and untested

### The glossary

| Coinage | Write instead |
|---|---|
| chair, chairs, a seated chair | the thinker, the thinkers, a thinker seated in the book's company |
| seat, seating (as verbs) | keep "seated" only where the sentence has already said it means placed in the book's company |
| the bench | the evaluated thinkers |
| shelf, shelves, an empty shelf, stocked | name the material itself: "the material a drafting session would have", "nobody has been evaluated to argue against it" |
| the sort | the sorting of the book's thinkers, computed by `scripts/queries/lineage-sort.sh` |
| load, the load axis | what a thinker carries — whether the book's argument depends on them, or they are company |
| load-bearing | the book's argument depends on it, and say which argument |
| privated | complete but incomplete in a stated way, and name the way |
| the grid, the mesh grid | on first use in a file: the mesh grid, a document the author supplied (`provenance/the mesh grid.pdf`) that sorts the book's thinkers by what each carries and where each got their epistemics |
| limb (of a claim) | the part of the claim that rests on X |
| the counterfeit catalogue | the catalogue of documented ways a felt sense of truth can be counterfeited |
| concordance row | a row in the per-chapter comparison at `ops/chapter concordance.md` |
| the torch | the live question |
| the census | the count across the book's thinkers |
| hole, flank, cell | name the specific absence or the specific side |
| the weave | the reconciliation of the sibling generative round's merge (pull request 12, 2026-08-08) — give the referent and date at first use in a file |
| the sparsest seam | the pair of graph regions sharing the fewest stated relations — name the two regions |
| the bench (reading-queue sense: "the panel bench") | the readings the forest panel proposed, adopted as tier 6 |
| stocked (of a letter or concern) | the material is assembled; say what is assembled |
| wound (as in "the one-chair wound") | the solitary-reader problem: the book's deepest claim concerns two people while a book is read by one |

Two vocabularies are **not** coinages and must survive untouched: the book's own words (the Second Chair, the Stance, the Third Entity, the Gatekeeper, the Gatekeeper's bow, molecule, primitive, the arc, madhyamā, aletheia), and source anchors (`abridged ch6`, `atlas §IV`, `poems #5`, `first-telling: the problem`, `Gendlin 1964, fn. 13`). Replacing either is a content edit and breaks the one law.

When the pass finds a coinage the glossary does not hold, repair it in place and **add the row to this table in the same commit.** The table is the skill's memory, and a coinage repaired without being recorded returns in the next round.

### Fault 3 — the bare reference (prose register rule 7)

**What it is.** A wiki link or file path standing where content belongs, so the sentence points instead of saying. Its commonest form is a link gloss that names the target's category rather than its content.

**How to find it.** Apply the strike-the-links test from rule 12: strike every `[[link]]` and every file path out of the paragraph and read what remains. If it still asserts what it asserted, the paragraph was saying; if it collapses into relations among unnamed things, it was pointing. `scripts/queries/strike-links.sh` ranks the paragraphs thinnest by this measure, and its output is a list of candidates to cold-read rather than a list of verdicts.

**How to repair it.** Make the claim in the sentence, then attach the reference. One clause of the target's actual content travels with every pointer — not zero, and not a recapitulation of the whole target.

> **Before:** — the primary-sourced limb
>
> **After:** — the 1964 footnote listing sheer emotion, the circumstantial orbit, the explanatory orbit, and self-engineering as inward attention that is not focusing, which is the part of this convergence read in Gendlin's own paper

### Fault 4 — the figure (prose register rule 9)

**What it is.** A figure of speech standing outside quotation marks and carrying a claim. It has four recorded forms: the load-bearing metaphor, the mirrored pair that makes a reader hold one sentence and map a second onto it, the ending compressed to be quotable rather than clear, and self-narration, which is prose announcing its own moves before making them.

**How to find it.** Read every sentence and ask whether a reader has to translate before receiving anything. Watch the paragraph closes again, where quotable endings live. The figures this vault has actually produced: the wound, the blade, the seam, the collision, the doorway, the front door, the koan, worn as armor, priced long, the vehicle, the poles of a fork, the headwaters, the arithmetic of a count, an inspection stamp of a kind, neither cell of the fight is empty.

**How to repair it.** State the point in the sentence's own subject and verb, near the front, with one hard idea per sentence and a concrete noun wherever one exists. If the phrase belongs to the corpus or to a thinker, keep it — inside quotation marks, with its anchor — and say in plain words what it means.

> **Before:** Location survived the rewrite; the space it referred to changed.
>
> **After:** In the mythic operating system edition the voice states on every page where the reader is physically standing — outside, at the porch, barely inside, in the depth — so that a reader who cannot yet say what the book is doing still knows their position in it. The executed draft drops the house and tells the reader instead where they stand in the argument: what has been established so far, and what this unit adds to it.

### Fault 5 — the unexpanded abstract noun (prose register rule 8)

**What it is.** An abstract noun standing for something specific — the finding, the move, the pattern, the mechanism, the pressure, the trade, the bridge, the standing — where the sentence should name the thing rather than its category.

**How to find it.** Check consequence-sentences first, the sentences that say what a finding means, because the vault's record shows abstraction concentrates exactly where a meaning is stated. A sentence of the form "the X is the finding" is almost always this fault.

**How to repair it.** Name the thing.

> **Before:** Neither parent note previously linked the other; the collision is the finding.
>
> **After:** Neither of the two notes previously linked the other, and what this note adds is the statement that they disagree.

### Fault 6 — the opaque name on a reference surface (vocabulary policy; naming and epistemic humility)

**What it is.** A filename, a YAML value, a folder name, or a heading built out of a coinage or a corpus figure. The reference surface is where a reader who holds no context arrives first, and the vocabulary policy requires plain terms there.

**How to find it.** Read every filename in scope and every heading as a stranger would. Two questions decide it: does the name lead with a word the pipeline invented, and is one of the corpus's figures carrying this sentence alone? Either answer of yes is the fault. Remember the exemptions in `naming and epistemic humility.md` — an image-category claim takes the figure as its subject legitimately, and so does `notes/figure glossary.md`.

**How to repair it.** Rename, and follow the protocol in Step 3 exactly.

> **Before:** `notes/chairs that agree on nothing else agree that the formulation can be the resistance.md`
>
> **After:** `notes/thinkers who agree on nothing else agree that a formulation can be the resistance.md`

### Fault 7 — the citation with no address (`templates/claim-note.md`)

**What it is.** A `sources:` entry that names no location. The template's rule is explicit: "Every entry carries a location; a bare title with no location is not a citation."

**How to find it.** Read every `sources:` array in scope and ask of each entry where a reader would go. Entries of the shape "derived positions across four evaluations (quoted in body)" fail, because they name a count rather than a place.

**How to repair it.** Name the actual notes or files the body quotes, and confirm each one exists before writing it in. Never invent a page number to satisfy the rule; an honest note-level address beats a fabricated page-level one.

> **Before:** `sources: ["derived positions across four evaluations (quoted in body)"]`
>
> **After:** `sources: ["Gendlin 1964, fn. 13 (the explanatory orbit)", "the interlocutor notes for joe hudson, tony robbins, carl rogers, and wilhelm reich (quoted in body)"]`

### The exemptions — what a recompose pass must never touch

Read this list before every run and treat it as the boundary of the work.

- **Direct quotations, byte for byte**, including their punctuation. Moving a comma inside quotation marks is a misquotation. When a repair needs different punctuation, restructure the sentence around the quote instead.
- **Source anchors**, which are coordinates in a document rather than prose.
- **`category:`, `topics:`, `status:`, `state:`, `privation:`, and `supports:`.** A treatment recorded in `treatment:` may have a coinage replaced with plain words, and what the treatment proposes may not change; a resolution is the author's act and never a session's.
- **The set of wiki links.** Do not add links and do not remove them. Repairing a gloss is prose work and needs no new link.
- **Titles and `# headings`**, except under Step 3.
- **What any claim asserts, and what evidence stands behind it.**

`description:` is prose and is in scope. Keep it a complete sentence adding information beyond the title, under 220 characters, and — this one has bitten the vault before — keep it wrapped in double quotes whenever it contains a colon, or the frontmatter stops parsing as YAML.

## Step 3 — the rename protocol

A rename is the only structural change this pass is allowed to make, it is warranted only by Fault 6, and it must be complete in one commit.

1. `git mv "notes/<old>.md" "notes/<new>.md"`
2. Rewrite every inbound reference across the whole vault, not only the files in scope:
   ```bash
   grep -rlZ "<old title>" --include=*.md . | xargs -0 sed -i 's/<old title>/<new title>/g'
   ```
3. Rewrite the `# heading` inside the renamed file to match the new filename, since the filename is the claim.
4. Confirm zero unresolved links with gate 4 in Step 5.
5. Name the rename in the report, quote the old title and the new one, and say plainly that the author can have the old title back. A title is close to the author's own work, and a session that renames one silently has overstepped.

## Step 4 — fan-out, when the scope is larger than one context

Above roughly a dozen files, run the repair through subagents. Below that, do it inline; briefing costs more than the work.

1. **Write one shared brief to the scratchpad** and give every agent the same path. The brief carries the prose register's rules, the quality clause, the glossary, the exemptions, and the before-and-after specimens from Step 2. Agents that receive prose instructions written fresh each time enforce different standards from each other, and the vault then has to reconcile them.
2. **Give each agent a disjoint list of files** and tell it to touch nothing else. Two agents in one file produce lost edits, and the auto-commit hook will happily commit the loss.
3. **Group the files by subject** — the draft's craft, the poems, the company of thinkers, the corpus's doctrine — so each agent holds coherent context and its glosses agree with each other.
4. **Name the faults you already found in that agent's specific files.** A brief that says "apply the register" produces a lighter pass than one that says "this note calls a thinker a chair four times and closes two paragraphs on mirrored pairs."
5. **Require the agent to report** which files it changed, its three or four most important repairs, and anything it believed it should not fix on its own authority. That last question is where the content problems in Step 6 come from.
6. **Recompose every report before filing any of it.** The prose register holds that a subagent's report is raw material and never copy. This applies to the report this skill's own fan-out produces, and forgetting it here would be the skill re-committing the fault it exists to repair.

## Step 5 — verification, six gates

All six run at the end of every pass. Report each one's result, including the ones that pass.

```bash
# every note, archive record and observation parses, with the cross-field
# rules and the 220-character description limit holding
bash scripts/queries/frontmatter-parse.sh
```

4. **Zero unresolved wiki links.** Index `notes/`, `ops/`, `archive/` and `provenance/` together — a link target may legitimately be an archive record or a methodology file rather than a claim, and a checker that indexes only `notes/` reports two dozen false failures.
5. **Zero notes missing from a topic map.** Every claim appears in at least one map's claim list, and a rename that missed an inbound reference shows up here first.
6. **Substance preserved.** Diff each changed file against its pre-pass state and confirm that every quoted span and every source anchor is byte-identical, that the set of wiki links is identical in membership and count, and that `category:`, `topics:`, `status:`, `state:` and `supports:` are unchanged. This is the gate that enforces the one law, and it is the only one that cannot be skipped.

## Step 6 — the content questions this pass must not fix

A register pass reads more carefully than any pass before it, so it finds content problems. It fixes none of them.

When the pass finds a claim that contradicts itself, a reference pointing at something that is not there, a count with no evidence behind it, a quotation with no anchor, or a name nothing in the vault defines: **leave the sentence exactly as written**, add the question to `ops/goals.md` as a numbered thread with the note named and the problem stated in one or two sentences, and put it in the report. The reason is the vault's standing rule that resolving is the author's act, and the practical reason is that a pass which quietly repairs content cannot be trusted to have left the rest alone.

The run of 2026-08-06 surfaced five in one pass over thirty-eight notes, which is the rate to expect.

## Step 7 — persist

- **`ops/completed.md`** — one dated entry, newest day first, naming what changed and pointing at the files by path. The convention the file states: a finished thing the record cannot point at is invisible to the next session.
- **`ops/goals.md`** — the content questions from Step 6.
- **`ops/observations/`** — any friction the pass hit, with `severity` and `status: open`. The first run logged the pre-write gate blocking three well-formed sentences.
- **`ops/register violations.md`** — when the author flagged a specific sentence, record it in the same turn: the sentence quoted, the date, and which rule it broke. The log exists so the next correction has an address in the author's own words.
- **`ops/orientation.md`** — only if the pass moved the center, which it usually has not.

## The report to the author

Written under `ops/methodology/reporting to the author.md`, which means the register above applies to the report itself, plus one addition: give a vault-internal term its referent before using it as a handle, state what produced a finding and what was inferred rather than found, and state the strength of the evidence beside any recommendation.

Report, in this order:

1. **What the standard says**, quoted from the directive files, so he can check the pass against the rule rather than against a session's taste.
2. **What was wrong**, with two or three real specimens quoted from the prose as it stood.
3. **What changed**, by category of fault, with one before-and-after pair.
4. **What did not change** — the one law, stated plainly.
5. **Renames**, quoted old and new, with the offer to revert.
6. **The content questions**, numbered, each naming its note.
7. **Verification**, all six gates with their results.
8. **Anything left undone**, and why.

## Anti-shortcut warning

Before reporting a recompose pass complete, all of the following must be true. A pass that satisfies four of them is not a pass that satisfies five.

1. **Every file in the Step 1 scope was read whole and reported on**, including files that needed no repair. Silence about a file reads as "clean" and must be earned.
2. **All seven faults were worked on every file.** Fixing fragments and stopping is the commonest half-pass, because fragments are the only fault a script finds.
3. **The strike-the-links test was actually run** on the link-heavy paragraphs, by striking them and reading what remains. Reading a gloss and judging it "fine" is not the test.
4. **All six verification gates ran**, and gate 6 — substance preserved — ran on every changed file rather than a sample.
5. **Every content problem found was recorded and none was fixed.**
6. **Every file the pass wrote was reread whole, as the reader it will actually meet** — the author, or a later session holding none of this one's context — before it was saved. This is the prose register's reread rule, and it is the only gate that catches what the other faults and every script miss. There is no internal register: an archive record and a reply to him are held to the same standard, and the flagged sentence that produced line 7 was written into an archive file while every guard aimed at replies.

Do not report a pass as complete after checking the easy faults. The faults the author actually flagged are the figure, the bare reference, and the unexpanded abstract noun, and no query finds those; they are caught only by rereading each sentence as the reader it will meet.

## Recorded failure modes

- **Rewriting a whole file when only its added lines were in scope.** This buries the repair in a diff nobody can review and re-authors prose the author never complained about. Step 1 exists because of it.
- **Repairing a coinage by substituting a synonym for it.** The record has one specimen: a session replaced the classification phrase "the pattern this belongs to" mechanically and produced "the finding this belongs to, as its case of X," which is the same gesture in a new string. The repair is to state the content, not to swap the word.
- **Filing a subagent's report as written.** The reports read fluently and are written in the subagent's register rather than the vault's, which is exactly how drifted prose enters a file that a pass has just cleaned.
- **Trusting a whole-file tripwire scan.** Scanning files rather than the diff reports pre-existing lines outside the pass's scope, and a session that tries to clear them has silently widened its own remit.
