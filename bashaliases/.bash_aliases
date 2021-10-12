# cp
alias cp='cp -i'			# confirm before overwritting something

# df
alias df='df -h'			# human-readable sizes

# free
alias free='free -m'			# show sizes in MB

# git
alias gits='git status'
alias gitd='git diff'
alias gita='git add .'
#alias gitc='git commit -m' # find how to prompt for comment
alias gitp='git push'
alias gitf='git fetch'

# grep
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

# ls
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls --color=auto'

# mount
alias mountb='sudo mount /dev/sdb2 /mnt/bucket/'
alias mountp='sudo mount /dev/sde1 /mnt/playground/'
alias mountw='sudo mount /dev/sde2 /mnt/windows/'

# neofetch
alias nf='neofetch'

# neovim
#alias vim='nvim'

# nordVPN $ ip info
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

# python3
alias python='python3'
alias pip='pip3'

# rm
alias rm='rm -i'

# source bashrc
alias src='source ~/.bashrc'

