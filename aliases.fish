#CAT
alias -s tokengit="cat ~/Desktop/dotfiles/tokengit.txt | xclip -selection clipboard"

#DIR
alias -s cls="clear"
alias -s c="clear"
alias -s ..="cd .."
alias -s desk="cd ~/Desktop"
alias -s dbruno="cd ~/Desktop/DirBruno"
alias -s ddot="cd ~/Desktop/dotfiles"
alias -s disco="df -h"

#LINKS
alias -s fgpt="firefox https://chatgpt.com/"
alias -s fgoogle="firefox https://google.com/"
alias -s fyt="firefox https://youtube.com/"
alias -s fx="firefox https://x.com/"
alias -s ompc="nano ~/.config/fish/config.fish"
alias -s gmail="firefox https://gmail.com/"
alias -s drive="rclone mount gdrive: "$HOME/Desktop/GoogleDrive" --vfs-cache-mode writes"

#EXES
alias -s gogh='bash -c  "$(wget -qO- https://git.io/vQgMr)"'
alias -s ralias='fish $HOME/Desktop/dotfiles/aliases.fish'
alias -s text='gnome-text-editor'
alias -s textinit='gnome-text-editor $HOME/Desktop/dotfiles/init.sh'
alias -s textalias='gnome-text-editor $HOME/Desktop/dotfiles/aliases.fish'

alias -s textsoftware='gnome-text-editor $HOME/Desktop/dotfiles/softwares.sh'
