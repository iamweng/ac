
export SYSPATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/bin
export LLVM=/usr/local/Cellar/llvm/11.0.0_1/bin
export GOPATH=/Users/wengy/github.com/go
export GOBIN=/Users/wengy/github.com/go/bin
export PATH=/Users/wengy/github.com/go:/Users/wengy/github.com/go/bin::

if [ "/bin/zsh" = "/bin/zsh" ]; then
 	export PS1='%F{162}[%n@%m:%d]%f'
fi

if [ "/bin/zsh" = "/bin/bash" ]; then
 	export PS1='\e[31;1m\][\u@\h:\w]\e[0m\]'
fi

alias ll='ls -l'
alias l='ls -al'

