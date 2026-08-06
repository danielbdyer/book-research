#!/bin/bash
# The register's pre-write gate. Runs before every Write or Edit lands, and
# blocks the write (exit 2) when the proposed content trips the mechanical
# residue of past register violations — the three shapes in
# scripts/queries/register-tripwires.py. The seventh correction's specimen
# was written into an archive file mid-turn, where every guard aimed at
# replies; this gate stands at the file layer so a known failure shape can
# no longer land on disk at all. It catches shapes, not the stance: line 6
# of the countermeasure (every file reread as the reader it will meet)
# remains the guarantee's substance, and a block message always instructs
# recomposition, never suppression.
GUARD_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "${CLAUDE_PROJECT_DIR:-$GUARD_DIR/../..}" || exit 0
[ -f scripts/queries/register-tripwires.py ] || exit 0

python3 - "$PWD" << 'PYEOF'
import json, subprocess, sys, os

root = sys.argv[1]
try:
    payload = json.load(sys.stdin)
except Exception:
    sys.exit(0)
ti = payload.get("tool_input", {}) or {}
path = ti.get("file_path", "")
if not path:
    sys.exit(0)
rel = os.path.relpath(path, root) if os.path.isabs(path) else path
if rel.startswith(".."):
    sys.exit(0)
content = ti.get("content")
if content is None:
    content = ti.get("new_string", "")
if not content:
    sys.exit(0)
r = subprocess.run(
    ["python3", "scripts/queries/register-tripwires.py", "--stdin-content", rel],
    input=content, capture_output=True, text=True, cwd=root,
)
if r.returncode == 1:
    sys.stderr.write("REGISTER GATE (pre-write) blocked this write to %s:\n%s" % (rel, r.stdout))
    sys.exit(2)
sys.exit(0)
PYEOF
exit $?
