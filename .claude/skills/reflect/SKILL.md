---
name: reflect
description: Find connections between notes and update MOCs. Requires semantic judgment to identify genuine relationships. Use after /reduce creates notes, when exploring connections, or when a topic needs synthesis. Triggers on "/reflect", "/reflect [note]", "find connections", "update MOCs", "connect these notes".
user-invocable: true
allowed-tools: Read, Write, Edit, Grep, Glob, Bash, mcp__qmd__search, mcp__qmd__vector_search, mcp__qmd__deep_search, mcp__qmd__status
context: fork
---

**THIS VAULT'S MAP ANATOMY (overrides the stock map structure below).** A topic map here has: an intro stating the concern; a 'Claims in this map' list where every entry carries a complete-clause gloss stating the target's content (never a category label or a fragment); optional concern-named sections; an 'Adjacent maps' paragraph; and a closing 'What remains' naming the open work. There are no 'Core Ideas', 'Tensions', 'Gaps', or 'Agent Notes' sections. The split threshold is roughly twenty-five entries, and a map splits within its section structure first — creating a new map requires a /rethink pass (CLAUDE.md, Topic maps). Membership means: listed in a declared map's claims list. Semantic search runs via the qmd CLI (`qmd query "..."`), not MCP tools. Apply the personality block in `ops/derivation-manifest.md` and the research-diction register (`CLAUDE.md`, Research diction; `ops/methodology/prose register.md`) to every sentence written.

---

*The generated upstream procedure that accompanied this block was removed on 2026-08-09. It described a different vault — `queue.json`/`queue.yaml`, numbered claim files, `ops/sessions/`, comprehensive-extraction yield rules — and contradicted the conventions stated above. This block, together with the vault files it names and `CLAUDE.md` (the Pipeline and Writing-a-claim sections) and `templates/`, is the operative skill.*
