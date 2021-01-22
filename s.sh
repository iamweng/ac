export GOPATH=$HOME/github.com/go
export GOBIN=$HOME/github.com/go/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH:$GOBIN
export PATH=$PATH:/usr/local/Cellar/llvm/11.0.0_1/bin

if [ "$SHELL" = "/bin/zsh" ]; then
 	export PS1='%F{120}[%n@%m:%d]%f'
fi

if [ "$SHELL" = "/bin/bash" ]; then
 	export PS1='\e[33;1m\][\u@\h:\w]\e[0m\]'
fi

alias ll='ls -l'
alias l='ls -al'

