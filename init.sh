#!/bin/bash

./softwares.sh

# FISH
echo "\n\nIniciando configuração do Fish..."
## Mudando shell pro Fish
chsh -s /usr/bin/fish
# Carrega aliases.fish no shell Fish
fish -c "source $(pwd)/aliases.fish; echo 'Aliases carregados no Fish.'"


./confohmyposh.sh

#OUTROS PROGRAMAS
#RCLONE
sudo -v ; curl https://rclone.org/install.sh | sudo bash

echo "Carregando backups"


echo "" >> $HOME/dotfiles/tokengit.txt
mkdir $HOME/GoogleDrive


#Load Backup
cp ~/Desktop/dotfiles/.gitconfig ~/

dconf load / < ~/Desktop/dotfiles/gnome-backup
dconf load /org/gnome/terminal/legacy/profiles:/ < ~/Desktop/dotfiles/profile_terminal
cp ~/Desktop/dotfiles/config.fish ~/.config/fish/config.fish

echo "FIM do init.sh"

