#!/bin/bash
# The strike-the-links audit, as a candidate generator. The register's rule 3
# says a paragraph must still assert everything it asserted when its links are
# struck out; the author has ruled that the underlying tic — meaning made by
# gesture rather than statement — cannot be found by regex ("I do not think
# you can find this tic by a simple regex," 2026-08-05). So this script does
# not judge. It strikes every wiki link, code span, and path token from each
# body paragraph in notes/, and ranks the paragraphs whose residue is thinnest
# — fewest remaining words, or no plausible finite verb — as CANDIDATES for
# /verify's cold-read judgment. A listed paragraph may be fine; an unlisted
# one may still gesture. The list is where a human check starts, not a verdict.
#
# Footers (Relevant Notes, Topics) are excluded: they are link lists by design
# and their glosses are checked by /verify directly. Headings, quote blocks,
# and table rows are skipped for the same reason.
#
# Usage: strike-links.sh [N]   — show the N thinnest paragraphs (default 20).
# Run from anywhere; it operates on the repository root.
cd "$(dirname "$0")/../.." || exit 1
TOP="${1:-20}"

python3 - "$TOP" <<'PY'
import re, pathlib, sys

TOP = int(sys.argv[1])

# A plausible-finite-verb list, deliberately common and broad. Its job is to
# catch paragraphs with NO verb-like token after the strike — the fragment
# case — not to parse English.
VERBS = set("""is are was were be been has have had does do did can could may
might will would should must names states records carries holds rests stands
remains means comes goes makes takes gives shows says asks answers binds keeps
runs turns leaves brings puts gets becomes belongs exists lives sits points
marks opens closes reads writes quotes cites claims argues refuses requires
produces supplies covers reaches fails works serves starts ends earns waits
follows leads moves changes grows falls proves tests checks confirms denies
adds drops wins loses tells sends builds finds found holds kept stated named
recorded survives governs decides settles arrives arrived""".split())

rows = []
for p in sorted(pathlib.Path("notes").glob("*.md")):
    t = p.read_text()
    m = re.match(r"^---\n.*?\n---\n", t, re.S)
    body = t[m.end():] if m else t
    # cut the footer: everything from a line 'Relevant Notes:' or the final 'Topics:' on
    cut = re.search(r"^Relevant Notes:\s*$", body, re.M)
    if not cut:
        cut = re.search(r"^Topics:\s*$", body, re.M)
    if cut:
        body = body[:cut.start()]
    paras = [q.strip() for q in re.split(r"\n\s*\n", body) if q.strip()]
    for i, para in enumerate(paras, 1):
        first = para.splitlines()[0]
        if first.startswith("#") or first.startswith(">") or first.startswith("|"):
            continue
        if all(l.strip().startswith("-") for l in para.splitlines()):
            continue  # pure list blocks: their glosses are /verify's beat
        residue = re.sub(r"\[\[[^\]]*\]\]", " ", para)          # wiki links
        residue = re.sub(r"`[^`]*`", " ", residue)              # code spans
        residue = re.sub(r"\S*[/\\]\S*\.(md|sh|pdf|ya?ml|json)\b", " ", residue)  # paths
        residue = re.sub(r"\([^)]*§[^)]*\)", " ", residue)      # anchor parentheticals
        words = re.findall(r"[A-Za-z']+", residue)
        wc = len(words)
        has_verb = any(w.lower() in VERBS for w in words)
        if wc < 8 or not has_verb:
            reason = f"{wc} words left" + ("" if has_verb else ", no finite-verb candidate")
            rows.append((wc, p.stem, i, reason, " ".join(para.split())[:100]))

rows.sort(key=lambda r: r[0])
if not rows:
    print("No paragraph falls below the assertion floor: every body paragraph keeps at least eight words and a verb after its links are struck.")
else:
    print(f"{len(rows)} candidate paragraph(s) below the assertion floor; thinnest {min(TOP, len(rows))} follow. These are candidates for a cold read, not verdicts.")
    for wc, stem, i, reason, head in rows[:TOP]:
        print(f"  {stem} ¶{i} — {reason}: {head}")
PY
