#!/bin/bash
# Restores this vault's tools in a fresh container (remote sessions start
# clean). Installs tree and qmd if missing, then rebuilds the qmd search
# index. Safe to run repeatedly. Run from anywhere; it operates on the
# repository root.
set -e
cd "$(dirname "$0")/.." || exit 1
command -v tree >/dev/null 2>&1 || { echo "Installing tree..."; (apt-get install -y tree 2>/dev/null || sudo apt-get install -y tree) || echo "tree install failed; the orientation hook falls back to find."; }
command -v qmd >/dev/null 2>&1 || { echo "Installing qmd..."; npm install -g @tobilu/qmd; }
if command -v qmd >/dev/null 2>&1; then
  [ -d .qmd ] || qmd init
  qmd collection add . --name notes --mask "**/*.md" 2>/dev/null || true
  echo "Refreshing the search index (embedding can take several minutes on first run)..."
  qmd update && qmd embed
  echo "Search ready: qmd query \"...\""
fi
