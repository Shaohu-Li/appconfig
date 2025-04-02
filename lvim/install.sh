#!/usr/bin/bash
# installs nvm (Node Version Manager)
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
chmod +x nvm_install.sh
bash ./nvm_install.sh

nvm install 22
nvm use 22 # Active the latest version

# install latest cargo and rustc
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"

# install neovim-0.9.0
cp -r packages/nvim-0.9.1/* /usr/local/

# install npm
apt-get update
apt-get install -y npm python3 python-is-python3 pip shellcheck

# install npm
apt-get install -y codespell flake8 black isort

# change npm registry
npm config set registry https://mirrors.huaweicloud.com/repository/npm/

LV_BRANCH='release-1.4/neovim-0.9' bash lvim-install.sh -y
mkdir ~/.config/lvim
cp -r * ~/.config/lvim/

# global clangd setting
cp -r ./clangd ~/.config/

echo "Installation done. For additional install, please refer to README"
