#!/bin/bash
# Prints a census of the vault to standard output: one surface showing what
# propositions the vault currently holds, ranked, so that "what is emerging?"
# costs one command rather than thirteen topic maps and a directory listing.
#
# Added 2026-08-08 on the author's observation that the vault holds many notes
# and few roll-ups — that seeing the overarching shape of the material would
# otherwise mean parsing everything by hand. The committed roll-up this once
# wrote, ops/outline.md, was retired 2026-08-09 with the other standing
# self-measurement instruments; the script now only prints.
#
# What it ranks by, and why. Every claim's TITLE is a complete proposition, so
# a list of titles is already a list of assertions; the only question is which
# assertions to show first. The rank is in-degree — how many other claims link
# TO a note — because that counts the propositions the rest of the graph leans
# on, computed from glosses sessions wrote for other reasons rather than from
# anybody's judgment about importance. Ties break alphabetically.
#
# What it deliberately does not do. It does not assign a claim to a chapter, to
# a part, or to any unit of the manuscript, and it does not score a unit for
# readiness. A session built a rubric keyed to the corpus's fifteen named units
# on 2026-08-05 and the author removed it the same hour, on the ground that
# those are prior drafts' chapter names he has not reified — "I'd rather let
# them emerge organically" (`ops/decisions.md`). The unit panel below reports
# only which claims CITE a unit's locators, which is a provenance lookup and
# not a placement; placement stays the author's act and `supports:` stays
# dormant.
#
# The regions panel needs networkx (scripts/bootstrap.sh installs it) and is
# skipped with a note when the dependency is absent; every other panel runs on
# the standard library alone, so a fresh container still gets an outline.
#
# Usage: scripts/queries/outline.sh          print the census to stdout
# Run from anywhere.
cd "$(dirname "$0")/../.." || exit 1

python3 - <<'PY'
import re, sys, pathlib, collections, subprocess, datetime

TOP = 8  # propositions shown per grouping; the full list is one link away, in the map itself

# ── Read the graph ────────────────────────────────────────────────────────
# Frontmatter is parsed with regex rather than yaml so that this script has no
# third-party dependency: a fresh container must still be able to produce an
# outline. The fields read here are all single-line scalars or single-line
# arrays, which is the shape every template writes.
notes = {}
for p in sorted(pathlib.Path("notes").glob("*.md")):
    text = p.read_text()
    m = re.match(r"^---\n(.*?)\n---\n", text, re.S)
    fm = m.group(1) if m else ""

    def field(name):
        g = re.search(rf"^{name}:\s*(.+)$", fm, re.M)
        return g.group(1).strip().strip("\"'") if g else None

    def array(name):
        # Greedy to the last bracket on the line, not the first: a topics array
        # holds wiki links, so a non-greedy match ends inside "[[recognition]]"
        # and every topic silently parses as empty.
        g = re.search(rf"^{name}:\s*\[(.*)\]\s*$", fm, re.M)
        return [x for x in re.findall(r"['\"]([^'\"]+)['\"]", g.group(1))] if g else []

    notes[p.stem] = {
        "type": field("type"),
        "category": field("category"),
        "state": field("state"),
        "status": field("status"),
        "load": field("load"),
        "seat": field("seat"),
        "description": field("description") or "",
        "topics": [re.sub(r"[\[\]]", "", t).strip() for t in array("topics")],
        "sources": array("sources"),
        "links": {l.strip() for l in re.findall(r"\[\[([^\]|#]+)", text)},
    }

maps = {k for k, v in notes.items() if v["type"] == "moc"}
glossary = {"figure glossary"} & set(notes)
claims = {k for k in notes if k not in maps and k not in glossary}

indegree = collections.Counter()
for k in claims:
    for l in notes[k]["links"]:
        if l in claims and l != k:
            indegree[l] += 1

def rank(names):
    return sorted(names, key=lambda n: (-indegree[n], n))

