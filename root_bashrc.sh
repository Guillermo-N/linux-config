# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#PS1="\e[0;31m[\u@\h \W]\\#\e[0m "

green=$(tput setaf 2)
red=$(tput setaf 1)
blue=$(tput setaf 4)
yellow=$(tput setaf 3)
bold=$(tput bold)
reset=$(tput sgr0)

PS1=$'\[$green$bold\][\[$reset\]\[$red\]\u\[$reset\]\[$green$bold\]@\[$reset\]\h \[$blue$bold\]\W\[$reset\]\[$green$bold\]]\[$reset\]\u0023 '
