sudo cp ~/.gitconfig ~/Desktop/dotfiles
dconf dump / > ~/Desktop/dotfiles/gnome-backup

#Fish config
cp ~/.config/fish/config.fish ~/Desktop/dotfiles/config.fish


#Terminal profile
dconf dump /org/gnome/terminal/legacy/profiles:/ > ~/Desktop/dotfiles/profile_terminal

