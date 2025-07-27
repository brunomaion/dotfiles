#Install ohmyposh

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

#Fonts

mkdir -p $HOME/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip -O $HOME/Downloads/firacode.zip
unzip $HOME/Downloads/firacode.zip -d $HOME/.local/share/fonts
fc-cache -f -v

#Tweaks -> Firacode Nerd Font Retina

#themes

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip

#Add: oh-my-posh init fish --config $HOME/.poshthemes/montys.omp.json | source
#in: gnome-text-editor $HOME/.config/fish/config.fish
