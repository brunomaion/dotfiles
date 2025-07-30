#!/bin/bash

# Lista de pacotes
PACKAGES=(
  git
  curl
  vim
  neovim
  htop
  fish
  libreoffice
  gnome-tweaks -y
)

echo "Atualizando lista de pacotes..."
sudo apt update

echo "📦 Instalando pacotes..."
for pkg in "${PACKAGES[@]}"; do
  echo "➡️ Instalando: $pkg"
  sudo apt install -y "$pkg"
done
echo "Todos os pacotes foram instalados."

SNAP_PACKAGES=(
  "code --classic"
  "spotify"
)

echo "📦 Instalando pacotes Snap..."
for snap_pkg in "${SNAP_PACKAGES[@]}"; do
  echo "➡️  Instalando: snap install $snap_pkg"
  sudo snap install $snap_pkg
done


#FISH
echo "Iniciando configuração do Fish..."
## Mudando shell pro Fish
chsh -s /usr/bin/fish
# Carrega aliases.fish no shell Fish
fish -c "source $(pwd)/aliases.fish; echo 'Aliases carregados no Fish.'"


#HomeBrew
sudo apt install build-essential procps curl file git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.bash_profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#PacotesBREW

#Backup
cp /home/bruno/Desktop/DirBruno/dotfiles/.gitconfig ~/
dconf dump / > ~/Desktop/DirBruno/dotfiles/gnome-backup
