#!/bin/bash
# author: wengy
# date: 04/14/2021

cd ~ # initialization work dir to home work dir
shell_file=".bashrc" # initialization var shell_file

# This is shell_configuration method.
shell_configuration() {
	# This is shell configuration.
	cp ac/shellrc $shell_file
	echo "INFO: $HOME/$shell_file file create successful."
}

# This is vim_configuration method.
vim_configuration() {
	# This is .vimrc configuration.
	cp ac/vimrc .vimrc
	echo "INFO: .vimrc file is create successful."
}

# This is vim_plug_configuration method.
vim_plug_configuration() {
	# This is vim-plug configuration.
	git clone https://github.com/junegunn/vim-plug
	mkdir -p .vim/autoload/
	rm -rf .vim/plugged
	mkdir .vim/plugged/
	cp vim-plug/plug.vim .vim/autoload/plug.vim
	rm -rf vim-plug
	echo "INFO: $HOME/.vim/autoload folder is create successful."
}

# This is bash_profile_configuration method.
bash_profile_configuration() {
	# This is .bash_profile configuration.
	mv ac/bash_profile .bash_profile
	echo "INFO: .bash_profile file create successful."
}

# This is get_current_shell_file method.
get_current_shell_file() {
	shell_file=".bashrc"
	if [ "$SHELL" = "/bin/zsh" ]; then
		shell_file=".zshrc"	
	fi
}

# This is create_file method.
create_file() {
	if [ ! -f "$1" ]; then
		read -p "Do you want to create $1 file ? Y/N: " answer
	elif [ -f "$1" ]; then
		read -p "Do you want to overwrite $1 file ? Y/N: " answer
	fi
	
	case $answer in
	y | Y | YES | yes)
		rm -f $1
	        $2;;
	n | N | NO | no)
		;;
	*)
	        echo "ERROR: You must enter Y/N."
		exit 2
	esac
}

# This is create_folder method.
create_folder() {
	if [ ! -d "$1" ]; then
		read -p "Do you want to create $1 folder ? Y/N: " answer
	elif [ -d "$1" ]; then
		read -p "Do you want to overwrite $1 folder ? Y/N: " answer
	fi
	
	case $answer in
	y | Y | YES | yes)
		rm -rf $1
	        $2;;
	n | N | NO | no)
		;;
	*)
	        echo "ERROR: You must enter Y/N."
		exit 2
	esac
}

# This is main method.
main() {
	get_current_shell_file
	create_file $shell_file shell_configuration
	if [ "$SHELL" = "/bin/bash" ]; then
		create_file .bash_profile bash_profile_configuration
	fi
	create_folder .vim/autoload vim_plug_configuration
	create_file .vimrc vim_configuration
}
main
