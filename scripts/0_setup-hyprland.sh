#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

echo "Installing core programs..."
paru -S --needed --noconfirm waybar bitwarden tumbler firefox swww thunar \
    swaync hyprpolkitagent hyprlock xarchiver gazelle-tui hyprshot ninja \
    fuzzel nwg-look qt6-wayland github-desktop nordic-theme papirus-icon-theme \
    cmake go zig uv typst brightnessctl ttf-jetbrains-mono-nerd imv mpv \
    gimp viu wl-clipboard clang docker gvfs gvfs-mtp libmtp python3 go rust cargo \
    ripgrep lua51 luarocks wget stow python-pip python-pynvim wl-clipboard htop kitty

# create a new symlink
sudo ln -s /usr/bin/python3 /usr/bin/python

echo "Adding user to input group..."
sudo usermod -aG input "$USER"

echo "Setting up SDDM theme..."
sudo cp -r ~/.dotfiles-cachyos/sddm/ /usr/share/sddm/themes/nordic-mountains/
echo -e "[Theme]\nCurrent=nordic-mountains" | sudo tee /etc/sddm.conf

echo "Copying configs..."
cp ~/.dotfiles-cachyos/wallpapers/the-sphere.png ~/.config/hypr/wallpaper.png
sudo cp ~/.dotfiles-cachyos/wallpapers/the-sphere.png /usr/share/sddm/themes/nordic-mountains/Backgrounds/wallpaper.png

echo "Removing bloat..."
paru -R --noconfirm dolphin modemmanager 

echo "Creating docker group..."
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
newgrp docker

echo "Setup complete! Log out and back in for all changes to take effect."
