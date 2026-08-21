#!/bin/bash
# The receipts behind ops/scaffold.md, read inline. Every cached section of the
# scaffold carries a marker naming the vault files it was read from and a CRC32
# of their CONTENT (so the check tracks what a file SAYS, not when the auto-commit
# hook touched it). This script walks those inline markers, re-computes each
# section's CRC, and reports which sections still hold (FRESH) and which rest on
# ground that has moved (EXPIRED). It reads and never writes: the output is the
# worklist for /scaffold refresh, which re-derives only the expired sections.
#
# The inline marker, one per cached section, anywhere in the section's body:
#   <!--cache id=F1 crc=a1b2c3d4 src=path one.md|path two.md derived=2026-08-21-->
# Paths may contain spaces; the src list is pipe-separated. A parser in any
# language can extract these with a single regex.
#
# Usage:
#   scripts/queries/scaffold-check.sh            walk ops/scaffold.md; print FRESH/EXPIRED + baseline drift
#   scripts/queries/scaffold-check.sh --stale    print only the expired section ids (the refresh worklist)
#   scripts/queries/scaffold-check.sh --crc 'path one.md|path two.md'
#                                                print the CRC for a pipe-separated source list (used when
#                                                writing or updating a section's inline marker)
#   scripts/queries/scaffold-check.sh --file FILE [...]   run against a file other than ops/scaffold.md
# Run from anywhere.

cd "$(dirname "$0")/../.." || exit 1
MAP="ops/scaffold.md"

# --- CRC32 over a pipe-separated source list ---
# value = crc32( "\n".join(sorted( "path:crc32(bytes)" )) ), 8 lowercase hex.
# A missing file contributes ":MISSING" so a deletion busts the marker too.
crc() {
  python3 - "$1" <<'PY'
import sys, zlib
paths = [p.strip() for p in sys.argv[1].split("|") if p.strip()]
lines = []
for p in sorted(set(paths)):
    try:
        with open(p, "rb") as fh:
            c = format(zlib.crc32(fh.read()) & 0xffffffff, "08x")
    except Exception:
        c = "MISSING"
    lines.append(f"{p}:{c}")
print(format(zlib.crc32("\n".join(lines).encode()) & 0xffffffff, "08x"))
PY
}

# --- --crc mode: checksum a source list and exit ---
if [ "$1" = "--crc" ]; then
  [ -n "$2" ] || { echo "usage: scaffold-check.sh --crc 'PATH|PATH|...'"; exit 1; }
  crc "$2"
  exit 0
fi

STALE_ONLY=0
[ "$1" = "--stale" ] && { STALE_ONLY=1; shift; }
[ "$1" = "--file" ] && { MAP="$2"; shift 2; }
[ -f "$MAP" ] || { echo "no $MAP — run /scaffold rederive to build the scaffold and its inline receipts"; exit 1; }

# --- pull every inline cache marker: id, stored crc, src list ---
markers=$(python3 - "$MAP" <<'PY'
import sys, re
txt = open(sys.argv[1], encoding="utf-8").read()
# Strip fenced ``` code blocks first, so the protocol's illustrative example
# (which lives inside a fence) is not read as a live marker.
txt = re.sub(r"```.*?```", "", txt, flags=re.S)
# <!--cache id=... crc=... src=...|... derived=...-->  (derived optional; order of id/crc/src fixed)
for m in re.finditer(r"<!--\s*cache\s+id=(\S+)\s+crc=(\S+)\s+src=(.*?)(?:\s+derived=\S+)?\s*-->", txt, re.S):
    ident, stored, src = m.group(1), m.group(2), m.group(3).strip()
    print("\t".join([ident, stored, src]))
PY
)
[ -n "$markers" ] || { echo "no inline cache markers in $MAP (expected <!--cache id=... crc=... src=...-->)"; exit 1; }

fresh=0; expired=0; expired_ids=""
while IFS=$'\t' read -r id stored src; do
  [ -n "$id" ] || continue
  now=$(crc "$src")
  if [ "$now" = "$stored" ]; then
    fresh=$((fresh+1))
    [ "$STALE_ONLY" -eq 1 ] || printf 'FRESH    %-6s\n' "$id"
  else
    expired=$((expired+1)); expired_ids="$expired_ids $id"
    if [ "$STALE_ONLY" -eq 1 ]; then
      echo "$id"
    else
      gone=$(python3 - "$src" <<'PY'
import sys, os
print("; ".join(p.strip()+" (gone)" for p in sys.argv[1].split("|") if p.strip() and not os.path.exists(p.strip())))
PY
)
      printf 'EXPIRED  %-6s  stored=%s now=%s\n' "$id" "$stored" "$now"
      [ -n "$gone" ] && printf '                 missing: %s\n' "$gone"
      printf '                 re-read: %s\n' "$(echo "$src" | tr '|' ';')"
    fi
  fi
done <<< "$markers"

[ "$STALE_ONLY" -eq 1 ] && exit 0

# --- baseline drift: new notes / decisions since the last full derive ---
baseline=$(awk -F'[ =]' '/<!-- baseline /{for(i=1;i<=NF;i++){if($i=="notes")n=$(i+1); if($i=="decisions")d=$(i+1); if($i=="derived")dt=$(i+1)} print n" "d" "dt}' "$MAP" | head -1)
b_notes=$(echo "$baseline" | awk '{print $1}')
b_dec=$(echo "$baseline" | awk '{print $2}')
b_dt=$(echo "$baseline" | awk '{print $3}')
cur_notes=$(find notes -maxdepth 1 -name '*.md' 2>/dev/null | wc -l | tr -d ' ')
cur_dec=$(grep -cE '^\|' ops/decisions.md 2>/dev/null | tr -d ' ')

echo ""
echo "— $fresh fresh, $expired expired —"
[ -n "$expired_ids" ] && echo "  refresh worklist:$expired_ids"
if [ -n "$b_notes" ]; then
  dn=$((cur_notes - b_notes)); dd=$((cur_dec - b_dec))
  echo "  baseline (derived $b_dt): notes ${b_notes}→${cur_notes} (Δ${dn}), decisions ${b_dec}→${cur_dec} (Δ${dd})"
  { [ "$dn" -gt 0 ] || [ "$dd" -gt 0 ]; } && echo "  → new material since the last full derive may be NEW TERRITORY no section covers; /scaffold refresh folds it in."
fi
[ "$expired" -eq 0 ] && echo "  the scaffold still holds — no re-derivation needed."
