#!/bin/bash

# Git status prompt
if [ -f /usr/share/doc/git/contrib/completion/git-prompt.sh ]; then
        source /usr/share/doc/git/contrib/completion/git-prompt.sh
fi

# Exercism completion
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
      source ~/.config/exercism/exercism_completion.bash
fi


# Alias
alias la="ls -a"


# Colors variables
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)

# Stype variables
bold=$(tput bold)

# Reset style to normal
reset=$(tput sgr0)

# Prompt
## Contains: User, hostname, working-directory and git status.
PS1='\[$magenta$bold\][\[$reset\]\[$bold\]\u\[$reset\]\[$magenta$bold\]@\[$reset\]\[$bold\]\h\[$reset\] \[$blue$bold\]\W\[$reset\]\[$magenta$bold\]]\[$reset\]\[$yellow\]$(__git_ps1 " (%s)")\[$reset\]\$ '
