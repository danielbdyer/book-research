#!/bin/bash
# The register countermeasure, per-turn form. Prints the compact seven lines
# before every reply is composed, so the countermeasure sits at zero distance
# from the moment every recorded failure happened — and so it re-arms after
# context compaction, which pushed the session-start copy out of the window at
# least once on the day the countermeasure was installed. Registered as a
# UserPromptSubmit hook in .claude/settings.json; it prints the seven lines
# and does nothing else.
# The canonical copy is the final section of ops/methodology/prose register.md.
#
# It stopped running the stamp check on every turn from 2026-08-09, by author
# decision. That check confirms six files still contain ten phrases, and it
# spends 115 separate grep invocations to do it, so a fifty-turn session spent
# 5,865 of them on files that change about weekly. The check still runs at
# every session start, from .claude/hooks/session-orient.sh, which is the
# frequency the drift it guards against actually moves at.
GUARD_DIR="$(cd "$(dirname "$0")" && pwd)"
# Work from the repository root regardless of the invoking directory, so the
# stamp check below finds its surfaces.
cd "${CLAUDE_PROJECT_DIR:-$GUARD_DIR/../..}" || exit 0
"$GUARD_DIR/vaultguard.sh" || exit 0

INPUT=$(cat)

echo "REGISTER (reread every reply as the author, and every prose file as the reader it will actually meet, before it leaves — there is no internal register): every statement is a complete sentence with a named subject and a finite verb, and paragraph closes are checked first, with a bullet's opening words before a colon at the same priority; every pipeline coinage is unfolded or replaced with plain words; every reference is a receipt carrying one clause of its content; figures of speech appear only inside quotation marks; every abstract noun standing for something specific is expanded where it stands, so the sentence names the thing, not its category, checked first at consequence-sentences; and a subagent's report is raw material, never copy — recomposed before it is filed. The ban is on compression that withholds, never on complexity that delivers."

if [ -f scripts/queries/countermeasure.sh ]; then
  bash scripts/queries/countermeasure.sh --turn || true
fi
