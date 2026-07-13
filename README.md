# Dotfiles

This repository contains my personal configuration files (dotfiles) for various applications and environments.

## Overview

The configurations are organized by application/component. Most of them are structured to be used with [GNU Stow](https://www.gnu.org/software/stow/), making it easy to manage symlinks in your home directory.

### Key Components

- **Window Managers**: Hyprland, i3
- **Terminal**: Alacritty, tmux
- **Editor**: Neovim (LazyVim), Vim
- **Shell**: Configurations for Arch, Debian, Fedora, and common aliases
- **Bar/Notifications**: Waybar, SwayNC
- **Others**: btop, fastfetch, lazygit, ranger, starship

## Installation

### Prerequisites

- `stow` (GNU Stow)
- `git`

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Use the provided installation script to symlink the configurations:
   ```bash
   chmod +x install.sh
   ./install.sh --help    # Show all available options
   ./install.sh --all     # Install everything (CLI and GUI)
   ./install.sh --cli     # Install only CLI tools
   ./install.sh --gui     # Install only GUI tools
   ./install.sh --dry-run # See what would be changed
   ```

Alternatively, you can manually stow specific configurations:
```bash
stow nvim
stow alacritty
```

### Note on Editors

- **Neovim**: This setup uses [LazyVim](https://www.lazyvim.org/). Plugins will be installed automatically on the first run of `nvim`.

## Structure

The repository follows a structure compatible with GNU Stow:
`app-name/` -> containing the files as they should appear relative to the target directory (usually `$HOME`).

Example:
`nvim/.config/nvim/init.lua` will be symlinked to `~/.config/nvim/init.lua`.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