MARK = {"tension": "tension", "interlocutor": "chair", "image": "image",
        "isomorph": "isomorph", "craft": "craft", "practice": "practice",
        "structure": "structure", "open-question": "open question", "claim": ""}

def line(n):
    """One outline entry: the proposition, then what kind of note carries it."""
    v = notes[n]
    tags = [t for t in (MARK.get(v["category"], v["category"] or ""),) if t]
    if v["state"] in ("nascent", "privated"):
        tags.append(v["state"])
    if v["category"] == "tension" and v["status"]:
        tags.append(v["status"])
    if v["category"] == "interlocutor" and v["load"]:
        tags.append(v["load"])
    suffix = f"  ({', '.join(tags)})" if tags else ""
    return f"- [[{n}]]{suffix}"

L = []          # output lines
def w(s=""):
    L.append(s)

today = datetime.date.today().isoformat()
w(f"*Census computed {today} by `scripts/queries/outline.sh`. Every entry below is a note title, "
  f"and a note title in this vault is a complete proposition, so each list reads as a list of "
  f"assertions the vault currently holds. Within each grouping the order is how many other claims "
  f"link to the note, so the propositions the rest of the graph leans on come first; each grouping "
  f"shows its top {TOP} and states its full count, and the full list lives in the topic map named "
  f"in the heading.*")
w()

# ── Panel: the census ─────────────────────────────────────────────────────
cat_counts = collections.Counter(notes[n]["category"] for n in claims)
state_counts = collections.Counter(notes[n]["state"] for n in claims if notes[n]["state"])
live = [n for n in claims if notes[n]["category"] == "tension" and notes[n]["status"] == "live"]
treated = [n for n in claims if notes[n]["category"] == "tension" and notes[n]["status"] == "treated"]
edges = sum(indegree.values())

w("## What the vault holds")
w()
w(f"The graph carries **{len(claims)} notes beneath the maps** — claims, thinkers, tensions and "
  f"the rest — gathered by {len(maps) - 1} topic maps under `notes/index.md`, and joined to each "
  f"other by {edges} wiki links. By category: " +
  ", ".join(f"{v} {k}" for k, v in cat_counts.most_common() if k) + ".")
w()
w(f"By development state: " + ", ".join(f"{v} {k}" for k, v in state_counts.most_common()) +
  f"; the remaining {len(claims) - sum(state_counts.values())} carry no state field. "
  f"Tensions stand at {len(live)} live and {len(treated)} treated, and resolving one is the "
  f"author's act rather than a session's.")
w()

# ── Panel: the load-bearing propositions ──────────────────────────────────
w("## The propositions the graph leans on hardest")
w()
w("These are the twelve claims that the largest number of other claims link to, across the whole "
  "graph and irrespective of concern. A proposition arrives here because sessions kept needing it "
  "to state something else, which is evidence about the material rather than a judgment about the "
  "book.")
w()
for n in rank([c for c in claims if notes[c]["category"] != "interlocutor"])[:12]:
    w(f"- [[{n}]] — {indegree[n]} claims link to it")
w()

# ── Panel: by concern ─────────────────────────────────────────────────────
w("## The material by concern")
w()
w("One section per topic map, which is the vault's own division of the book's concerns. Every "
  "claim declares at least one map, so this panel reaches all of the material; a claim declaring "
  "two maps appears under both.")
w()
by_map = collections.defaultdict(list)
for n in claims:
    for t in notes[n]["topics"]:
        if t in maps:
            by_map[t].append(n)
DOCTRINE = ["recognition", "felt-shift", "relational-field", "answerability",
            "contraction-not-corruption", "container-anatomy"]
STRUCTURAL = ["interlocutors", "book-structure", "tensions", "research-frontier",
              "methods", "open-questions"]
