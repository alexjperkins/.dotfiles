#
# ~/.bashrc
#

# config bash with git
source ~/.bash_git 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi
alias ls='ls --color=auto'
alias la='ls -a'

#get virtualenv info 
BLUE=$(tput setaf 4)
YELLOW=$(tput setaf 190)
BRIGHT=$(tput bold)
COLOUR_NONE=$(tput sgr0)

function __set_virtualenv() {
	if test -z "$VIRTUAL_ENV" ; then 
		PYTHON_VIRTUALENV=""
	else
		PYTHON_VIRTUALENV="$YELLOW$BOLD(`basename \"$VIRTUAL_ENV\"`)$COLOUR_NONE "
		printf $PYTHON_VIRTUALENV 

	fi
}

PS1='[\u@\h \W]\$ '

# Git branch in prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1
PROMPT_COMMAND="__set_virtualenv; __git_ps1 '[ \t ] \${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u\[\033[01;31m\]@\h\[\033[00m\] :: \[\033[01;34m\]\w\[\033[00m\]' ' \n\\\$ '"
