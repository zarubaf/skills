# `gh` workflows

Use `gh` for GitHub mutations; do not require a custom API integration. Commands here reflect GitHub CLI capabilities; inspect `gh <command> --help` for the installed version. Explicitly use `--repo OWNER/REPO` if the current directory is ambiguous.

## Inspect before creating

```bash
git rev-parse --show-toplevel
git remote get-url origin
gh auth status
gh repo view --json nameWithOwner,defaultBranchRef
gh issue list --state open --limit 100 --json number,title,body,labels,milestone,url
gh pr list --state open --limit 50 --json number,title,url
gh label list --limit 100
```

Search relevant terms rather than dumping the full backlog:

```bash
gh issue list --state all --search 'authentication in:title,body' --limit 50
gh issue view 123 --json number,title,body,state,labels,milestone,url
gh pr list --state merged --search 'authentication' --limit 30
```

## Create or update only after approval

```bash
gh issue create --title "Implement token revocation" --body "Outcome: ...\n\nAcceptance criteria:\n- [ ] ..."
gh issue edit 123 --body-file /path/to/reviewed-body.md
gh issue create --title "Add device revocation endpoint" --parent 123 --body "..."
gh issue edit 123 --add-sub-issue 124
gh issue edit 124 --add-blocked-by 125
gh issue edit 123 --milestone "Next release"
gh pr create --title "feat: implement token revocation" --body "Closes #123"
```

Use `--body-file` for multi-line content; shell-escaped `\n` within double quotes is often literal text. Do not create local numbered plan files as a byproduct of calling `gh`; use stdin or temporary files outside the repo and clean them up.

Sub-issues and dependencies depend on repository support and CLI version. If a flag is unavailable, give an accurate limitation rather than inventing unsupported flags or replacing native links with a custom hierarchy.

For labels/milestones, inspect what exists first. Apply only relevant existing options; a missing classification generally does not justify creating one.

## Reconciliation safety

Produce a change plan naming exact issue numbers and intended updates. Confirm authorization before bulk changes. When work appears complete, compare tests and acceptance criteria with merged PRs; do not assume a merged PR resolves everything.

For every mutation, verify the returned URL/state through `gh issue view` or `gh pr view` before reporting success.
