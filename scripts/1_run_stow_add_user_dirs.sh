#!/bin/bash

echo "Stow ---------------------------------------------------------------"

cd ~/.dotfiles-cachyos
mkdir -p ~/.config/_BKP
echo "-------"

mv ~/.config/alacritty ~/.config/_BKP/
mv ~/.config/astro ~/.config/_BKP/
mv ~/.config/btop ~/.config/_BKP/
mv ~/.config/fastfetch ~/.config/_BKP/
mv ~/.config/fish ~/.config/_BKP/
mv ~/.config/fuzzel ~/.config/_BKP/
mv ~/.config/geany ~/.config/_BKP/
mv ~/.config/gtk-3.0 ~/.config/_BKP/
mv ~/.config/gtk-4.0 ~/.config/_BKP/
mv ~/.config/htop ~/.config/_BKP/
mv ~/.config/hypr ~/.config/_BKP/
mv ~/.config/kitty ~/.config/_BKP/
mv ~/.config/nvim ~/.config/_BKP/
mv ~/.config/Thunar ~/.config/_BKP/
mv ~/.config/waybar ~/.config/_BKP/
mv ~/.config/xarchiver ~/.config/_BKP/
mv ~/.config/xfce4 ~/.config/_BKP/

stow config/
stow home/

cd ~

echo "Updating user directories..."
mkdir -p ~/Sites/ || echo "Warning: Failed to create Sites directory."
mkdir -p ~/Dev/ || echo "Warning: Failed to create Dev directory."
mkdir -p ~/Projetos/ || echo "Warning: Failed to create Dev directory."

echo "User directories updated."