for group, heading, gloss in (
    (DOCTRINE, "Doctrine", "the six masses the atlas's closing section resolves the field into, "
                           "listed by centrality rather than in the atlas's order"),
    (STRUCTURAL, "Structural", "the maps that gather the work about the book rather than the "
                               "book's own propositions"),
):
    w(f"### {heading} — {gloss}")
    w()
    for m in group:
        members = by_map.get(m, [])
        if not members:
            continue
        w(f"**[[{m}]]** — {len(members)} claims")
        w()
        for n in rank(members)[:TOP]:
            w(line(n))
        if len(members) > TOP:
            w(f"- *and {len(members) - TOP} more, listed in full at [[{m}]]*")
        w()
    orphan_maps = [m for m in by_map if m not in DOCTRINE + STRUCTURAL and m != "index"]
    if group is STRUCTURAL and orphan_maps:
        w(f"*Claims also declare {len(orphan_maps)} map(s) outside the standing twelve: " +
          ", ".join(f"`{m}`" for m in sorted(orphan_maps)) + ". A map outside the set is either a "
          "typo in a `topics:` array or a map added without the /rethink gate CLAUDE.md requires.*")
        w()

# ── Panel: the found regions ──────────────────────────────────────────────
w("## Where the material has actually clumped")
w()
w("The groupings below are computed rather than declared: claims are nodes, wiki links between "
  "them are edges, and the regions come from modularity maximization over that graph. A region "
  "found this way cannot be a table of contents in disguise, which is why the author asked for "
  "this measurement rather than a chapter-keyed one. Modularity is a heuristic and boundaries move "
  "between runs; **no region here is a unit of the book.**")
w()
try:
    import networkx as nx
    G = nx.Graph()
    G.add_nodes_from(claims)
    for k in claims:
        for l in notes[k]["links"]:
            if l in claims and l != k:
                G.add_edge(k, l)
    comms = sorted(nx.community.greedy_modularity_communities(G), key=len, reverse=True)
    for i, c in enumerate([c for c in comms if len(c) >= 4], 1):
        c = set(c)
        chairs = [n for n in c if notes[n]["category"] == "interlocutor"]
        tens = [n for n in c if notes[n]["category"] == "tension"]
        livec = [n for n in tens if notes[n]["status"] == "live"]
        priv = [n for n in c if notes[n]["state"] == "privated"]
        w(f"**Region {i} — {len(c)} notes**, of which {len(chairs)} are thinkers and {len(tens)} "
          f"are tensions ({len(livec)} live); {len(priv)} claims in it are privated, meaning "
          f"complete but incomplete in a named way, usually a reading not yet done.")
        w()
        for n in rank([x for x in c if notes[x]["category"] != "interlocutor"])[:TOP]:
            w(line(n))
        w()
except ImportError:
    w("*The regions panel is unavailable in this container: it needs networkx. Run "
      "`scripts/bootstrap.sh` to install it, then regenerate. Every other panel above and below "
      "was produced without it.*")
    w()

# ── Panel: what the corpus's own units cite ───────────────────────────────
w("## What the corpus's named units already have claims about")
w()
w("This panel is a provenance lookup and nothing more: for each named unit of the fifteen-unit "
  "arc, it counts the claims whose `sources:` anchors fall inside that unit's own locators in the "
  "drafts. A count here says the vault has extracted material from the passages where the corpus "
  "discusses that unit. **It does not say the claim belongs in that chapter.** The author has not "
  "reified these names as the book's units, and measuring anything against them is how they would "
  "get reified (`ops/decisions.md`, the 2026-08-05 row); the locator table this reads is "
  "`ops/chapter concordance.md`.")
