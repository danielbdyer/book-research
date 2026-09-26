---
description: "Checking a quotation against the whole vault confirms that the words exist somewhere, not that the named speaker said them, because the vault holds paraphrases and other voices beside the sources."
date: 2026-09-26
severity: friction
status: open
---

# a quotation found in the vault can still be a paraphrase or another speaker's words

On 2026-09-26 a session wrote six documents answering the author's request for a catalog of what the books could take up (`catalog-of-meaning-2026-09-26.md` and its five companions). Before saving them it checked every quotation with a script that searched the transcript, the extracted corpus, the poems, the reflection, and the vault's own files. Every quotation was found. Three of them were still wrong about the speaker, and each was caught only by reading the source the quotation was attributed to.

## The three cases

- **A paraphrase quoted as the author's words.** The drafts quoted the author's conditions for personal material as "own it, do it delicately, and do it in honor of what is becoming." That wording is the vault's paraphrase: `CLAUDE.md` and `system-and-vault-collation-2026-09-25.md` carry it without quotation marks, and the F4 reader's report puts it in quotation marks. The author's own sentence, in `ops/methodology/personal provenance.md`, is "All I ask is that you own it and do it delicately and in a way that honors what is becoming through it." The script found the paraphrase and reported the quotation as present.
- **An option a session offered, quoted as the author's phrase.** The drafts called "the world companions" the author's phrase from his reflection. It sits in the section "In his words" of `reflections/on recognition (2026-08-24).md`, but under "His clarifications," where he chose it from readings a session offered. The choice is his, and the wording came from a session.
- **The model's sentences named as the author's own language.** `ops/scaffold.md`, line 220, calls three phrases "The author's own verification language." Two of them, "What survives movement?" (transcript line 6872) and "Nothing becomes part of the author's philosophy merely because the AI said it" (line 14414), are inside the model's responses. A search of the vault finds the scaffold's attribution and repeats it.

## What it implies

A check that a quotation exists somewhere in the vault shows only that the words were not invented. It cannot show whose words they are, because the vault stores paraphrases, sessions' options, and the model's sentences beside the author's own. A check of the speaker needs the speaker's own source: for the transcript, the author's "## Prompt:" blocks as against the model's "## Response:" blocks; for the reflection, the author's paragraphs as against the options and the commentary beneath them; for a directive, the verbatim block in the methodology file. The session that found these cases corrected its own documents and changed nothing else. Whether the scaffold's line and the F4 report's quotation marks should be corrected is left for a later session or the author, and a script that checks the speaker block of every transcript quotation is one possible tool, not built here.
