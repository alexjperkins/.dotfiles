#
# ~/.bashrc
#

# config bash with git
source ~/.bash_git 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases 
source ~/.aliases
alias ls='ls --color=auto'
alias la='ls -a'
PS1='[\u@\h \W]\$ '

# Git branch in prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1
PROMPT_COMMAND="__git_ps1 '[ \t ] \${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u\[\033[01;31m\]@\h\[\033[00m\] :: \[\033[01;34m\]\w\[\033[00m\]' ' \n\\\$ '"
