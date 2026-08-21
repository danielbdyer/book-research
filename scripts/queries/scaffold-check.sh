#!/bin/bash
# The receipts behind ops/scaffold.md. Each finding in the scaffold names the
# vault files it was read from and carries a fingerprint of their CONTENT (git
# blob SHAs, so the check survives rebases and the auto-commit hook — it tracks
# what the files say, not when they changed). This script re-fingerprints every
# finding's sources and reports which findings still hold (AFFIRMED) and which
# rest on ground that has moved (STALE). It reads and never writes: the output
# is a worklist for /scaffold refresh, which re-derives only the stale findings.
#
# Usage:
#   scripts/queries/scaffold-check.sh            verify every finding; print AFFIRMED/STALE + baseline drift
#   scripts/queries/scaffold-check.sh --stale    print only the stale finding ids (the refresh worklist)
#   scripts/queries/scaffold-check.sh --print PATH[,PATH...]
#                                                print the fingerprint for a source list (used when
#                                                writing a fresh receipt after re-deriving a finding)
# Run from anywhere.

cd "$(dirname "$0")/../.." || exit 1
MAP="ops/scaffold.md"

# --- fingerprint helper: sha256(first12) over sorted "path:blobsha" lines ---
fingerprint() {
  # $1 = comma-separated paths. Missing files contribute ":MISSING" so a
  # deletion busts the receipt too. Content comes from the working tree.
  python3 - "$1" <<'PY'
import sys, subprocess, hashlib
paths = [p.strip() for p in sys.argv[1].split(",") if p.strip()]
lines = []
for p in sorted(set(paths)):
    try:
        blob = subprocess.run(["git", "hash-object", p],
                              capture_output=True, text=True, check=True).stdout.strip()
    except Exception:
        blob = "MISSING"
    lines.append(f"{p}:{blob}")
print(hashlib.sha256("\n".join(lines).encode()).hexdigest()[:12])
PY
}

# --- --print mode: fingerprint a source list and exit ---
if [ "$1" = "--print" ]; then
  [ -n "$2" ] || { echo "usage: scaffold-check.sh --print PATH[,PATH...]"; exit 1; }
  fingerprint "$2"
  exit 0
fi

[ -f "$MAP" ] || { echo "no $MAP — run /scaffold rederive to build the scaffold and its receipts"; exit 1; }

STALE_ONLY=0
[ "$1" = "--stale" ] && STALE_ONLY=1

# --- pull the receipts block (id <TAB> fingerprint <TAB> label <TAB> sources) ---
receipts=$(awk '/<!-- receipts:start -->/{f=1;next} /<!-- receipts:end -->/{f=0} f' "$MAP")
[ -n "$receipts" ] || { echo "no receipts block in $MAP (expected between <!-- receipts:start --> and <!-- receipts:end -->)"; exit 1; }

affirmed=0; stale=0; stale_ids=""
while IFS=$'\t' read -r id stored label sources; do
  [ -n "$id" ] || continue
  case "$id" in \#*) continue;; esac          # allow # comments inside the block
  now=$(fingerprint "$sources")
  if [ "$now" = "$stored" ]; then
    affirmed=$((affirmed+1))
    [ "$STALE_ONLY" -eq 1 ] || printf 'AFFIRMED  %-4s %s\n' "$id" "$label"
  else
    stale=$((stale+1)); stale_ids="$stale_ids $id"
    if [ "$STALE_ONLY" -eq 1 ]; then
      echo "$id"
    else
      # name the sources whose blob moved, so the refresh knows what to re-read
      moved=$(python3 - "$sources" "$MAP" <<'PY'
import sys, subprocess
paths=[p.strip() for p in sys.argv[1].split(",") if p.strip()]
out=[]
for p in paths:
    try:
        subprocess.run(["git","hash-object",p],capture_output=True,text=True,check=True)
        exists=True
    except Exception:
        exists=False
    if not exists: out.append(p+" (gone)")
print("; ".join(out))
PY
)
      printf 'STALE     %-4s %s\n' "$id" "$label"
      [ -n "$moved" ] && printf '              missing: %s\n' "$moved"
      printf '              re-read: %s\n' "$sources"
    fi
  fi
done <<< "$receipts"

[ "$STALE_ONLY" -eq 1 ] && exit 0

# --- baseline drift: new notes / new decisions since the last full derive ---
baseline=$(awk -F'[ =]' '/<!-- baseline /{for(i=1;i<=NF;i++){if($i=="notes")n=$(i+1); if($i=="decisions")d=$(i+1); if($i=="derived")dt=$(i+1)} print n" "d" "dt}' "$MAP" | head -1)
b_notes=$(echo "$baseline" | awk '{print $1}')
b_dec=$(echo "$baseline" | awk '{print $2}')
b_dt=$(echo "$baseline" | awk '{print $3}')
cur_notes=$(find notes -maxdepth 1 -name '*.md' 2>/dev/null | wc -l | tr -d ' ')
cur_dec=$(grep -cE '^\|' ops/decisions.md 2>/dev/null | tr -d ' ')

echo ""
echo "— $affirmed affirmed, $stale stale —"
[ -n "$stale_ids" ] && echo "  refresh worklist:$stale_ids"
if [ -n "$b_notes" ]; then
  dn=$((cur_notes - b_notes)); dd=$((cur_dec - b_dec))
  echo "  baseline (derived $b_dt): notes ${b_notes}→${cur_notes} (Δ${dn}), decisions ${b_dec}→${cur_dec} (Δ${dd})"
  { [ "$dn" -gt 0 ] || [ "$dd" -gt 0 ]; } && echo "  → new material since the last full derive may be NEW TERRITORY no finding covers; /scaffold refresh folds it in."
fi
[ "$stale" -eq 0 ] && echo "  the scaffold still holds — no re-derivation needed."
