#!/bin/bash

cd ~

# This is shell configuration.

shell_file=".bashrc"

if [ "$SHELL" = "/bin/zsh" ]; then
	shell_file=".zshrc"
fi

if [ ! -f "$shell_file" ]; then
cat > "$shell_file" << EOF

export GOPATH=$HOME/github.com/go
export GOBIN=$HOME/github.com/go/bin
export PATH=$PATH:$HOME/github.com/go:$HOME/github.com/go/bin

alias ll='ls -l'
alias l='ls -al'

EOF
echo "INFO: $HOME/$shell_file file create successful."
fi

#############################################################################

# This is vim Configuration.

if [ ! -d ".vim/autoload" ]; then

git clone https://github.com/junegunn/vim-plug
mkdir -p .vim/autoload/
cp vim-plug/plug.vim .vim/autoload/plug.vim
rm -rf vim-plug
echo "INFO: $HOME/.vim/autoload folder is create successful."

fi

if [ ! -f ".vimrc" ]; then
cat > ".vimrc" << EOF

call plug#begin('~/.vim/plugged')
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.vim/cache/tags')
let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

syntax off
set tabstop=8
set softtabstop=8
set shiftwidth=8
set shiftround
set smarttab
set autoindent
set cindent
set nocompatible
let loaded_matchparen=1

inoremap jj <Esc>
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

EOF
echo "INFO: $HOME/.vimrc file is create successful."
fi
