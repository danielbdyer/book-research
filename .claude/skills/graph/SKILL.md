---
name: graph
description: Interactive knowledge graph analysis. Routes natural language questions to graph scripts, interprets results in domain vocabulary, and suggests concrete actions. Triggers on "/graph", "/graph health", "/graph triangles", "find synthesis opportunities", "graph analysis".
version: "1.0"
generated_from: "arscontexta-v1.6"
user-invocable: true
context: fork
model: sonnet
allowed-tools: Read, Grep, Glob, Bash
argument-hint: "[operation] [target] — operations: health, triangles, bridges, clusters, hubs, siblings, forward, backward, query"
---

**THIS VAULT'S GRAPH TOOLS.** Notes carry `category:` (not `type:`, except maps' `type: moc`), a `sources:` flow array of anchors (not `source:`), and `status: live|treated|resolved` on tensions only; a map lists its members under a "Claims in this map" section, never "Core Ideas". The graph queries run through the vault's own scripts in `scripts/queries/` rather than any `ops/scripts/graph/`: `clusters.sh` reports the graph's regions, `unconnected-claims.sh` finds orphans and checks topic-map membership, `strike-links.sh` ranks link-thin paragraphs, and `frontmatter-parse.sh` runs the schema and cross-field checks. The operations without a standing script — triangles, bridges, hubs, and n-hop traversal — run inline with `rg` over the wiki links and the `category:`, `sources:`, and `topics:` fields. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
