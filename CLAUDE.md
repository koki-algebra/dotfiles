# CLAUDE.md

## Managed by chezmoi

This repository is the [chezmoi](https://www.chezmoi.io/) source directory for the home directory dotfiles.

- Edit source files in this repository, not the deployed files in `~` (e.g. `~/.zshrc`).
- Follow chezmoi naming conventions:
  - `dot_` becomes `.` in the target (e.g. `dot_zshrc` → `~/.zshrc`).
  - `modify_` files are scripts that transform the existing target file (e.g. `dot_claude/modify_settings.json`).
  - `.tmpl` files are rendered as Go templates.
- `.chezmoiscripts/` holds scripts run on `chezmoi apply`; `.chezmoitemplates/` holds shared templates.
- Add files that must not be deployed to `.chezmoiignore`. Files starting with `.` are ignored automatically.

## Preview and apply

- `chezmoi diff` / `make diff`: preview changes against the target.
- `chezmoi apply` / `make apply`: apply changes to `~`. Always run `chezmoi diff` first.
