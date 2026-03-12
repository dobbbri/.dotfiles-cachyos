#!/bin/bash

echo "- Install Neovim from image ---------------------------------------------"
sudo rm /usr/local/bin/nvim
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim

echo "- Install Neovim - languages --------------------------------------------"
sudo pacman -S python3 python-pip python-pynvim go rust cargo lua51 luarocks wl-clipboard

#pip
pip install neovim vim-vint --break-system-packages
# [vim-vint]  WARNING: The script pynvim-python is installed in '/home/sd/.local/bin' which is not on PATH.
# Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.

# create a new symlink
sudo ln -s /usr/bin/python3 /usr/bin/python

echo "- Install NPM packages --------------------------------------------------"
npm i -g neovim tree-sitter-cli
npm i -g typescript typescript-language-server

