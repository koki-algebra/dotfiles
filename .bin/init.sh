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

# Install chezmoi
brew install chezmoi

# Configure chezmoi to use this repo as the source directory
mkdir -p "$HOME/.config/chezmoi"
cat > "$HOME/.config/chezmoi/chezmoi.toml" << EOF
sourceDir = "$DOTFILES_DIR"
EOF

# Apply dotfiles
chezmoi apply

echo "Done."
