# colordiff
if [[ -x $(which colordiff) ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

# nvm
source $(brew --prefix nvm)/nvm.sh

# Golang
GOBIN=$HOME/go/bin
PATH=$PATH:$GOBIN

# PostgreSQL client
PATH=/opt/homebrew/Cellar/libpq/16.1_1/bin:$PATH

# MySQL client
PATH=/opt/homebrew/Cellar/mysql-client/8.3.0/bin:$PATH
