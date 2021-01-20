#!/bin/bash

cd ~

if [ ! -d ".vim/autoload" ]; then

git clone https://github.com/junegunn/vim-plug
mkdir -p .vim/autoload/
cp vim-plug/plug.vim .vim/autoload/plug.vim
rm -rf vim-plug

fi

if [ ! -f ".vimrc" ]; then
cat > ".vimrc" << EOF

syntax off

set vb t_vb=
set tabstop=8
set softtabstop=8
set shiftwidth=8
set shiftround
set smarttab
set autoindent
set cindent
set nocompatible
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set langmenu=en_US.UTF-8
set helplang=en
set history=200
let loaded_matchparen=1

inoremap jj <Esc>

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
call plug#end()

colorscheme onedark

EOF
