# ls
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'

# rm
alias rm='rm -i'

# neofetch
alias nf='neofetch'

# mount
alias mountb='sudo mount /dev/sdb2 /mnt/bucket/'
alias mountp='sudo mount /dev/sdd1 /mnt/playground/'
alias mountw='sudo mount /dev/sde2 /mnt/windows/'

# source bashrc
alias src='source ~/.bashrc'

# NordVPN $ ip info
alias nords='nordvpn status'
alias nordc='nordvpn connect NZ'
alias nordar='nordvpn connect AR'
alias nordau='nordvpn connect AU'
alias nordd='nordvpn disconnect'
alias nordksoff='nordvpn set killswitch off'
alias nordkson='nordvpn set killswitch on'
alias nordr='nordr'
alias myip='getmyipinfo'
function nordr() {
	nordd
	nordksoff
	nordc
	nordkson
}
function getmyipinfo() {
	curl ipinfo.io/ip
}

# Git
alias gits='git status'
alias gitd='git diff'
alias gita='git add .'
#alias gitc='git commit -m' # find how to prompt for comment
alias gitp='git push'
alias gitf='git fetch'

# Python3
alias python='python3'
alias pip='pip3'
