#!/usr/bin/env python3
"""The register's mechanical tripwires — the residue of past violations, as shapes.

The author has ruled that no regex finds the register's tic; this detector does
not try. It catches only the three shapes past violations actually took, at
high precision, so a write that repeats a known failure is blocked before it
lands rather than found behind us:

  R1  a line that opens with a bare past participle and no subject
      ("Recorded on the chair, not resolved.")
  R2  a noun phrase yoked straight to a participle with no finite verb between
      ("Method caution recorded with both:"; "The refusal kept: ...")
  R3  a bold label ending in a colon, standing where a sentence should
      ("**One-day checks (no outside reading required):**")

A catch is an instruction to recompose, never to suppress: if the flagged line
is genuinely a sentence, restructure it until the subject and finite verb are
explicit — a shape this detector cannot parse will also slow a tired reader.
The stance itself is guarded by line 6 of the countermeasure (every file reread
as the reader it will meet), not by this script.

Modes:
  register-tripwires.py --files F...        scan whole files
  register-tripwires.py --diff [REF]        scan added lines of git diff [REF]
                                            (default: worktree+index vs HEAD)
  register-tripwires.py --stdin-content P   scan stdin as content destined for P

Exit 0 clean, 1 on any trip. Gated: CLAUDE.md and *.md under notes/, ops/,
archive/, manual/. Exempt: ops/register violations.md (it quotes the specimens
by design), inbox/ (capture has no formatting rules), templates/, sources/,
provenance/ (consulted works keep their own words), and this script's folder.
"""
import re
import subprocess
import sys

GATED_DIRS = ("notes/", "ops/", "archive/", "manual/")
EXEMPT = ("ops/register violations.md",)

PARTICIPLES_CAP = (
    "Recorded|Kept|Noted|Filed|Proposed|Added|Logged|Held|Checked|Verified|"
    "Stated|Written|Installed|Updated|Extended|Amended|Corrected|Confirmed|"
    "Fetched|Quoted|Marked|Redressed|Recomposed"
)
PARTICIPLES_LOW = PARTICIPLES_CAP.lower() + "|read"
FINITE = {
    "is", "are", "was", "were", "has", "have", "had", "does", "do", "did",
    "can", "could", "will", "would", "shall", "should", "may", "might",
    "must", "stands", "remains", "says", "reads", "argues", "finds", "shows",
    "holds", "asks", "records", "keeps", "notes", "files", "adds", "logs",
    "checks", "states", "writes", "carries", "lands", "enters", "sits",
    "runs", "stays", "gets", "goes", "comes", "takes", "makes", "means",
    "needs", "wants", "becomes", "seems", "leaves", "survives", "fails",
    "arrives", "documents", "produces", "supplies", "grants", "prices",
}

R1 = re.compile(r"^(?:%s)\b" % PARTICIPLES_CAP)
R2 = re.compile(
    r"^([A-Z][\w'’()\-]*(?:\s+[a-z'’()\-]+){0,5})\s+(?:%s)\b" % PARTICIPLES_LOW
)
R3 = re.compile(r"\*\*[^*.!?]{2,70}:\*\*")
BULLET = re.compile(r"^(?:[-*+]\s+|\d+\.\s+)")
SKIP_START = ("#", ">", "|", "`", "%", "!", "[", "---")
YAML_KEY = re.compile(r"^[a-zA-Z_][\w-]*:\s")


def gated(path):
    path = path.lstrip("./")
    if path in EXEMPT:
        return False
    if not path.endswith(".md"):
        return False
    if path == "CLAUDE.md":
        return True
    return path.startswith(GATED_DIRS)


def check_line(raw):
    """Return (rule, excerpt) for a tripping line, else None."""
    line = raw.strip()
    if not line or line.startswith(SKIP_START) or line.startswith(('"', "“", "'")):
        return None
    line = BULLET.sub("", line)
    if YAML_KEY.match(line):
        return None
    if R3.search(line):
        return ("R3 bold label ending in a colon where a sentence should stand", line)
    analysis = line.lstrip("*_ ").rstrip()
    if R1.match(analysis):
        return ("R1 line opens with a bare past participle and no subject", line)
    m = R2.match(analysis)
    if m:
        head_tokens = [t.lower().strip(",;:") for t in m.group(1).split()]
        if not any(t in FINITE for t in head_tokens):
            return ("R2 noun phrase yoked to a participle with no finite verb", line)
    return None


def scan_text(path, text, lineno_map=None):
    trips = []
    in_fence = False
    in_yaml = False
    for i, raw in enumerate(text.splitlines(), 1):
        s = raw.strip()
        if s.startswith("```"):
            in_fence = not in_fence
            continue
        if i == 1 and s == "---":
            in_yaml = True
            continue
        if in_yaml:
            if s == "---":
                in_yaml = False
            continue
        if in_fence:
            continue
        hit = check_line(raw)
        if hit:
            n = lineno_map[i - 1] if lineno_map else i
            trips.append((path, n, hit[0], hit[1]))
    return trips


def scan_diff(ref):
    cmd = ["git", "diff", "-U0"] + ([ref] if ref else ["HEAD"]) + ["--", "*.md"]
    out = subprocess.run(cmd, capture_output=True, text=True).stdout
    trips, path, new_ln = [], None, 0
    for raw in out.splitlines():
        if raw.startswith("+++ b/"):
            path = raw[6:]
        elif raw.startswith("@@"):
            m = re.search(r"\+(\d+)", raw)
            new_ln = int(m.group(1)) if m else 0
        elif raw.startswith("+") and not raw.startswith("+++"):
            if path and gated(path):
                hit = check_line(raw[1:])
                if hit:
                    trips.append((path, new_ln, hit[0], hit[1]))
            new_ln += 1
    return trips


def main(argv):
    trips = []
    if argv[:1] == ["--files"]:
        for f in argv[1:]:
            if gated(f):
                with open(f, encoding="utf-8") as fh:
                    trips += scan_text(f, fh.read())
    elif argv[:1] == ["--diff"]:
        trips = scan_diff(argv[1] if len(argv) > 1 else None)
    elif argv[:1] == ["--stdin-content"]:
        path = argv[1] if len(argv) > 1 else "(unnamed)"
        if gated(path):
            trips = scan_text(path, sys.stdin.read())
    else:
        print(__doc__)
        return 2
    for path, n, rule, line in trips:
        print("%s:%s: %s: %s" % (path, n, rule, line[:120]))
    if trips:
        print(
            "REGISTER TRIPWIRE: recompose each line above as a complete sentence "
            "with a named subject and a finite verb; if a catch is wrong, "
            "restructure anyway until the subject and verb are explicit — a shape "
            "the detector cannot parse will also slow a tired reader."
        )
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
