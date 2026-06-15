#!/bin/zsh

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# Install Homebrew
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  if [ "$(uname -m)" = "arm64" ]; then
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>"/Users/${USER}/.zprofile"
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
fi

# Install Xcode Command Line Tools
if ! xcode-select --print-path &>/dev/null; then
  echo "Command line tools not found. Installing..."
  xcode-select --install 2>/dev/null || true
  echo "Waiting for Xcode Command Line Tools installation to complete..."
  until xcode-select --print-path &>/dev/null; do sleep 5; done
  echo "Command line tools installed."
else
  echo "Command line tools are already installed."
fi

# Install chezmoi and apply dotfiles
brew install chezmoi
chezmoi init --source "$DOTFILES_DIR"
chezmoi apply

echo "Done."
