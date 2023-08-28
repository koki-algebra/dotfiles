# colordiff
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

# node
PATH=$HOME/.nodebrew/current/bin:$PATH

# Golang
GOBIN=$HOME/go/bin
PATH=$PATH:$GOBIN
