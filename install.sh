#!/usr/bin/env bash

# Check if stow is installed
if ! command -v stow &> /dev/null; then
    echo "Error: GNU Stow is not installed. Please install it first."
    exit 1
fi

DOTFILES_DIR=$(pwd)

# List of directories to stow
# You can comment out things you don't want to stow
APPS=(
    alacritty
    bashAliases
    blueman
    btop
    fastfetch
    #fontconfig
    git
    hypr
    #i3
    lazygit
    nvim
    ranger
    #starship
    swaync
    systemd
    tmux
    vim
    waybar
)

# Optional: Distro-specific shell configs
# Detect distro
if [ -f /etc/arch-release ]; then
    APPS+=(arch)
elif [ -f /etc/debian_version ]; then
    APPS+=(debian)
elif [ -f /etc/fedora-release ]; then
    APPS+=(fedora)
fi

echo "Installing dotfiles..."

for app in "${APPS[@]}"; do
    if [ -d "$app" ]; then
        echo "Stowing $app..."
        stow -R "$app"
    else
        echo "Warning: Directory $app does not exist. Skipping."
    fi
done

echo "Done!"
