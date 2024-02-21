# rm
alias rm='rm -i'

# cp
alias cp='cp -i'			# confirm before overwritting something

# df
alias df='df -h'			# human-readable sizes

# free
alias free='free -m'			# show sizes in MB

# ls
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls --color=auto'

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# neovim
alias vim='nvim'
alias v='nvim'

# source bashrc
alias src='source ~/.bashrc'

# git
alias gits='git status'
alias gitd='git diff'
alias gita='git add .'
alias gitc='git commit'
alias gitf='git fetch'

# python3
alias python='python3'
alias pip='pip3'

# cmatrix
alias cm='cmatrix'			# launch cmatrix 

# mount
alias mountb='sudo mount /dev/sdb2 /mnt/bucket/'
alias mountp='sudo mount /dev/sde1 /mnt/playground/'
alias mountw='sudo mount /dev/sde2 /mnt/windows/'

# neofetch
alias nf='neofetch'

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


