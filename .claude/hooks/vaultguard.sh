#!/bin/bash
# Ars Contexta — Vault Guard
# Checks if the current directory is an Ars Contexta vault.
# Called by all hooks to skip execution in non-vault repos.
#
# Exit 0 = vault detected (safe to proceed)
# Exit 1 = not a vault (caller should exit)

# Resolve the vault root before testing the marker. Hooks can be invoked
# with a working directory off the repository root, and a cwd-relative test
# silently disabled the entire hook layer in that case (proven live from
# /tmp, audit 2026-08-06). This script lives at .claude/hooks/, two levels
# below the root.
cd "${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "$0")/../.." && pwd)}" || exit 1

MARKER=".arscontexta"

# Primary check: marker file
if [ -f "$MARKER" ]; then
  # Migrate old cat-face format to YAML config
  if grep -q '(\^\.\^)' "$MARKER" 2>/dev/null; then
    cat > "$MARKER" << 'EOF'
# Ars Contexta vault marker + config
# This file identifies the directory as an Ars Contexta vault.
# Do not delete — hooks only run when this file exists.

git: true
session_capture: true
EOF
  fi
  exit 0
fi

# Fallback: legacy vault detection + auto-migrate
if [ -f ops/config.yaml ] || [ -f .claude/hooks/session-orient.sh ]; then
  cat > "$MARKER" << 'EOF'
# Ars Contexta vault marker + config
# This file identifies the directory as an Ars Contexta vault.
# Do not delete — hooks only run when this file exists.

git: true
session_capture: true
EOF
  exit 0
fi

# Not a vault
exit 1
