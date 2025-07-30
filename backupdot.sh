sudo cp ~/.gitconfig ~/Desktop/DirBruno/dotfiles
dconf dump / > ~/Desktop/DirBruno/dotfiles/gnome-backup

#Fish config
cp ~/.config/fish/config.fish ~/Desktop/DirBruno/dotfiles/config.fish


#Terminal profile
dconf dump /org/gnome/terminal/legacy/profiles:/ > ~/Desktop/DirBruno/dotfiles/profile_terminal

