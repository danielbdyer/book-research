#!/bin/bash
# Restores this vault's tools in a fresh container (remote sessions start clean).
#
# Installs tree, pypdf, and qmd if missing; extracts the source PDFs to text in
# .corpus/ so the corpus itself is searchable; registers two qmd collections —
# the vault's notes and the extracted corpus — and rebuilds the index.
#
# Safe to run repeatedly. Every step reports and none is fatal to the others, so
# a session that loses one capability keeps the rest. Run from anywhere; it
# operates on the repository root.
cd "$(dirname "$0")/.." || exit 1
STATUS=0

echo "== tree =="
if command -v tree >/dev/null 2>&1; then
  echo "  present."
else
  (apt-get install -y tree >/dev/null 2>&1 || sudo apt-get install -y tree >/dev/null 2>&1) \
    && echo "  installed." \
    || { echo "  install failed; the orientation hook falls back to find."; STATUS=1; }
fi

echo "== corpus text =="
# pypdf's import can fail on a broken cryptography package in some containers;
# repair that before giving up, because search over the corpus depends on it.
if ! python3 -c "import pypdf" >/dev/null 2>&1; then
  pip install --quiet pypdf >/dev/null 2>&1
  python3 -c "import pypdf" >/dev/null 2>&1 \
    || pip install --quiet --ignore-installed cryptography cffi >/dev/null 2>&1
fi
if python3 -c "import pypdf" >/dev/null 2>&1; then
  python3 scripts/extract-sources.py || STATUS=1
else
  echo "  pypdf unavailable; the source PDFs will not be searchable this session."
  STATUS=1
fi

echo "== qmd =="
if ! command -v qmd >/dev/null 2>&1; then
  npm install -g @tobilu/qmd >/dev/null 2>&1 || echo "  install failed."
fi
if command -v qmd >/dev/null 2>&1; then
  [ -d .qmd ] || qmd init >/dev/null 2>&1
  qmd collection add . --name notes --mask "**/*.md" >/dev/null 2>&1 || true
  [ -d .corpus ] && { qmd collection add ./.corpus --name corpus --mask "**/*.md" >/dev/null 2>&1 || true; }
  echo "  refreshing the index (first embedding run takes several minutes on CPU)..."
  qmd update >/dev/null 2>&1 && qmd embed >/dev/null 2>&1 \
    && echo "  ready: qmd query \"...\" for hybrid search, qmd search \"...\" for keyword." \
    || { echo "  index refresh failed; keyword search over .corpus/ with rg still works."; STATUS=1; }
else
  echo "  qmd unavailable; use rg over .corpus/ for keyword search."
  STATUS=1
fi

echo
if [ "$STATUS" -eq 0 ]; then
  echo "Bootstrap complete."
else
  echo "Bootstrap finished with degraded capability; see the lines above."
fi
echo "Search notes:  rg 'pattern' notes/"
echo "Search corpus: rg -w 'pattern' .corpus/   (word boundaries matter: 'habit' otherwise matches 'inhabit')"
exit 0
