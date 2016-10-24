# ignorespace and ignoredups
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

export DOTFILES=$HOME/dotfiles

export PATH=$DOTFILES/bin:$PATH

alias cd~='cd ~'
alias cd..='cd ..'
alias sl='cd'
alias sl~='cd ~'
alias sl..='cd ..'

alias ls='ls -F --color=auto'
alias ll='ls -lh'
alias lla='ll -A'
alias lsa='ls -A'

alias mkdir='mkdir -pv'

alias shutdown='sudo shutdown now'

source /usr/share/bash-completion/bash_completion
complete -o nospace -F _cd sl

