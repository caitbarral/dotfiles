#!/bin/bash
set -e

declare -a packages=(
sway
wofi
kitty
firefox
neovim
fzf
ripgrep
ttf-cascadia-code-nerd
ruby
pavucontrol
guvcview
mako
waybar
wofi
wl-clipboard
btop
git
nvtop
mpv
swaybg
swayidle
swaylock
thunderbird
libreoffice
zola
pamixer
kanshi
python-i3ipc
newsboat
w3m
mpv
yt-dlp
slurp
grim
noto-fonts-emoji
)
sudo pacman -S --noconfirm --needed `echo $(echo "${packages[@]}")`

if ! pacman -Qs yay > /dev/null; then
  sudo pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..
  rm -rf yay
fi

yay -S --noconfirm --needed powerline-shell batsignal brightnessctl avizo

sudo cp -rsf ~/dotfiles/config/* ~/.config
sudo cp -sf ~/dotfiles/.bashrc ~
sudo cp -sf ~/dotfiles/.gitconfig ~
mkdir -p ~/dl ~/dev ~/wallpaper ~/docs
