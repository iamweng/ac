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
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

" Vim Configuration
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

" Vim-gutentags Configuration
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

EOF

fi
