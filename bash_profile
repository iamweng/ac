# If .bash_profile exists, bash doesn't read profile.
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
