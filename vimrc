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

" vim-plug configuration, need to install vim-plug first.
if !empty(glob("~/.vim/autoload/plug.vim"))
	call plug#begin("~/.vim/plugged")
	Plug 'ludovicchabant/vim-gutentags'
	call plug#end()
endif

" vim-gutentags configuration, need to install universal-ctags first.
if !empty(glob("~/.vim/plugged/vim-gutentags"))
	set tags=./.tags;.tags
	let g:gutentags_project_root = [".root", ".svn", ".git", ".hg", ".project"]
	let g:gutentags_ctags_tagfile = ".tags"
	let s:vim_tags = expand("~/.cache/tags")
	let g:gutentags_cache_dir = s:vim_tags
	let g:gutentags_ctags_extra_args = ["--fields=+niazS", "--extra=+q"]
	let g:gutentags_ctags_extra_args += ["--c++-kinds=+px"]
	let g:gutentags_ctags_extra_args += ["--c-kinds=+px"]
	if !isdirectory(s:vim_tags)
		silent! call mkdir(s:vim_tags, "p")
	endif
endif
