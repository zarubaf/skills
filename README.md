# Skills by zarubaf

An extensible [Claude Code plugin marketplace](https://code.claude.com/docs/en/plugin-marketplaces) for independently installable skills.

## Install with `/plugin`

Inside an interactive Claude Code session:

```text
/plugin marketplace add zarubaf/skills
/plugin install dream@zarubaf-skills
/plugin install github-native@zarubaf-skills
```

Invoke Dream with `/dream:dream` (or `/dream:dream apply` / `/dream:dream verify`).

From the terminal instead:

```bash
claude plugin marketplace add zarubaf/skills
claude plugin install dream@zarubaf-skills
claude plugin install github-native@zarubaf-skills
```

User-level installation makes Dream available across repositories. It operates only on the repository in which you invoke it. GitHub issue reconciliation requires an authenticated GitHub CLI (`gh`).

## Keeping skills updated

Custom Claude Code marketplaces have auto-update disabled by default. To turn it on, open `/plugin`, go to **Marketplaces**, select `zarubaf-skills`, and choose **Enable auto-update**.

For manual updates:

```text
/plugin marketplace update zarubaf-skills
```

Or in a shell:

```bash
claude plugin update dream@zarubaf-skills
```

Plugins deliberately omit fixed versions so new Git commits can be picked up when auto-update is enabled. Reload plugins or begin a new Claude Code session after an update if needed.

## Available plugins

| Install ID | Skill | Purpose |
| --- | --- | --- |
| `dream@zarubaf-skills` | [Dream](skills/dream/SKILL.md) | Consolidate repository plans, documentation, Claude instructions, memory and GitHub issue state. |
| `github-native@zarubaf-skills` | [GitHub Native](skills/github-native/SKILL.md) | Prevent parallel tracking systems; organize work in GitHub issues, milestones, labels and PRs. |

## GitHub Native — think freely, track work in GitHub

Superpowers can still brainstorm, design and produce detailed temporary execution plans. GitHub Native makes GitHub the durable source of truth for tasks rather than creating numbered lanes, slices, spikes or dated plan documents. It prefers existing issues, sub-issues, dependencies, milestones, labels and linked PRs, accessed through `gh`.

Invoke `/github-native:github-native`, `/github-native:github-native organize` or `/github-native:github-native audit`. The default is read-only. If you want this policy applied consistently across sessions, see the optional [short `CLAUDE.md` policy](skills/github-native/references/superpowers.md); an ordinary skill cannot guarantee auto-invocation.

## Dream — let repositories forget

Coding agents accumulate numbered plans, dated notes, duplicate issues and contradictory instructions. Dream **consolidates instead of summarizing**: promote durable information into canonical locations, preserve unfinished work in GitHub, remove redundant artifacts, and aim for **net-negative maintained documentation LOC**, without losing unique decisions or requirements.

- `/dream:dream` — read-only audit and proposal.
- `/dream:dream apply` — reviewed local-file consolidation; no automatic GitHub issue changes.
- `/dream:dream verify` — check information preservation, links, instruction placement and LOC delta.

Dream is repository-local. It does not close GitHub issues without separate approval.

### Scheduled dreaming

Twice weekly (Monday and Thursday) is a sensible cadence for active repositories. [Scheduling guidance](skills/dream/examples/scheduling.md) outlines a safe GitHub Actions approach: a reviewable PR, separate approval for issue changes, and no log file generated after every run. The complete workflow is **not yet implemented**.

## Adding more skills

Add `skills/<name>/SKILL.md`, reference files and `skills/<name>/.claude-plugin/plugin.json`; then add an entry for that plugin to [`.claude-plugin/marketplace.json`](.claude-plugin/marketplace.json). Each plugin is installed separately as `<name>@zarubaf-skills`.

A legacy [manual installer](install.sh) is available, but **the plugin marketplace is the recommended installation method**.

## Validate before release

```bash
claude plugin validate .
claude plugin validate ./skills/dream
```

## License

[MIT](LICENSE).
