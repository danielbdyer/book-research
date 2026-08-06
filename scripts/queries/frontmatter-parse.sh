#!/bin/bash
# Parses every note's YAML frontmatter and reports only what fails. Added
# 2026-08-05 by /rethink proposal 1; before it, nothing in this vault had ever
# parsed its own frontmatter — every other check is ripgrep over line patterns —
# which is how a fifth of the graph carried unparseable descriptions unnoticed
# until 2026-08-03 (ops/observations/no check ever parsed a note's frontmatter
# as yaml.md).
#
# Exemption clause, per the convention adopted with this script: a note is
# exempt from the enum checks for any field it does not carry, because state,
# status, load and discipline are all optional by schema. Absence is not a
# defect; an out-of-enum value is. Silence from this script means every note
# parses and every value present is legal.
#
# Run from anywhere; it operates on the repository root.
cd "$(dirname "$0")/../.." || exit 1

python3 - <<'PY'
import re, pathlib, sys
try:
    import yaml
except ImportError:
    print("  PyYAML not installed. Run: pip install pyyaml  (or scripts/bootstrap.sh)")
    sys.exit(0)

ENUMS = {
    "category": {"claim","isomorph","tension","open-question","image","practice",
                 "structure","craft","interlocutor","source","moc"},
    "state": {"nascent","privated","full","flourishing","composting"},
    "status": {"live","treated","resolved"},
    "seat": {"facilitation","emotion-work","speech-acts","container-makers","coaches",
             "source-tradition","reference-lineage","margin-voices","chapter-patron",
             "recommended-reading","candidate","declined"},
    "load": {"thesis-bearing","adversary","independent-arrival",
             "names-existing-practice","company","precedent"},
    "discipline": {"continental-philosophy","indic-and-buddhist-primary",
                   "abrahamic-contemplative","african-philosophy","clinical",
                   "empirical-science","social-theory","systems-and-design",
                   "poets-and-artists","practitioner-pedagogy","analytic-philosophy",
                   "classical-philosophy"},
}
MAXDESC = 220


failures = []
notes = sorted(pathlib.Path("notes").glob("*.md"))
for p in notes:
    t = p.read_text()
    m = re.match(r"^---\n(.*?)\n---\n", t, re.S)
    if not m:
        failures.append((p.stem, "no frontmatter block")); continue
    try:
        fm = yaml.safe_load(m.group(1))
    except Exception as e:
        failures.append((p.stem, f"YAML will not parse: {str(e).splitlines()[0][:70]}")); continue
    if not isinstance(fm, dict):
        failures.append((p.stem, "frontmatter is not a mapping")); continue
    d = fm.get("description")
    if not d:
        failures.append((p.stem, "no description"))
    elif len(str(d)) > MAXDESC:
        failures.append((p.stem, f"description {len(str(d))} chars, limit {MAXDESC}"))
    if not fm.get("topics"):
        failures.append((p.stem, "no topics"))
    if fm.get("state") == "privated" and not fm.get("privation"):
        failures.append((p.stem, "state: privated with no privation: naming the absence"))
    for field, legal in ENUMS.items():
        v = fm.get(field)
        if v is not None and v not in legal:
            failures.append((p.stem, f"{field}: {v!r} is not in the schema's enum"))

print(f"Parsed {len(notes)} notes.")
if failures:
    print(f"{len(failures)} failures:")
    for stem, msg in failures:
        print(f"  {stem} — {msg}")
else:
    print("  Every note parses; every value present is legal.")
PY
