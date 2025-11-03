# safer file operations
alias rm='rm -i' # interactive remove
alias mv='mv -i'
alias cp='cp -i'

# go to
alias ..='cd ..'
alias ...='cd ../..'
alias dot='cd ~/dotfiles/'
alias conf='cd ~/.config/'

# df
alias df='df -h' # human-readable sizes

# free
alias free='free -m' # show sizes in MB

# ls
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls --color=auto'

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# vim
#alias v='vim'
alias v='nvim'

# ranger
alias r='ranger'

# source bashrc
alias src='source ~/.bashrc'

# git
alias gs='git status'
alias gd='git diff'
alias ga='git add .'
alias gc='git commit'
alias gf='git fetch'
alias gl='git log --oneline --graph --decorate --all'

# python3
alias python='python3'
alias pip='pip3'

# cmatrix
alias cm='cmatrix' # launch cmatrix

# fastfetch
alias nf='fastfetch'
alias ff='fastfetch'

# nordVPN $ ip info
alias nords='nordvpn status'
alias nordset='nordvpn settings'
alias nordc='nordc'
alias nordar='nordvpn connect AR'
alias nordau='nordvpn connect AU'
alias nordd='nordd'
alias nordl='nordvpn login'
alias nordkson='nordvpn set killswitch on'
alias nordksoff='nordvpn set killswitch off'
alias nordcson='nordvpn set cybersec on'
alias nordcsoff='nordvpn set cybersec off'
alias nordacon='nordvpn set autoconnect on'
alias nordacoff='nordvpn set autoconnect off'
alias nordr='nordr'
alias myip='getmyipinfo'
function nordc() {
  nordvpn connect NZ
  nordacon
  nordkson
  nordcson
}
function nordr() {
  nordd
  nordc
}
function nordd() {
  nordacoff
  nordksoff
  nordcsoff
  nordvpn disconnect
}
function getmyipinfo() {
  curl ipinfo.io/ip
}

# docker
alias dh='docker --help'
alias dps='docker ps --all'
function dv {
  docker version
}
function dcc {
  docker container create $1
}
function dcs {
  docker container start $1
}
function dcsa {
  docker container start --attach $1
}
function dcup {
  docker compose up -d
}
function dl {
  docker logs $1
}
# docker run = docker container create + start + attach
function dr {
  docker run -d $1
}
function di {
  docker images
}
function dk {
  docker kill $1
}
function de {
  docker exec $1 $2
}
function dtty {
  docker exec --interactive --tty $1 bash
}
function ds {
  docker stop -t 0 $1
}
function drm {
  docker rm $1
}
function drma {
  docker ps -aq | xargs docker rm
}
function drmi {
  docker rmi $1
}

# System & process
alias update='sudo apt update && sudo apt upgrade -y' # Debian/Ubuntu; change for other distros
alias top='btop'                                      # if installed
alias psg='ps aux | grep -i -n'                       # search processes

# Networking
alias myip='curl -s https://icanhazip.com'

# Kubernetes (kubectl) if installed
alias k='kubectl'
alias kgp='kubectl get pods -o wide'
alias kgs='kubectl get svc'
alias kctx='kubectl config use-context'
alias kns='kubectl config set-context --current --namespace'

# Tmux shortcuts
alias t='tmux attach || tmux new -s main'
