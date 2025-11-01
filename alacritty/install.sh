#!/bin/bash
# Detect system and link appropriate config
if [ -f /etc/debian_version ]; then
  ln -sf ~/.config/alacritty/alacritty-debian.toml ~/.config/alacritty/alacritty-local.toml
elif [ -f /etc/arch-release ]; then
  ln -sf ~/.config/alacritty/alacritty-endeavour.toml ~/.config/alacritty/alacritty-local.toml
fi
