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


./confohmyposh.sh


echo "Carregando backups"


#Load Backup
cp ~/Desktop/DirBruno/dotfiles/.gitconfig ~/

dconf dump / > ~/Desktop/DirBruno/dotfiles/lixo #Copia descartavel
rm -rf ~/Desktop/DirBruno/dotfiles/lixo

dconf load / < ~/Desktop/DirBruno/dotfiles/gnome-backup
dconf load /org/gnome/terminal/legacy/profiles:/ < ~/Desktop/DirBruno/dotfiles/profile_terminal
cp ~/Desktop/DirBruno/dotfiles/config.fish ~/.config/fish/config.fish

echo "FIM do init.sh"

