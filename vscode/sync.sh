#!/bin/zsh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
VSCODE_SET_DIR="${HOME}/Library/Application Support/Code/User"

ln -fnsv "${SCRIPT_DIR}/settings.json" "${VSCODE_SET_DIR}/settings.json"
