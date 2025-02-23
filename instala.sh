#!/bin/bash

cp i3 ~/.config/ -r
cp kitty ~/.config -r
cp polybar ~/.config -r
cp rofi ~/.config -r
cp picom.conf ~/.config/
cp polybar.sh ~/
cp tema.sh ~/
cp wallpapper.sh ~/
cp wall2.jpg ~/
cp wallnew.jpg ~/

sudo pacman -Sy
sudo pacman -S picom kitty polybar rofi feh git gifsicle qemu-full nautilus networkmanager-openvpn openvpn libreoffice-fresh firefox hunspell remmina libvncserver ttf-font-awesome awesome-terminal-fonts xclip rofi-calc rofi-emoji python-pywal16 wget curl
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
mkdir ~/temp && cd ~/temp
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg
ls paru*.zst | sudo pacman -U -
sudo rm ~/temp -r
paru -S xwinwrap-0.9-bin visual-studio-code-bin diodon zapzap-git vesktop spotify_player brave-bin hunspell-pt-br dbeaver-ce-bin
gpasswd -a $(whoami) wheel
gpasswd -a $(whoami) libvirt
gpasswd -a $(whoami) gamemode
gpasswd -a $(whoami) docker
gpasswd -a $(whoami) plugdev
sudo virsh net-autostart default
sudo virsh net-start default
