# ignorespace and ignoredups
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

if [ -f "$HOME/.proxy" ]; then
	source "$HOME/.proxy"
fi

export DOTFILES=$HOME/dotfiles

export GOROOT=$HOME/go
export GOPATH=$HOME/gopath

export EDITOR=vim
export PATH=$DOTFILES/bin:$GOPATH/bin:$GOROOT/bin:$PATH

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

alias v='vim'

source /usr/share/bash-completion/bash_completion
complete -o nospace -F _cd sl

alias d='docker'
alias dc='docker-compose'
alias dimg='docker images'
alias dps='docker ps'
alias dpsa='docker ps --all'
alias dpsl='docker ps --latest'
alias drm='docker rm'
alias drma='docker rm $(docker ps --quiet --filter status=exited)'
alias dstart='docker start'
alias dstop='docker stop'
alias dstopa='docker stop $(docker ps --quiet)'

# load completion
_completion_loader docker
# _docker is a completion funcition. See: (complete | grep docker)
complete -F _docker d
complete -F _docker_images dimg
complete -F _docker_compose dc

command -v powershell &>/dev/null && powershell
