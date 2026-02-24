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
  "gnome-tweaks -y"
  deafult-jdk
  maven
  mysql-server
  python3
  python3-pip
  r-base
  gnome-shell-extensions
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
  dbeaver-ce
  "kolourpaint --classic"
)

echo "📦 Instalando pacotes Snap..."
for snap_pkg in "${SNAP_PACKAGES[@]}"; do
  echo "➡️  Instalando: snap install $snap_pkg"
  sudo snap install $snap_pkg
done


#Fastfetch
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt install fastfetch

#FISH
echo "Iniciando configuração do Fish..."
## Mudando shell pro Fish
chsh -s /usr/bin/fish
# Carrega aliases.fish no shell Fish
fish -c "source $(pwd)/aliases.fish; echo 'Aliases carregados no Fish.'"


./confohmyposh.sh


echo "Carregando backups"


#Load Backup
cp ~/Desktop/dotfiles/.gitconfig ~/

dconf load / < ~/Desktop/dotfiles/gnome-backup
dconf load /org/gnome/terminal/legacy/profiles:/ < ~/Desktop/dotfiles/profile_terminal
cp ~/Desktop/dotfiles/config.fish ~/.config/fish/config.fish

echo "FIM do init.sh"

