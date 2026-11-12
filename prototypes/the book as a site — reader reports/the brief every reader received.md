<!-- Kept as the record of what the six readers were told on 2026-11-12. The /tmp/… scratchpad paths below belonged to that session's container and no longer exist: the site capture they name is `accelerateinward.com as read (2026-11-12).md` in this folder, and each reader's output is the `reader report — …` file beside it. -->

# Common brief for every subagent (read this first)

## The task you are part of
The author of the book this repository researches (working titles *Firing on All Cylinders* / *Aletheia*) saw the site accelerateinward.com and asked: what would a site look like that is similar to it but built from the book research — "not a view layer but instead a new way of thinking about the book itself." The site's full information architecture, as read today, is at
/tmp/claude-0/-home-user-book-research/1d8b05a5-c418-5484-84b3-868833dec948/scratchpad/accin-ia.md — read it first.

Six subagents each take one region of that site and build its parallel from one region of the vault. The lead session then synthesizes all six into one prototype site and an information-architecture document. Your output is the raw material for one section of that prototype.

## The governing idea: a parallel is a turn, not a reskin
Do not translate the site's sections one-for-one into book vocabulary. For each organ of the site, ask what it DOES (sorts, ranks, recommends, evangelizes, sells, invites), then ask what the book's own law does with that function. Often the book's law forces the organ to turn: the site ranks theories by odds, and this vault forbids ranking convergences by evidential weight; the site says "different routes, same summit," and this vault holds that the corpus's zero-disagreement framing is an artifact of selection, so convergence is company, never corroboration. The turn is the finding. Where the book's version is the same as the site's, say so plainly; where it inverts, show the inversion and the vault law that forces it, with the path.

## The vault's law you must obey (CLAUDE.md at the repo root states it fully; read its "The center", "Posture", and "Writing a claim" sections)
- The book's center: the convergence of thinkers (independent arrivals, quoted with their refusals intact) and the lived practice. The system vocabulary (the Generative Triad, twelve primitives, molecules, three loops) is scaffolding — never organize anything by it.
- The governing orientation (ops/orientation.md): the book is auxiliary to a sovereign reader, never an authority or certifier of the reader's recognition. The work is now two books; Book I, the facilitator book, is written first.
- Convergence is company, not proof. Never rank thinkers or convergences by evidential weight. Postulate no efficacy.
- Every correspondence shows both halves: quote both sides or name the missing side with a page-level address. NEVER quote from memory — quote only text you have read in a file in this repository, and give its path.
- The primary material governs the corpus: a thinker's own work (the reading records in archive/) outranks the corpus's paraphrase; the poems (sources/the poems.pdf; extracted text at .corpus/ once scripts/bootstrap.sh finishes — it is running now; if .corpus/ is still empty, use `python3 -c` with pypdf on the PDF) sit beneath the corpus.
- Names are candidates: state the concern in plain terms and attribute the corpus's figure name once ("what the corpus calls the Gatekeeper").
- Register: plain research diction. Named subjects, finite verbs, no fragments standing in for claims, no figures of speech outside quotation marks, no vault-internal coinage without its plain referent (ops/plain-language lexicon.md lists them). The prototype will be read by the author, who wrote the book and not the vault's jargon.
- Use word-bounded search on the corpus: `rg -w`.
- Release and readership are the author's lane; a public site is his decision. Treat this as a thinking prototype, not a launch plan.

## Constraints
- READ-ONLY in the repository. Do not edit, create, or commit any file under /home/user/book-research.
- Write your full output to /tmp/claude-0/-home-user-book-research/1d8b05a5-c418-5484-84b3-868833dec948/scratchpad/agents/<your-area>.md AND return the same full text as your final message.
- Counts must be computed from the repository (say how), never estimated.
- Length: 1,800–3,000 words. Dense, not padded.

## Output format (use these four headings exactly)
### 1. The turn
One to three paragraphs: what the site's section does, what the book's version does instead, which vault law forces any inversion (with paths), and a proposed section name and one-sentence promise for the page.

### 2. Page content
The section written out as page-ready content: headings, stat lines, cards. Each card has a title (a complete sentence or a plain noun phrase), a body of one to three sentences, and a source line (file path plus locator, e.g. `archive/reading — gendlin, a theory of personality change (1964).md` or `atlas §IV` or `poems #5`). Quotations marked and exact. Provide enough cards to fill a real page (typically 6–15), choosing by what a reader of the book would need, not by volume in the corpus.

### 3. What this parallel revealed about the book
Two to four findings that a session drafting the book could actually use — things you only saw because you held the site's structure against the vault's. For each: the finding, the evidence (paths), and what you found versus what you inferred.

### 4. Cautions
Where your section risks breaking the vault's law, overweighting the system, or displacing the writing; anything you could not verify.
