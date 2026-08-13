#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Bash aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Starship
#eval "$(starship init bash)"

# Use bash-completion, if available, and avoid double-sourcing
[[ $PS1 &&
  ! ${BASH_COMPLETION_VERSINFO:-} &&
  -f /usr/share/bash-completion/bash_completion ]] &&
    . /usr/share/bash-completion/bash_completion

# Script's folder
export PATH="~/scripts:$PATH"

# Vim keys on tty
#set -o vi

# Remove deltas when installing or updating flatpaks
flatpak() {
    if [[ "$1" == "install" || "$1" == "update" ]]; then
        command flatpak "$1" --no-static-deltas "${@:2}"
    else
        command flatpak "$@"
    fi
}
