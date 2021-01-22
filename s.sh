cd ~

shell_file=".bashrc"

if [ "$SHELL" == "/bin/zsh" ]; then
	shell_file=".zshrc"
fi

if [ ! -f "$shell_file" ]; then
cat > "$shell_file" << EOF

export GOPATH=$HOME/github.com/go
export GOBIN=$HOME/github.com/go/bin
export PATH=$PATH:$GOPATH:$GOBIN:/usr/local/Cellar/llvm/11.0.0_1/bin

if [ "$SHELL" = "/bin/zsh" ]; then
 	export PS1='%F{162}[%n@%m:%d]%f'
fi

if [ "$SHELL" = "/bin/bash" ]; then
 	export PS1='\e[31;1m\][\u@\h:\w]\e[0m\]'
fi

alias ll='ls -l'
alias l='ls -al'

EOF
fi
