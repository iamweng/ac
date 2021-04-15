syntax on
set number
set showmode
set noswapfile
set nobackup
set nocompatible
set wrap
set noerrorbells
set ignorecase
set mouse-=a
set scrolloff=10
set noexpandtab
set fileencodings=utf-8,gb18030,ucs-bom,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set tabstop=8
set softtabstop=8
set shiftwidth=8
set shiftround
set autoindent
set cindent

inoremap jj <Esc>

if filereadable(expand("~/.vim/autoload/plug.vim"))
	call plug#begin("~/.vim/plugged")
	call plug#end()
endif

