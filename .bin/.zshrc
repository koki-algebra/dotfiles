# eza
if [[ -x $(which eza) ]]; then
  alias ls="eza"
fi

# bat
if [[ -x $(which bat) ]]; then
  alias cat="bat"
fi

# delta
if [[ -x $(which delta) ]]; then
  alias diff="delta"
fi

# fd
if [[ -x $(which fd) ]]; then
  alias find="fd"
fi

# ripgrep
if [[ -x $(which rg) ]]; then
  alias grep="rg"
fi

# direnv
eval "$(direnv hook zsh)"

# nvm
source $(brew --prefix nvm)/nvm.sh

# PostgreSQL client
export PATH=/opt/homebrew/opt/libpq/bin:$PATH

# MySQL client
export PATH=/opt/homebrew/opt/mysql-client/bin:$PATH

# Golang
export GOBIN=$HOME/go/bin
export PATH=$PATH:$GOBIN

switchGOROOT() {
  export GOROOT=$(go$1 env GOROOT)
  export PATH=$GOROOT/bin:$PATH
  go version
}

# Python
source "$HOME/.rye/env"
source $HOME/.local/bin/env

# Remove duplicate paths
typeset -U PATH
