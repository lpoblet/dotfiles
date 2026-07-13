#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd "$DOTFILES_DIR"

DRY_RUN=false
INSTALL_CLI=false
INSTALL_GUI=false

# Categories
CLI_APPS=(
    arch
    bashAliases
    btop
    debian
    fastfetch
    fedora
    git
    lazygit
    nvim
    ranger
    starship
    systemd
    tmux
    vim
)

GUI_APPS=(
    alacritty
    blueman
    fontconfig
    hypr
    swaync
    waybar
)

# Detect distro and set specific app
DISTRO_APP=""
if [ -f /etc/arch-release ]; then
    DISTRO_APP="arch"
elif [ -f /etc/debian_version ]; then
    DISTRO_APP="debian"
elif [ -f /etc/fedora-release ]; then
    DISTRO_APP="fedora"
fi

show_help() {
    echo "Usage: ./install.sh [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -d, --dry-run  Show what would be done without making changes"
    echo "  -c, --cli      Install CLI configurations"
    echo "  -g, --gui      Install GUI configurations"
    echo "  -a, --all      Install all configurations (default)"
    echo "  -h, --help     Show this help message"
}

check_dependencies() {
    local deps=("stow" "git")
    local missing=()

    for dep in "${deps[@]}"; do
        if ! command -v "$dep" &> /dev/null; then
            missing+=("$dep")
        fi
    done

    if [ ${#missing[@]} -ne 0 ]; then
        echo "Error: The following dependencies are missing: ${missing[*]}"
        echo "Please install them before running this script."
        exit 1
    fi
}

install_app() {
    local app=$1
    local flags="-R"

    if [ "$DRY_RUN" = true ]; then
        flags="-n -R -v"
    fi

    if [ -d "$app" ]; then
        echo "Stowing $app..."
        if ! stow $flags "$app"; then
            echo "Error: Failed to stow $app. Continuing with others..." >&2
            return 0
        fi
    else
        echo "Warning: Directory $app does not exist. Skipping."
    fi
}

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -d|--dry-run) DRY_RUN=true; shift ;;
        -c|--cli) INSTALL_CLI=true; shift ;;
        -g|--gui) INSTALL_GUI=true; shift ;;
        -a|--all) INSTALL_CLI=true; INSTALL_GUI=true; shift ;;
        -h|--help) show_help; exit 0 ;;
        *) echo "Unknown option: $1"; show_help; exit 1 ;;
    esac
done

# Default to all if no category specified
if [ "$INSTALL_CLI" = false ] && [ "$INSTALL_GUI" = false ]; then
    INSTALL_CLI=true
    INSTALL_GUI=true
fi

check_dependencies

echo "Installing dotfiles..."
[ "$DRY_RUN" = true ] && echo "--- DRY RUN MODE ---"

APPS_TO_INSTALL=()
if [ "$INSTALL_CLI" = true ]; then
    for app in "${CLI_APPS[@]}"; do
        # Only add distro-specific app if it matches the current distro
        if [[ "$app" == "arch" || "$app" == "debian" || "$app" == "fedora" ]]; then
            if [ "$app" == "$DISTRO_APP" ]; then
                APPS_TO_INSTALL+=("$app")
            fi
        else
            APPS_TO_INSTALL+=("$app")
        fi
    done
fi
[ "$INSTALL_GUI" = true ] && APPS_TO_INSTALL+=("${GUI_APPS[@]}")

for app in "${APPS_TO_INSTALL[@]}"; do
    install_app "$app"
done

echo "Done!"
