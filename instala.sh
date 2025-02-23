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

sudo pacman -Syu
sudo pacman -S picom --noconfirm
sudo pacman -S kitty --noconfirm
sudo pacman -S polybar --noconfirm
sudo pacman -S rofi --noconfirm
sudo pacman -S feh --noconfirm
sudo pacman -S git --noconfirm
sudo pacman -S gifsicle --noconfirm
sudo pacman -S qemu-full --noconfirm
sudo pacman -S nautilus --noconfirm
sudo pacman -S networkmanager-openvpn --noconfirm
sudo pacman -S openvpn --noconfirm
sudo pacman -S libreoffice-fresh --noconfirm
sudo pacman -S firefox --noconfirm
sudo pacman -S hunspell --noconfirm
sudo pacman -S remmina --noconfirm
sudo pacman -S libvncserver --noconfirm
sudo pacman -S ttf-font-awesome --noconfirm
sudo pacman -S awesome-terminal-fonts --noconfirm
sudo pacman -S xclip rofi-calc --noconfirm
sudo pacman -S rofi-emoji --noconfirm
sudo pacman -S python-pywal16 --noconfirm
sudo pacman -S wget curl --noconfirm
sudo pacman -S cargo --noconfirm

mkdir ~/temp && cd ~/temp
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg
ls paru*.zst | sudo pacman -U -
sudo rm ~/temp -r
paru -S xwinwrap-0.9-bin visual-studio-code-bin diodon zapzap-git vesktop spotify_player brave-bin hunspell-pt-br dbeaver-ce-bin
sudo groupadd libvirt
sudo groupadd gamemode
sudo groupadd docker
sudo groupadd plugdev
sudo gpasswd -a $(whoami) wheel
sudo gpasswd -a $(whoami) libvirt
sudo gpasswd -a $(whoami) gamemode
sudo gpasswd -a $(whoami) docker
sudo gpasswd -a $(whoami) plugdev
sudo virsh net-autostart default
sudo virsh net-start default
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
