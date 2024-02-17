# colordiff
if [[ -x $(which colordiff) ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

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

# Remove duplicate paths
typeset -U PATH
