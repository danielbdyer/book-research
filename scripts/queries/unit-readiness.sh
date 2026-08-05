#!/bin/bash
# Scores each named unit against the six readiness conditions in
# ops/manuscript readiness.md. Added 2026-08-05 at the author's direction to
# make readiness a tracked rubric rather than a description.
#
# It reads `bears-on:` — the vault's candidate offering — and never `supports:`,
# which is the author's placement record and stays dormant until he makes one.
# A unit's candidate set is an offer. This script reports coverage, not a plan.
#
# Exemption clause, per the convention adopted 2026-08-05: a claim with no
# `bears-on:` is unassessed rather than failing. The field is filled
# incrementally, one unit at a time, so an empty unit means the gathering pass
# has not run for it — not that the vault holds nothing.
#
# Run from anywhere; it operates on the repository root.
cd "$(dirname "$0")/../.." || exit 1

python3 - <<'PY'
import re, pathlib, sys
try:
    import yaml
except ImportError:
    print("  PyYAML not installed. Run scripts/bootstrap.sh"); sys.exit(0)

# Units, read from the concordance so the two cannot drift.
units, seen = [], False
for line in pathlib.Path("ops/chapter concordance.md").read_text().splitlines():
    if line.startswith("| Named unit"): seen = True; continue
    if line.startswith("|---"): continue
    if line.startswith("## "): seen = False
    if seen and line.startswith("| "):
        u = line.split("|")[1].strip()
        if u: units.append(u)

notes = {}
for p in pathlib.Path("notes").glob("*.md"):
    m = re.match(r"^---\n(.*?)\n---\n", p.read_text(), re.S)
    if not m: continue
    fm = yaml.safe_load(m.group(1)) or {}
    if fm.get("type") == "moc": continue
    notes[p.stem] = fm

assessed = sum(1 for f in notes.values() if f.get("bears-on"))
print(f"Unit readiness — {assessed} of {len(notes)} claims carry a bears-on offer.\n")
print(f"  {'Unit':<32} {'claims':>6} {'unread':>7} {'tension':>8} {'chairs':>7}   condition 2")
print(f"  {'-'*32} {'-'*6} {'-'*7} {'-'*8} {'-'*7}   {'-'*28}")

for u in units:
    borne = [s for s, f in notes.items() if u in (f.get("bears-on") or [])]
    if not borne:
        print(f"  {u:<32} {'—':>6} {'—':>7} {'—':>8} {'—':>7}   not yet gathered")
        continue
    unread   = [s for s in borne if notes[s].get("state") == "privated"]
    tensions = [s for s in borne if notes[s].get("category") == "tension"]
    chairs   = [s for s in borne if notes[s].get("category") == "interlocutor"]
    # Condition 2 is the binding one: no claim the unit depends on may be
    # privated on an unread work.
    verdict = "MET — nothing unread" if not unread else f"BLOCKED — {len(unread)} unread"
    print(f"  {u:<32} {len(borne):>6} {len(unread):>7} {len(tensions):>8} {len(chairs):>7}   {verdict}")

print("""
  claims   — notes offering to serve this unit
  unread   — of those, claims privated on an unread primary work (condition 2)
  tension  — tensions the unit must not resolve by accident (condition 4)
  chairs   — thinkers the unit names, whose refusals must be kept (condition 3)

  Conditions 1, 5 and 6 are not machine-checkable and are recorded per unit in
  ops/manuscript readiness.md. Condition 7 is the author's and is not tracked here.""")
PY
