#!/bin/bash
# to make execurable
# chmod +x install_nodejs.sh

echo "- Dowload NVM  -----------------------------------------------"

sudo pacman -S nvm

# nvm ls-remote --lts

nvm install 22
nvm use 22 

echo "- Install NPM packages --------------------------------------------------"

npm i -g @ast-grep/cli npm-check-updates

node -v
npm -v


echo "- Install PNPM COREPACK packages --------------------------------------------------"

# curl -fsSL https://get.pnpm.io/install.sh | sh -
npm install --global corepack@latest
corepack enable pnpm
pnpm -v

# alias pnpm="corepack pnpm"
# alias pnpx="corepack pnpx"
# alias npm="corepack npm"
# alias npx="corepack npx"
