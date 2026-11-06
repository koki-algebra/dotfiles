---
name: agent-browser
description: Browser automation CLI for AI agents. Use when the user needs to interact with websites, including navigating pages, filling forms, clicking buttons, taking screenshots, extracting data, testing web apps, or automating any browser task. Triggers include requests to "open a website", "fill out a form", "click a button", "take a screenshot", "scrape data from a page", "test this web app", "login to a site", "automate browser actions", or any task requiring programmatic web interaction. Also use for exploratory testing, dogfooding, QA, bug hunts, or reviewing app quality, and for automating Electron desktop apps.
allowed-tools: Bash(agent-browser:*)
---

# agent-browser

Fast browser automation CLI (installed via Homebrew: `brew install agent-browser && agent-browser install`).

## Start here

This file is a discovery stub, not the usage guide. Before running any `agent-browser` command, load the workflow content that matches the installed CLI version:

```bash
agent-browser skills get core             # the loop, refs, waits, common tasks, troubleshooting
```

The core guide ends with a table of references to load for detailed commands and flags. Use `agent-browser skills get core --full` only when you need every reference at once.

## Specialized skills

```bash
agent-browser skills list                  # everything available on the installed version
agent-browser skills get electron          # Electron desktop apps (VS Code, Slack, Figma, ...)
agent-browser skills get dogfood           # Exploratory testing / QA / bug hunts
```
