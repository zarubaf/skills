# CI review guide

Inspect the repository's workflows, branch rules, and recent Actions results before recommending changes.

Example commands (adapt to repository/CLI version):

```bash
gh repo view --json nameWithOwner,defaultBranchRef
gh workflow list
gh run list --limit 30 --json databaseId,workflowName,status,conclusion,createdAt,updatedAt,event,headBranch
gh run view RUN_ID --json jobs
gh pr checks PR_NUMBER
```

Use timestamps and per-job steps to identify critical paths, repeated setup, large artifact transfers, cold caches, slow dependency installation, redundant test matrices, fan-out and queue latency. Compare representative runs; one anomalous slow run isn't a baseline.

## Draft PR optimization

- Keep fast static checks and unit feedback where they are useful.
- Consider deferring expensive integration, end-to-end, packaging or full platform matrices until review-ready, with merge protection still intact.
- GitHub workflows skipped by a `paths`, branch, or commit filter can leave **required checks pending**. Prefer stable workflow triggers and conditional **jobs** when designing optional heavy checks.
- When a job is conditionally skipped, GitHub can report the result as successful; **do not** use that skipped job as the sole required full-verification gate. Design or retain an enforced ready/merge gate that actually executes the full suite at the right time, and verify branch rules and any merge queue.
- Trigger the appropriate `pull_request` activity types, including `ready_for_review`, `synchronize`, `reopened`, and `opened`. Add `merge_group` when merge queues are used. Verify required check names exist on the relevant SHA.
- Avoid broadly granting credentials in workflows that execute untrusted PR code. Keep permissions minimal.

## Proposals

For each suggestion, document measured current cost, frequency, change, expected savings, confidence, effect on test coverage, security, merge protection, and rollback path. Prefer 1–2 high-leverage changes rather than a large infrastructure rewrite.

Useful upstream sources:
- https://docs.github.com/en/pull-requests/how-tos/merge-and-close-pull-requests/troubleshooting-required-status-checks
- https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax
