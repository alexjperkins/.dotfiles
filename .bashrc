#
# ~/.bashrc
#

stty -ixon # Disable ctrl-s & ctrl-q
shopt -s autocd #Allows cd into a directory by directory name

# config bash with git
if [ -f ~/.bash_git ]; then
	source ~/.bash_git
else
    echo "installing .bash_git..."
    curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git
	source ~/.bash_git
fi
# if no .bash_git run the following command
# curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git

# config bash-completion
if [ -f ~/bash-completion.bash ]; then
    source ~/bash-completion.bash
    # https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
if [ -f ~/.dotfiles/.aliases ]; then
    source ~/.aliases
fi
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

alias ls='ls --color=auto'
alias la='ls -a'

#get virtualenv info
BLUE=$(tput setaf 4)
YELLOW=$(tput setaf 190)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
COLOUR_NONE=$(tput sgr0)

function __set_virtualenv() {
	if test -z "$VIRTUAL_ENV" ; then
		PYTHON_VIRTUALENV=""
	else
		PYTHON_VIRTUALENV="$YELLOW$BOLD(`basename \"$VIRTUAL_ENV\"`)\
            $COLOUR_NONE "
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
PROMPT_COMMAND="__set_virtualenv; __git_ps1 '$WHITE[ \t ]$COLOR_NONE \${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u\[\033[01;31m\]@\h\[\033[00m\] :: \[\033[01;34m\]\w\[\033[00m\]' ' \n\\\$ '"
