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

" This is amazing configuration.

" Vim-plug
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
call plug#end()

" Vim Mapper
nnoremap z i<BS><Esc>l
inoremap jj <Esc>
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap < <><Esc>i
"inoremap ' ''<Esc>i
"inoremap " ""<Esc>i
"inoremap <A-h> <Left>
"inoremap <A-j> <Down>
"inoremap <A-k> <Up>
"inoremap <A-l> <Right>

" Vim Configuration
syntax on
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
colorscheme onedark

" Coc.nvim Configuration
set hidden
set nobackup
set nowritebackup
set updatetime=500

EOF

fi
