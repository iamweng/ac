#!/bin/bash

cd ~

###########################################################################
###########################################################################
###########################################################################

# This is shell configuration.

shell_file=".bashrc"

if [ "$SHELL" = "/bin/zsh" ]; then
	shell_file=".zshrc"
fi

if [ ! -f "$shell_file" ]; then
cat > "$shell_file" << EOF
export http_proxy="socks5://127.0.0.1:1080"
export https_proxy="socks5://127.0.0.1:1080"
EOF
echo "INFO: $HOME/$shell_file file create successful."
fi

###########################################################################
###########################################################################
###########################################################################

# This is vim-plug configuration.

if [ ! -d ".vim/autoload" ]; then
git clone https://github.com/junegunn/vim-plug
mkdir -p .vim/autoload/
cp vim-plug/plug.vim .vim/autoload/plug.vim
rm -rf vim-plug
echo "INFO: $HOME/.vim/autoload folder is create successful."
fi

###########################################################################
###########################################################################
###########################################################################

# This is vim configuration.

if [ ! -f ".vimrc" ]; then
cat > ".vimrc" << EOF
syntax off
set number
set showmode
set noswapfile
set nobackup
set nocompatible
set nowrap
set noerrorbells
set ignorecase
set mouse-=a
set scrolloff=10
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
EOF
echo "INFO: .vimrc file is create successful."
fi

###########################################################################
###########################################################################
###########################################################################
