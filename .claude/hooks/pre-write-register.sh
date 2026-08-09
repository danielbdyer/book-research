#!/bin/bash
# The register's pre-write reporter. Runs before every Write or Edit lands
# and reports (exit 0) when the proposed content trips the mechanical
# residue of past register violations — the three shapes in
# scripts/queries/register-tripwires.py. The seventh correction's specimen
# was written into an archive file mid-turn, where every guard aimed at
# replies; this hook stands at the file layer so a known failure shape is
# named before it lands on disk. It catches shapes, not the stance: line 6
# of the countermeasure (every file reread as the reader it will meet)
# remains the guarantee's substance, and a report always instructs
# recomposition, never suppression.
#
# It reported rather than blocked from 2026-08-09, by author decision, on
# the vault's own count of the blocking form's record: seventeen false
# catches against four true ones, the last three incurred by the very file
# that proposed this change. The detector is unchanged and every true catch
# still surfaces; what changed is that a sentence the regular expression
# cannot parse no longer stops the write. The reasoning is the observation
# at ops/observations/the register tripwire blocks well-formed sentences it
# cannot parse.md, which counts the catches and names the mechanism, and
# the standing warning it records: a forced rewrite puts "a second author
# in the room with a vote and no stake in the meaning."
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
