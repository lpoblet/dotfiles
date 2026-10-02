# Dotfiles

This repository contains my personal configuration files (dotfiles) for various applications and environments.

## Overview

The configurations are organized by application/component. Most of them are structured to be used with [GNU Stow](https://www.gnu.org/software/stow/), making it easy to manage symlinks in your home directory.

### Key Components

- **Window Managers**: Hyprland, Sway, LXQt
- **Terminal**: Alacritty, tmux
- **Editor**: Neovim (LazyVim), Vim
- **Shell**: Configurations for Arch, Debian, Fedora, and common aliases
- **File Manager**: superfile (`spf`), Thunar
- **Bar/Notifications**: Waybar, SwayNC
- **Backups/Automation**: Standalone systemd `.service`/`.timer` unit templates (`systemd/`) interfacing with the external scripts repository (`~/scripts`)
- **System Info / Tools**: btop, fastfetch, lazygit, starship

See [DEPENDENCIES.md](DEPENDENCIES.md) for a full list of system packages required for each component.

## Installation

### Prerequisites

- `stow` (GNU Stow)
- `git`

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/lpoblet/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Symlink the desired configurations using GNU Stow:
   ```bash
   stow alacritty
   stow superfile
   stow nvim
   stow tmux
   stow waybar
   ```

### Local Overrides

Host-specific settings (such as display resolutions, local credentials, or machine paths) are decoupled from version control using local override files:

- **Alacritty**: Copy `alacritty/.config/alacritty/alacritty-local.toml.example` to `~/.config/alacritty/alacritty-local.toml` (or inside `alacritty/.config/alacritty/`) to customize window dimensions and font size for your display.
- **Tmux**: Create `~/.config/tmux/tmux.local.conf` for machine-specific tmux options.
- **Git**: Create `~/.gitconfig.local` for machine-specific user profiles or signing keys.

### Note on Editors

- **Neovim**: This setup uses [LazyVim](https://www.lazyvim.org/). Plugins will be installed automatically on the first run of `nvim`.

## Structure

The repository follows a structure compatible with GNU Stow:
`app-name/` -> containing the files as they should appear relative to the target directory (usually `$HOME`).

Example:
`nvim/.config/nvim/init.lua` will be symlinked to `~/.config/nvim/init.lua`.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
