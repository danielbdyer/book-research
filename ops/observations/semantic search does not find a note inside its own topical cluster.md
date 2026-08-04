---
description: "Querying qmd vsearch with a note's own description returns its topical neighbours and not the note: inside a dense cluster the distinctive proper names are washed out by the shared vocabulary."
date: 2026-08-03
severity: friction
status: open
---

# semantic search does not find a note inside its own topical cluster

/verify's retrieval test asks whether a note's description enables an agent to find it by meaning: query `qmd vsearch` with the description text and check where the note ranks. Run over the seventeen claims added 2026-08-03, five of them did not appear in the top ten of their own description, and one — `notes/isabelle ratie.md` — did not appear in the top twelve.

The results are not noise. Querying with that note's description returned, in order, `the tradition the book owes most has no chair in its company`, `aletheia and pratyabhijna converge on truth as un-forgetting`, `the kashmir shaiva tradition would decline four of the book's deepest moves`, the crossover archive record, and the `recognition` map — every one of them squarely on the description's topic, and none of them the note the description belongs to. Running the same text through `qmd query --no-rerank` gave the same shape. But `qmd search "Le Soi et l'Autre"` — keyword, the title of her book — returned the note first.

So the cause is not description quality. All five notes scored 4 or 5 on the cold-read prediction test, and each names its thinker, their work, and what they carry. The cause is that a description of an interlocutor in this vault is mostly about the tradition, recognition, and the convergence, because that is what the thinker is being seated for — and a dozen doctrinal claims say those same things at greater length. The one or two tokens that identify the note uniquely, a surname and a book title, are two hundred characters of shared vocabulary away from mattering to a vector.

The operational consequence is specific: a /reflect or /reweave pass that reaches for related material with `vsearch` will keep landing on the doctrinal claims and will not reach the chairs. Interlocutor notes are found by name, which means keyword or hybrid search on the surname or the work, not by semantic similarity to what they argue. Worth deciding at /rethink: whether the skills that use semantic search should say this, and whether /verify's retrieval test should use a different query for a note whose subject is a person — since as run today it reports a failure the description cannot fix.
