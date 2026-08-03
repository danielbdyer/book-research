---
description: The session-start hook commits a one-line change to ops/sessions/current.json on every resume, and those commits carry no signature, so a branch accumulates unsigned no-content commits.
date: 2026-08-01
severity: friction
status: resolved
---

# the session-start hook commits an unsigned record on every session resume

On 2026-08-01 the branch `claude/book-sources-integration-1nscps` accumulated three commits titled "Session start: <timestamp>", each changing one line of `ops/sessions/current.json` and each carrying no signature. They were produced by the session-start hook when the session resumed, not by any work on the vault's content. Because the repository is configured to sign commits (`commit.gpgsign` is true, with an ssh key configured), the hook is bypassing a setting the rest of the repository observes, and the platform reports the resulting commits as unverified.

The friction has two parts, and they are separable. The first is the missing signature, which is a defect: the hook should commit the way every other commit in the repository is made. The second is the commit itself, which is a design question rather than a defect: a session timestamp is operational state that changes on every resume, and committing it separately produces a commit with no content for every session, on whatever branch happens to be checked out. The auto-commit hook would pick the file up alongside real changes if the session-start hook left it alone.

Three commits were produced across three resumes in a single day's work, which sets the rate. They were repaired by re-signing rather than by changing the hook, so the condition persists.

This went to /rethink with three candidate resolutions — signing the hook's commits, writing the session record without committing, or folding `ops/sessions/` into the auto-commit hook's scope and removing the separate commit — and the third was chosen. The resolution below records it; nothing here is open.

## Resolved 2026-08-01

The commit was removed from `.claude/hooks/session-orient.sh`. The session record is still written on every resume and is now staged by the auto-commit hook's `git add -A`, so it rides along with the next real change instead of producing a commit of its own. That removes both the no-content commit and the unsigned commit in one edit, since the unsigned commits were a consequence of this hook running with `--no-verify`.
