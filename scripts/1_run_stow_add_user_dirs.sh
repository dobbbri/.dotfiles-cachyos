#!/bin/bash

echo "Stow ---------------------------------------------------------------"

sudo pacman -S stow tumbler bitwarden hyprpaper
sudo pacman -R blueman wofi wpaperd emote

echo "-------"

cd ~/.dotfiles-cachyos
mkdir -p ~/.config/bkp
echo "-------"

mv ~/.config/waybar ~/.config/bkp/waybar
stow waybar
echo "-------"

mv ~/.config/hypr ~/.config/bkp/hypr
stow hypr
echo "-------"

mv ~/.config/foot ~/.config/bkp/foot
stow foot
echo "-------"

mv ~/.config/fish ~/.config/bkp/fish
stow fish
echo "-------"

mv ~/.config/alacritty ~/.config/bkp/alacritty
stow alacritty
echo "-------"

stow astro
stow fzfc
stow vimbtw

cd ~

echo "Updating user directories..."
mkdir -p ~/Sites/ || echo "Warning: Failed to create Sites directory."
mkdir -p ~/Dev/ || echo "Warning: Failed to create Dev directory."
mkdir -p ~/Projetos/ || echo "Warning: Failed to create Dev directory."

echo "User directories updated."

