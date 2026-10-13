# Consolidation policy

1. Inventory and identify canonical sources before editing.
2. Group semantically equivalent statements, conflicting instructions, one-off plans, numbered TODOs, and dated session notes.
3. Classify each unique claim: verified durable fact, instruction, unresolved task, historical evidence, or obsolete/redundant.
4. Preserve unique information and unresolved tasks in the appropriate existing destination BEFORE deleting any source.
5. Merge duplicates into canonical files; correct stale statements using code, tests, merged PRs, and newer accepted decisions as evidence.
6. Prefer deletion and no-op over creating another summary. Never create a persistent dream log.
7. Update links and references, check instruction scope, and verify changes.
8. Report net maintained Markdown LOC, files removed/added, proposed issue consolidations, and any uncertain claims.

## Keep living documents present-tense

- Maintain canonical documentation as a **current-state specification**, not an accumulation of historical updates.
- Replace outdated descriptions instead of appending "Update", "Previously", "Now", dated logs, or agent session recaps.
- Avoid recording change history inside instructions, README sections, architecture pages, or active plans when Git commits, PRs, and GitHub issues already carry it.
- Where historical context is essential, link to the appropriate commit, PR, issue, or ADR rather than copying its timeline.
- Preserve intentional historical material: ADR rationale and status, migration paths needed by users, release notes, incidents, security/audit records, and legal/compliance evidence.
- Do not remove distinct requirements or reasoning that cannot be recovered simply to make a file shorter.

Negative LOC is a preference, not a quota. Do not delete legal, security, incident, or audit records merely because they are old. Dates in filenames are appropriate for genuinely chronological records.
