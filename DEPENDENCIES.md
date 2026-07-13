# System Dependencies

This table lists the system packages required for each component of these dotfiles across supported distributions.

| Component | Arch Linux | Debian / Ubuntu | Fedora |
| :--- | :--- | :--- | :--- |
| **Core Utilities** | `stow`, `git`, `base-devel` | `stow`, `git`, `build-essential` | `stow`, `git`, `development-tools` |
| **Window Manager** | `hyprland`, `hyprpaper`, `hypridle`, `hyprlock`, `hyprsunset`, `hyprpolkitagent` | `hyprland` (via external repo/manual) | `hyprland`, `hyprpaper`, `hypridle`, `hyprlock` |
| **Status Bar** | `waybar`, `otf-font-awesome` | `waybar`, `fonts-font-awesome` | `waybar`, `fontawesome-fonts` |
| **Terminal** | `alacritty` | `alacritty` | `alacritty` |
| **Editor** | `neovim`, `vim` | `neovim`, `vim` | `neovim`, `vim` |
| **Shell & Prompt** | `bash`, `starship` | `bash`, `starship` | `bash`, `starship` |
| **File Manager** | `ranger`, `thunar` | `ranger`, `thunar` | `ranger`, `thunar` |
| **Notifications** | `swaync` | `swaync` | `swaync` |
| **System Info** | `btop`, `fastfetch` | `btop`, `fastfetch` | `btop`, `fastfetch` |
| **Git Tool** | `lazygit` | `lazygit` | `lazygit` |
| **Bluetooth** | `bluez`, `bluez-utils`, `blueman` | `bluez`, `blueman` | `bluez`, `blueman` |
| **Audio** | `wireplumber`, `pipewire`, `helvum` | `wireplumber`, `pipewire`, `helvum` | `wireplumber`, `pipewire`, `helvum` |
| **Network** | `networkmanager`, `iwgtk` | `network-manager`, `iwgtk` | `NetworkManager`, `iwgtk` |
| **Display/Misc** | `brightnessctl`, `hyprshot`, `snixembed`, `wofi` | `brightnessctl`, `wofi` | `brightnessctl`, `wofi` |
| **Fonts** | `ttf-jetbrains-mono`, `noto-fonts-emoji`, `ttf-nerd-fonts-symbols` | `fonts-jetbrains-mono`, `fonts-noto-color-emoji` | `jetbrains-mono-fonts`, `google-noto-emoji-color-fonts` |

> **Note**: For Hyprland components on Debian and Fedora, some packages might require third-party repositories (like Copr for Fedora) or manual compilation if they are not available in the official stable repositories.
