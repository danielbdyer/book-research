# Constellation dataset: notes and what could not be verified

The dataset is `constellation.json` in this folder. It holds 28 thinkers and 16 relations. A script checked every quotation against its cited file, and ripgrep repeated the check as a fixed-string search. All 28 quotations are character-exact substrings of the files named in `quote_src`. Every quotation is 25 words or fewer, every `parts` sentence is 15 words or fewer, and every source path exists. The repository was only read; `git status` is clean.

## How the dataset is shaped

- **Thinkers.** The set holds the 26 names requested (Maturana and Varela count as one dot) plus two the vault reads at their own text and that each add a documented lineage line. al-Junayd links to al-Qushayrī, and Bhartṛhari links to Abhinavagupta. No requested name was dropped.
- **One added field.** Each relation carries `"directed": true|false`. For lineage and possible influence, `from` is the earlier source. For an independent arrival the order of the pair means nothing. The Polanyi–Merleau-Ponty shared channel is undirected because its common ancestor, Gestalt psychology, is not on the chart. The Lewin→Erhard shared channel is directed because Lewin heads that channel.
- **`read`.** "own text" means the vault read the thinker's own words, usually in a published translation. "through a scholar" means the quotation comes through a secondary source quoting the thinker: Heidegger and Merleau-Ponty through the Stanford Encyclopedia, Polanyi through sources quoting *The Tacit Dimension*, Dōgen through the Sōtō Zen Text Project essay, Abhinavagupta through the Lakshmanjoo Academy, and al-Junayd through scholarship on Sufism. No thinker is "not yet".
- **Dates and places.** The vault mostly does not state these. They come from well-established general knowledge and should be checked before anything is published. Three need particular care. Śaṅkara's dates are disputed, so the label gives c. 700–750. Nāgārjuna's South Indian place is traditional only. Bhartṛhari's place is uncertain.

## What could not be verified, or needs a caveat

1. **Eckhart → Heidegger is dropped.** The vault holds the relation: Heidegger took *Gelassenheit* from Eckhart and named him (`notes/heidegger's letting and way descend from daoism…md`; `notes/john caputo.md`). Eckhart has no reading record and no interlocutor note, so he does not qualify as a dot.
2. **Buber's Zhuangzi → Heidegger is not drawn as a Buber→Heidegger line.** A line between them would read as Buber's own thought shaping Heidegger, and the vault does not claim that. The channel appears instead in the note on the Zhuangzi→Heidegger line (possible influence). Which passages Buber's 1910 selection contained, and therefore what Heidegger actually saw, remains unconfirmed; the vault says Herman's *I and Tao* would settle it.
3. **Plato → Heidegger rests on research-depth confirmation only.** The source is `archive/research — crossover cluster background.md`. Heidegger's Parmenides lectures (GA 54), the text where the link sits, are copyright-gated and unread in the vault.
4. **Rogers → Gendlin is an institutional parentage stated in `notes/carl rogers.md`.** The Wisconsin project volume (1967) is unread.
5. **Lewin → est is read at primary on the Lewin side only.** The chain from T-group to encounter movement to est is the vault's genealogy. The vault holds no Erhard text that names Lewin.
6. **Polanyi–Merleau-Ponty (shared Gestalt ancestry) rests on one line** in `archive/research — counterpoint round background.md`. No note develops it.
7. **Heidegger → Merleau-Ponty is a shared method rather than a single doctrine.** The vault says Merleau-Ponty "shares phenomenological method with Husserl and Heidegger" and then departs from Heidegger on the lived body.
8. **Nāgārjuna → Śaṅkara is documented contact with opposition.** Śaṅkara refutes the emptiness doctrine by name. The "crypto-Buddhist" charge that rivals made against Advaita is reported through Richard King and was aimed mainly at Gauḍapāda. The vault does not conclude that any influence occurred, so the line is typed as possible influence and nothing stronger.
9. **The Heidegger–Utpaladeva line stands for the whole recognition school.** The check in `archive/reading — reinhard may…md` found no channel from Heidegger to Kashmir Śaivism at all. The line is drawn once, to Utpaladeva, rather than three times.
10. **Some independence judgments were not drawn as lines.** The vault calls Polanyi, Maturana and Varela, Johnstone, Winnicott and Ignatius independent of the book's two founding traditions. Those are judgments about each thinker against the whole set, not checks between two named people, so they are not drawn. Only three pairs were explicitly checked for contact: Heidegger with the recognition school, with Wittgenstein (one 1929 remark, no line of descent), and with Buber.
11. **Some relations are not in the vault, so they are not drawn.** No Laozi→Zhuangzi lineage is recorded. Gendlin and McLaren have a recorded disagreement, not a lineage. Merleau-Ponty and Gendlin are called "one arrival by different disciplines", but that was never checked for contact. Varela's later phenomenological ties appear only through De Jaegher and Di Paolo.
12. **Three quotation choices carry a caveat.**
    - James's `parts` line (his test of an experience by its fruits) rests on *Varieties* (1902). His note quotes that book, but his reading record says it was not read at primary.
    - Śaṅkara's quotation is a sentence fragment ("is to remove the obstructions produced by ignorance", said of *neti neti*).
    - Heidegger's quotation is *Being and Time* §7 as a secondary source quotes the Macquarrie and Robinson translation.
13. **Two thinkers were read only in part.** Weil was read through a reproduction of the "Decreation" section, not the whole volume. McLaren was read through her own site and her Reading Guide, which quotes the 2010 book with page numbers; the book itself was not read.
14. **Three placements are judgment calls.**
    - Johnstone is placed in the Europe band because *Impro* draws on his Royal Court work in London, though he was teaching in Calgary when it appeared in 1979.
    - McLaren's place, "California", is not in the vault.
    - Erhard is plotted at 2010, the paper the vault read, although est began in 1971.
15. **The West Asia / Persia band is thin, with two dots.** Two other figures there have reading records but no relation to anyone in this set: Isaac Luria (through Vital, Safed) and Pseudo-Dionysius (Syria).

## Vault defects noticed while reading (not changed)

- `archive/reading — laozi, daodejing 11 and 28 (legge trans.).md` (2026-08-10) calls Daodejing ch. 11 an arrival "from a tradition with no contact with *Lichtung*". The later Daoism lineage finding (2026-08-30) supersedes this: it holds any pairing of *Lichtung* with Daoist emptiness as possibly influenced.
- `notes/michael polanyi.md` still says "no primary work has been read here", although the 2026-08-24 reading record exists.
- `notes/erhard and the book take different verbs from the same heideggerian object.md` has its heading and first two paragraphs duplicated.
- `archive/reading — brihadaranyaka upanishad 2.3.6 and shankara on neti neti.md` says Advaita had "no contact with either founding pole". The vault has not checked that against the recognition school, and it should be tested before anyone draws a Śaṅkara–Kashmir line as an independent arrival.
- `the-constellation.md` at the repository root is the vault's own lens file on the convergence of thinkers. Two reader reports in `prototypes/the book as a site — reader reports/` may also bear on this chart: "who noticed this too" and "the company".
