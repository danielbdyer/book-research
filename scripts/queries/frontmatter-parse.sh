#!/bin/bash
# Parses every note's YAML frontmatter and reports only what fails. Added
# 2026-08-05 by /rethink proposal 1; before it, nothing in this vault had ever
# parsed its own frontmatter — every other check is ripgrep over line patterns —
# which is how a fifth of the graph carried unparseable descriptions unnoticed
# until 2026-08-03 (ops/observations/no check ever parsed a note's frontmatter
# as yaml.md).
#
# Extended 2026-08-06 (audit round): the cross-field rules the schema states
# but nothing enforced are now checked — an interlocutor requires a seat,
# status and treatment belong to tensions alone, privation pairs with
# state: privated in both directions, and every non-map note carries sources.
# Two further passes validate archive/ records against the three record kinds
# in templates/source.md and ops/observations/ against templates/observation.md,
# because both folders had drifted from documentation invisibly: this script
# checked notes/ alone, so compliance elsewhere was practice, not instrument.
#
# Exemption clause, per the convention adopted with this script: a note is
# exempt from the enum checks for any field it does not carry, because state,
# load and discipline are all optional by schema. Absence is not a defect; an
# out-of-enum value is, and so is a field present where the schema forbids it.
# Silence from this script means every record parses and every value present
# is legal.
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
                 "structure","craft","interlocutor","source"},
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

def load_fm(p):
    t = p.read_text()
    m = re.match(r"^---\n(.*?)\n---\n", t, re.S)
    if not m:
        return None, "no frontmatter block"
    try:
        fm = yaml.safe_load(m.group(1))
    except Exception as e:
        return None, f"YAML will not parse: {str(e).splitlines()[0][:70]}"
    if not isinstance(fm, dict):
        return None, "frontmatter is not a mapping"
    return fm, None

failures = []

# ── notes/ ──────────────────────────────────────────────────────────
notes = sorted(pathlib.Path("notes").glob("*.md"))
for p in notes:
    fm, err = load_fm(p)
    if err:
        failures.append((p.stem, err)); continue
    d = fm.get("description")
    if not d:
        failures.append((p.stem, "no description"))
    elif len(str(d)) > MAXDESC:
        failures.append((p.stem, f"description {len(str(d))} chars, limit {MAXDESC}"))
    if not fm.get("topics"):
        failures.append((p.stem, "no topics"))
    is_moc = fm.get("type") == "moc"
    if fm.get("type") is not None and fm.get("type") != "moc":
        failures.append((p.stem, f"type: {fm.get('type')!r} — the only legal type is 'moc', on maps"))
    for field, legal in ENUMS.items():
        v = fm.get(field)
        if v is not None and v not in legal:
            failures.append((p.stem, f"{field}: {v!r} is not in the schema's enum"))
    # cross-field rules (templates/claim-note.md, templates/interlocutor.md)
    cat = fm.get("category")
    if cat == "interlocutor" and not fm.get("seat"):
        failures.append((p.stem, "category: interlocutor with no seat"))
    if cat != "tension":
        if fm.get("status") is not None:
            failures.append((p.stem, f"status: on a {cat or 'map'} — status belongs to tensions only"))
        if fm.get("treatment") is not None:
            failures.append((p.stem, f"treatment: on a {cat or 'map'} — treatment belongs to tensions only"))
    else:
        if not fm.get("status"):
            failures.append((p.stem, "a tension with no status"))
        if not fm.get("treatment"):
            failures.append((p.stem, "a tension with no treatment"))
    if fm.get("state") == "privated" and not fm.get("privation"):
        failures.append((p.stem, "state: privated with no privation: naming the absence"))
    if fm.get("privation") and fm.get("state") != "privated":
        failures.append((p.stem, "privation: present without state: privated — the pairing runs both ways"))
    if not is_moc and cat is not None and not fm.get("sources"):
        failures.append((p.stem, "a categorized note with no sources"))

# ── archive/ ────────────────────────────────────────────────────────
arch = sorted(pathlib.Path("archive").glob("*.md")) if pathlib.Path("archive").exists() else []
ARCH_STATUS = {"unprocessed","tasks-created","partially-extracted","extracted"}
for p in arch:
    fm, err = load_fm(p)
    if err:
        failures.append((p.stem, err)); continue
    name = p.name
    if name.startswith("source — "):
        for req in ("description","source_file","status"):
            if not fm.get(req):
                failures.append((p.stem, f"source record missing {req}"))
        if fm.get("status") and fm["status"] not in ARCH_STATUS:
            failures.append((p.stem, f"status: {fm['status']!r} not in the source-record enum"))
    elif name.startswith("reading — "):
        for req in ("description","category","created"):
            if not fm.get(req):
                failures.append((p.stem, f"reading record missing {req}"))
        if fm.get("category") not in (None, "source-note"):
            failures.append((p.stem, f"reading record category {fm.get('category')!r}; expected source-note"))
    elif name.startswith("research — "):
        for req in ("description","source_type","generated"):
            if not fm.get(req):
                failures.append((p.stem, f"research record missing {req}"))
    elif name.startswith("encounter — "):
        for req in ("description","category","date","participants","field"):
            if not fm.get(req):
                failures.append((p.stem, f"encounter record missing {req}"))
        if fm.get("category") not in (None, "source-note"):
            failures.append((p.stem, f"encounter record category {fm.get('category')!r}; expected source-note"))
    else:
        failures.append((p.stem, "archive record with an unknown prefix — the kinds are 'source — ', 'reading — ', 'research — ', 'encounter — ' (templates/source.md)"))

# ── ops/observations/ ───────────────────────────────────────────────
obs = sorted(pathlib.Path("ops/observations").glob("*.md")) if pathlib.Path("ops/observations").exists() else []
OBS_SEV = {"friction","failure","idea","gap"}
OBS_STATUS = {"open","resolved","archived"}
for p in obs:
    fm, err = load_fm(p)
    if err:
        failures.append((p.stem, err)); continue
    for req in ("description","date","status"):
        if not fm.get(req):
            failures.append((p.stem, f"observation missing {req}"))
    if fm.get("severity") is not None and fm["severity"] not in OBS_SEV:
        failures.append((p.stem, f"severity: {fm['severity']!r} not in the observation enum"))
    if fm.get("status") is not None and fm["status"] not in OBS_STATUS:
        failures.append((p.stem, f"status: {fm['status']!r} not in the observation lifecycle"))

print(f"Parsed {len(notes)} notes, {len(arch)} archive records, {len(obs)} observations.")
if failures:
    print(f"{len(failures)} failures:")
    for stem, msg in failures:
        print(f"  {stem} — {msg}")
else:
    print("  Every record parses; every value present is legal, including the cross-field rules.")
PY
