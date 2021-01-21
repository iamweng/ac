export GOPATH=$HOME/github.com/go
export GOBIN=$HOME/github.com/go/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH:$GOBIN

if [ "$SHELL" = "/bin/zsh" ]; then
	export PS1='%F{120}[%n@%m:%d]%f'
fi

if [ "$SHELL" = "/bin/bash" ]; then
	export PS1='\e[33;1m\][\u@\h:\w]\e[0m\]'
fi

alias vi='vim'
alias ll='ls -l'
alias l='ls -al'

