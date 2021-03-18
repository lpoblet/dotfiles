# ls
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# rm
alias rm='rm-i'

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
