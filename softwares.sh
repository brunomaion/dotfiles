# Lista de pacotes
PACKAGES=(
  git
  curl
  vim
  neovim
  htop
  fish
  libreoffice
  gnome-tweaks
  openjdk-21-jdk
  maven
  mysql-server
  python3
  python3-pip
  r-base
  gnome-shell-extensions
  vlc
  qbittorrent
  steam
  rclone
  nodejs
  npm
) 


SNAP_PACKAGES=(
  "code --classic"
  "spotify"
  dbeaver-ce
  "kolourpaint --classic"
  postman
  "obsidian --classic"
  proton-vpn
)

echo "Atualizando lista de pacotes..."
sudo apt update

echo "📦 Instalando pacotes..."
for pkg in "${PACKAGES[@]}"; do
  echo "➡️ Instalando: $pkg"
  sudo apt install -y "$pkg"
done
echo "Todos os pacotes foram instalados."


echo "📦 Instalando pacotes Snap..."
for snap_pkg in "${SNAP_PACKAGES[@]}"; do
  echo "➡️  Instalando: snap install $snap_pkg"
  sudo snap install $snap_pkg
done

# OUTROS PROGRAMAS


#Fastfetch
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt install fastfetch
