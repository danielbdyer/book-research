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

PAYLOAD_FILE=$(mktemp) || exit 0
trap 'rm -f "$PAYLOAD_FILE"' EXIT
cat > "$PAYLOAD_FILE"

python3 - "$PWD" "$PAYLOAD_FILE" << 'PYEOF'
import json, subprocess, sys, os

root, payload_file = sys.argv[1], sys.argv[2]
try:
    with open(payload_file, encoding="utf-8") as fh:
        payload = json.load(fh)
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
