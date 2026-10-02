# System Dependencies

This table lists the system packages required for each component of these dotfiles across supported distributions.

| Component | Arch Linux | Debian / Ubuntu | Fedora |
| :--- | :--- | :--- | :--- |
| **Core Utilities** | `stow`, `git`, `base-devel`, `bat` | `stow`, `git`, `build-essential`, `bat` | `stow`, `git`, `development-tools`, `bat` |
| **Window Manager** | `hyprland`, `hyprpaper`, `hypridle`, `hyprlock`, `hyprsunset`, `hyprpolkitagent`, `sway`, `lxqt` | `hyprland` (via external repo/manual), `sway`, `lxqt` | `hyprland`, `hyprpaper`, `hypridle`, `hyprlock`, `sway`, `lxqt` |
| **Status Bar** | `waybar`, `otf-font-awesome` | `waybar`, `fonts-font-awesome` | `waybar`, `fontawesome-fonts` |
| **Terminal** | `alacritty` | `alacritty` | `alacritty` |
| **Editor** | `neovim`, `vim` | `neovim`, `vim` | `neovim`, `vim` |
| **Shell & Prompt** | `bash`, `starship` | `bash`, `starship` | `bash`, `starship` |
| **File Manager** | `superfile` (`spf`), `thunar` | `superfile` (`spf`), `thunar` | `superfile` (`spf`), `thunar` |
| **Notifications** | `swaync` | `swaync` | `swaync` |
| **System Info** | `btop`, `fastfetch` | `btop`, `fastfetch` | `btop`, `fastfetch` |
| **Git Tool** | `lazygit` | `lazygit` | `lazygit` |
| **Bluetooth** | `bluez`, `bluez-utils`, `blueman` | `bluez`, `blueman` | `bluez`, `blueman` |
| **Audio** | `wireplumber`, `pipewire`, `helvum` | `wireplumber`, `pipewire`, `helvum` | `wireplumber`, `pipewire`, `helvum` |
| **Network** | `networkmanager`, `iwgtk` | `network-manager`, `iwgtk` | `NetworkManager`, `iwgtk` |
| **Display/Misc** | `brightnessctl`, `hyprshot`, `snixembed`, `wofi` | `brightnessctl`, `wofi` | `brightnessctl`, `wofi` |
| **Fonts** | `ttf-jetbrains-mono`, `noto-fonts-emoji`, `ttf-nerd-fonts-symbols` | `fonts-jetbrains-mono`, `fonts-noto-color-emoji` | `jetbrains-mono-fonts`, `google-noto-emoji-color-fonts` |

> **Note**: For Hyprland components on Debian and Fedora, some packages might require third-party repositories (like Copr for Fedora) or manual compilation if they are not available in the official stable repositories. `superfile` can be installed via its official installer script (`bash -c "$(curl -sLo- https://superfile.netlify.app/install.sh)"`), AUR (`superfile-bin`), or Go.
