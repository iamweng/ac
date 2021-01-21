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

" Vim Mapper set <Esc> <Left> <Down> <Up> <Right> to <Nop>
"nnoremap <Esc> <Nop>
"nnoremap <Left> <Nop>
"nnoremap <Down> <Nop>
"nnoremap <Up> <Nop>
"nnoremap <Right> <Nop>
"inoremap <Esc> <Nop>
"inoremap <Left> <Nop>
"inoremap <Down> <Nop>
"inoremap <Up> <Nop>
"inoremap <Right> <Nop>
"vnoremap <Esc> <Nop>
"vnoremap <Left> <Nop>
"vnoremap <Down> <Nop>
"vnoremap <Up> <Nop>
"vnoremap <Right> <Nop>

" Vim Mapper
nnoremap z i<BS><Esc>l
inoremap ,, <Esc>la
inoremap ff <Esc>
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
"inoremap <Alt-h> <Left>
"inoremap <Alt-j> <Down>
"inoremap <Alt-k> <Up>
"inoremap <Alt-l> <Right>

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
