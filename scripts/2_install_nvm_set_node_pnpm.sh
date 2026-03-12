#!/bin/bash
# to make execurable
# chmod +x install_nodejs.sh

echo "- Dowload NodeJs installer -----------------------------------------------"

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
nvm ls-remote
nvm install 22

fish_add_path  ~/.local/share/nvm/v22.22.1/bin

echo 'export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.config/fish/config.fish

echo "- Install NPM packages --------------------------------------------------"
&&
npm i -g @ast-grep/cli npm-check-updates
&&
node -v
&&
npm -v
&&
nvm -v

echo "- Install PNPM COREPACK packages --------------------------------------------------"

# curl -fsSL https://get.pnpm.io/install.sh | sh -
npm install --global corepack@latest
corepack enable pnpm
pnpm -v

# alias pnpm="corepack pnpm"
# alias pnpx="corepack pnpx"
# alias npm="corepack npm"
# alias npx="corepack npx"
