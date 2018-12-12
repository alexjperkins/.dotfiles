#
# ~/.bashrc
#

# config bash with git
source ~/.bash_git 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
PS1='[\u@\h \W]\$ '

# monitor command alias
alias monitor-set-up='xrandr --output HDMI-0 --auto --output DP-2 --auto --right-of HDMI-0 --output DP-5 --auto --right-of DP-2'

# Git branch in prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1
PROMPT_COMMAND="__git_ps1 '[ \t ] \${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u\[\033[01;31m\]@\h\[\033[00m\] :: \[\033[01;34m\]\w\[\033[00m\]' ' \n\\\$ '"
