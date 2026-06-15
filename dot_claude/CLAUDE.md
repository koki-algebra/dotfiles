# Rules

## Shell Command Rules

- Never use `cd` to change the working directory.
- Always run commands from the project root using absolute paths or path arguments (e.g., `npm run build --prefix /path/to/project`).
- If a tool or command requires a specific directory, pass the directory as an argument rather than changing into it.

## Git Rules

- Never use `git checkout` to switch branches or restore files.
- Use `git switch` to switch branches (e.g., `git switch main`, `git switch -c new-branch`).
- Use `git restore` to discard working tree changes (e.g., `git restore file.txt`).

## Tool Rules

- Never use `find` to search for files; use `fd` instead.
- Never use `grep` to search file contents; use `rg` (ripgrep) instead.
- When parsing JSON output (e.g., from `gh` commands), use `jq` instead of string manipulation or manual parsing.
