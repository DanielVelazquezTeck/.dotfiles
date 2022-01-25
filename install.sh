#! /usr/bin/env bash

sudo pacman -Syu
sudo pacman -S yay
yay -S networkmanager
# systemctl enable NetworkManager

yay -S brave-bin
# Terminal
yay -S alacritty
mkdir -p ~/.config/alacritty && ln -sfn ~/.dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sfn ~/.dotfiles/.zshrc ~/.zshrc 
yay -S ttf-meslo-nerd-font-powerlevel10k                                                 ─╯

yay -S \
    rofi \
    rofi-emoji \
    rofi-calc \
    polybar

git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup

# Terminal Navigation
yay -S \
    ranger \
    exa \
    bat \
    tree \
    ripgrep \
    tldr \
    tmux \
    thefuck \
    fzf \
    jump

ln -sfn ~/.dotfiles/.tmux.conf ~/.tmux.conf && tmux source-file ~/.tmux.conf
# https://github.com/egel/tmux-gruvbox
ln -sfn ~/.dotfiles/.Xresources ~/.Xresources
xrdb -load ~/.Xresources
ln -sfn ~/.dotfiles/.config/ranger/rc.conf ~/.config/ranger/rc.conf
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Git
ln -sfn ~/.dotfiles/.gitconfig ~/.gitconfig 
yay -S lazygit github-cli
echo "function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc
git config --global alias.cm "commit -m"
git config --global alias.co "checkout"
git config --global alias.br "branch"
git config --global alias.st "status -sb"
git config --global core.editor "nvim"
git config --global alias.superlog "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# Neovim
yay -S neovim xclip
mkdir -p ~/.config/nvim && ln -sfn ~/.dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
ln -sfn ~/.dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
yay -S ccls \


# Developer
yay -S \
    base-devel \
    tcc \
    visual-studio-code-bin \
    firebase-tools-bin \
    python python-pip tk \
    pip3 install scipy
    hugo \
    nodejs npm nvm\
    npm i -g typescript
    jdk-openjdk \
    go go-tools 

# Networking
yay -S \
httpie \
ngrok-bin \
aria2 \
aircrack-ng \
speedtest-cli \
nload \
jq 


# insomnia postman transmission cyberduck
# go dotnet-sdk mono flutter
wget -qO- https://raw.githubusercontent.com/cra0zy/code-nautilus/master/install.sh | bash

# DevOps
yay -S \
docker \
lazydocker-bin \
sudo groupadd docker
sudo usermod -aG docker $USER
# reboot
# aws-cli heroku-cli

# Database Tools
yay -S \
sqlite \
litecli \
sqlitebrowser
#ln -sfn ~/.dotfiles/sqlite.rc ~/sqlite.rc \
# dbeaver
# postgres
# pgcli
# pgAdmin
# q
# mongodb
# mongodb-compass

# Cybersecurity
yay -S \
sublist3r-git \
burpsuite \
nikto \
wifite2 \
nmap

# Gnome
yay -S \
gnome-shell-extension-pop-shell-git \
gnome-themes-extra

# System
yay -S \
    bc \
    sc-im \
    gotop htop ncdu \
    neofetch \
    duf gdu ncdu \
    gparted testdisk unetbootin \
    7zip cfdisk \
    dejadup \
    bluez bluez-utils \
    # gnome-bluetooth \
    espeak-ng \
# arc-gtk-theme papirus ttf-firacode tts-ms-fonts ttf-ms-fonts noto-fonts
pacman -S ttf-liberation
# screenkey imwheel
# bitwarden vault keepass

# Networking
yay -S \
net-tools \
protonvpn \
# ntop \


# Utilities
# Images
yay -S gimp imagemagick
sudo npm i -g @squoosh/cli

yay -S \
zathura-pdf-poppler vlc mpv pandoc gimp youtube-dl deemix \
sc \
scrcpy \
sxiv \
slides-bin \
beamer-bin \
texlive-core \
tmpmail \
pipes \
cmatrix \
calibre-installer \


# Productivity
anki-bin \
zoom \
newsboat \
mkdir -p ~/.newsboat/ \
ln -sfn ~/.dotfiles/.config/newsboat/config ~/.newsboat/config \
ln -sfn ~/.dotfiles/.config/newsboat/urls ~/.newsboat/urls \


obs-studio   handbrake  audacity peek shutter

blender
kdenlive

# Finance
yay -S \
hledger-bin \
ledger \
timetrap
#yay -S uxplay avahi-daemon 
docker pull ghcr.io/gamestonkterminal/gst-poetry:latest                                             ─╯

# Crypto
yay -S \
monero-gui \
ticker \
cointop-bin



# Music
yay -S \
python-spotdl \
mpd \
ncmpcpp \
mpc \
mkdir ~/.config/mpd
mkdir ~/.config/mpd/playlists
ln -sfn ~/.dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf
ln -sfn ~/.dotfiles/.config/mpd/playlist ~/.config/mpd/playlist
mkdir ~/.config/ncmpcpp
ln -sfn ~/.dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp
ln -sfn ~/.dotfiles/.config/ncmpcpp/bindings ~/.config/ncmpcpp

# sudo pacman -S spotify-tui-bin spotifyd 


# Other
sudo pacman -S cmatrix pipes.sh

# Entertainmnet
# yay -S popcorntime-bin retroarch minecraft openttd 0ad tint-tetris

# Math
yay -S \
    qalculate \
    libqalculate \
    tungsten \
    mathics
