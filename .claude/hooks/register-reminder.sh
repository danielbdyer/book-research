#!/bin/bash
# The register countermeasure, per-turn form. Prints the compact six lines
# before every reply is composed, so the countermeasure sits at zero distance
# from the moment every recorded failure happened — and so it re-arms after
# context compaction, which pushed the session-start copy out of the window at
# least once on the day the countermeasure was installed. Registered as a
# UserPromptSubmit hook in .claude/settings.json; runs the stamp check
# silently and speaks only if a surface has drifted or a wire is cut.
# The canonical copy is the final section of ops/methodology/prose register.md.
GUARD_DIR="$(cd "$(dirname "$0")" && pwd)"
# Work from the repository root regardless of the invoking directory, so the
# stamp check below finds its surfaces.
cd "${CLAUDE_PROJECT_DIR:-$GUARD_DIR/../..}" || exit 0
"$GUARD_DIR/vaultguard.sh" || exit 0

INPUT=$(cat)

echo "REGISTER (reread the reply as the author before sending): every statement is a complete sentence with a named subject and a finite verb, and paragraph closes are checked first; every pipeline coinage is unfolded or replaced with plain words; every reference is a receipt carrying one clause of its content; figures of speech appear only inside quotation marks; every abstract noun standing for something specific is expanded where it stands, so the sentence names the thing, not its category, checked first at consequence-sentences. The ban is on compression that withholds, never on complexity that delivers."

if [ -f scripts/queries/countermeasure.sh ]; then
  bash scripts/queries/countermeasure.sh --turn || true
fi