w()
units = []
conc = pathlib.Path("ops/chapter concordance.md")
if conc.exists():
    for row in conc.read_text().splitlines():
        cells = [c.strip() for c in row.strip().strip("|").split("|")]
        if len(cells) != 8 or cells[0] in ("Named unit", "---") or set(cells[0]) <= set("- "):
            continue
        unit, ag, ab, mo = cells[0], cells[4], cells[5], cells[6]
        pats = []
        if re.match(r"ch\d+$", ag):
            pats.append(rf"arc-gloss:?\s*{ag}\b")
        if re.match(r"ch\d+$", ab):
            pats.append(rf"abridged:?\s*{ab}\b")
        g = re.match(r"(?:page|pages)\s*([\d.]+)", mo) or re.match(r"(ch\d+)", mo)
        if g:
            tok = g.group(1)
            pats.append(rf"mythic-os:.*\b(?:pages?\s*)?{re.escape(tok)}\b"
                        if not tok.startswith("ch") else rf"mythic-os:.*\b{tok}\b")
        if pats:
            units.append((unit, re.compile("|".join(pats))))

if units:
    w("| Named unit | Claims citing its locators | The ones most linked to |")
    w("|---|---|---|")
    for unit, rx in units:
        hits = [n for n in claims if any(rx.search(s) for s in notes[n]["sources"])]
        top = "; ".join(f"[[{n}]]" for n in rank(hits)[:2]) or "—"
        w(f"| {unit} | {len(hits)} | {top} |")
    w()
    anchored = {n for n in claims for unit, rx in units if any(rx.search(s) for s in notes[n]["sources"])}
    w(f"Across the whole graph {len(anchored)} of {len(claims)} claims carry an anchor precise "
      f"enough to land in one of these rows. The other {len(claims) - len(anchored)} — the "
      f"thinkers, the tensions, the record of the making, and the outward research — were not "
      f"extracted from a chapter and have no row to fall in, which is why this panel sits beneath "
      f"the concern and region panels rather than above them.")
    w()

# ── Panel: the frontier ───────────────────────────────────────────────────
w("## What is thin, and what is unfinished")
w()
nascent = rank([n for n in claims if notes[n]["state"] == "nascent"])
privated = rank([n for n in claims if notes[n]["state"] == "privated"])
unmapped = sorted(n for n in claims if not [t for t in notes[n]["topics"] if t in maps])
isolated = sorted(n for n in claims
                  if indegree[n] == 0 and not [l for l in notes[n]["links"] if l in claims])

w(f"**{len(nascent)} nascent** — the proposition is stated and not yet substantiated; each is "
  f"waiting on writing rather than on a reading. Fill or decline, per "
  f"`scripts/queries/nascent-stubs.sh`.")
w()
for n in nascent[:TOP]:
    w(f"- [[{n}]]")
if len(nascent) > TOP:
    w(f"- *and {len(nascent) - TOP} more*")
w()
w(f"**{len(privated)} privated** — complete claims incomplete in a named way, almost all of them "
  f"waiting on a primary work being read. This is the count that condition 2 of "
  f"`ops/manuscript readiness.md` turns on, and the queue that closes it is "
  f"`ops/reading queue.md`.")
w()
for n in privated[:TOP]:
    v = notes[n]
    w(f"- [[{n}]]")
if len(privated) > TOP:
    w(f"- *and {len(privated) - TOP} more*")
w()
w(f"**{len(live)} live tensions** — held open on purpose; the registry with each treatment under "
  f"trial is [[tensions]].")
w()
for n in rank(live)[:TOP]:
    w(f"- [[{n}]]")
if len(live) > TOP:
    w(f"- *and {len(live) - TOP} more*")
w()
if unmapped:
    w(f"**{len(unmapped)} claims declare no topic map**, which is the schema floor CLAUDE.md "
      f"states and a defect rather than a backlog: " + ", ".join(f"[[{n}]]" for n in unmapped) + ".")
    w()
if isolated:
    w(f"**{len(isolated)} claims neither link to another claim nor are linked to**, so they are "
      f"unreachable by following the graph and invisible to every panel that ranks by links: " +
      ", ".join(f"[[{n}]]" for n in isolated) + ".")
    w()

census = "\n".join(L)

# The committed roll-up ops/outline.md was retired 2026-08-09 with the other
# standing self-measurement instruments, so this script prints the census to
# standard output and writes nothing.
print(census)
sys.exit(0)
PY
