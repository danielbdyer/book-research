#!/bin/bash
# Finds the graph's own clusters and reports each one's composition. Added
# 2026-08-05 on the author's instruction, to answer the question that
# `ops/manuscript readiness.md` says must be answered before readiness can be
# measured against anything: where do several claims, several chairs and a live
# tension already commingle around one thesis?
#
# Why this and not the topic maps. A topic map is a declared gathering — a
# session decided what belongs in it. A cluster here is found: it is whatever
# the link structure already does, computed from the glosses sessions wrote for
# other reasons. A cluster that sits inside one map is that map's concern under
# another name and is reported as such. A cluster that CROSSES maps is the
# interesting case, because it is a grouping the vault's own vocabulary has no
# name for.
#
# Method, stated so the output can be argued with: notes are nodes, wiki links
# between non-map notes are undirected edges, and communities come from
# networkx's greedy modularity maximization. Modularity is a heuristic — run it
# on a different day with a different graph and the boundaries move. Treat a
# cluster as a proposal about where the mass is, never as a unit of the book.
#
# Requires networkx (pip install networkx). Run from anywhere.
cd "$(dirname "$0")/../.." || exit 1

python3 - <<'PY'
import re, pathlib, sys
try:
    import networkx as nx
    import yaml
except ImportError as e:
    print(f"  Missing dependency ({e.name}). Run: pip install networkx pyyaml")
    sys.exit(0)

notes = {}
for p in sorted(pathlib.Path("notes").glob("*.md")):
    t = p.read_text()
    m = re.match(r"^---\n(.*?)\n---\n", t, re.S)
    fm = {}
    if m:
        try:
            fm = yaml.safe_load(m.group(1)) or {}
        except Exception:
            fm = {}
    if not isinstance(fm, dict):
        fm = {}
    notes[p.stem] = {
        "type": fm.get("type"),
        "category": fm.get("category"),
        "status": fm.get("status"),
        "state": fm.get("state"),
        "topics": [re.sub(r"[\[\]]", "", str(x)).strip() for x in (fm.get("topics") or [])],
        "links": {l.strip() for l in re.findall(r"\[\[([^\]|#]+)", t)},
    }

maps = {k for k, v in notes.items() if v["type"] == "moc"} | {"figure glossary"}
claims = {k for k in notes if k not in maps}

G = nx.Graph()
G.add_nodes_from(claims)
for k in claims:
    for l in notes[k]["links"]:
        if l in claims and l != k:
            G.add_edge(k, l)

comms = sorted(nx.community.greedy_modularity_communities(G), key=len, reverse=True)
print(f"{len(claims)} claims, {G.number_of_edges()} edges, {len(comms)} clusters.\n")

for i, c in enumerate(comms, 1):
    c = set(c)
    if len(c) < 4:
        continue
    sub = G.subgraph(c)
    chairs = sorted(n for n in c if notes[n]["category"] == "interlocutor")
    tensions = sorted(n for n in c if notes[n]["category"] == "tension")
    live = [n for n in tensions if notes[n]["status"] == "live"]
    topic_counts = {}
    for n in c:
        for t in notes[n]["topics"]:
            topic_counts[t] = topic_counts.get(t, 0) + 1
    tops = sorted(topic_counts.items(), key=lambda kv: -kv[1])
    spread = sum(1 for _, v in tops if v >= 3)
    density = nx.density(sub)
    hubs = sorted(sub.degree, key=lambda kv: -kv[1])[:5]
    print(f"── Cluster {i}: {len(c)} notes, {sub.number_of_edges()} internal edges, density {density:.2f}")
    print(f"   maps ≥3 members: {spread}  |  " + ", ".join(f"{t}({v})" for t, v in tops[:4]))
    print(f"   chairs: {len(chairs)}  tensions: {len(tensions)} ({len(live)} live)")
    print(f"   hubs: " + "; ".join(f"{n} [{d}]" for n, d in hubs))
    if tensions:
        print(f"   tension notes: " + "; ".join(tensions))
    print()
PY
