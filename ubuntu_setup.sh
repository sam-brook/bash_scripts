#! /bin/bash

# Install basics
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim lsd npm cargo

# Install Go
curl -L https://go.dev/dl/go1.24.2.linux-amd64.tar.gz -o go1.24.2.linux-amd64.tar.gz
sudo mkdir /usr/local
sudo tar -xzf go1.24.2.linux-amd64.tar.gz -C /usr/local
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc

git config --global user.name "Sam Brook"
git config --global user.email "brooksyhap@gmail.com"
git config --global init.defaultBranch "main"

git clone https://github.com/sam-brook/nvim_config.git ~/.config/nvim
