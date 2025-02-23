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

#Install basic packages
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
sudo pacman -S xclip --no-confirm 
sudo pacman -S rofi-calc --noconfirm
sudo pacman -S rofi-emoji --noconfirm
sudo pacman -S python-pywal16 --noconfirm
sudo pacman -S wget --no-confirm
sudo pacman -S curl --noconfirm
sudo pacman -S cargo --noconfirm

#Install paru for the necesseary aur packages
mkdir ~/temp && cd ~/temp
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg
ls paru*.zst | sudo pacman -U -
sudo rm ~/temp -r

#install aur packages
paru -S xwinwrap-0.9-bin --noconfirm
paru -S visual-studio-code-bin --noconfirm
paru -S diodon --noconfirm
paru -S zapzap-git --noconfirm
paru -S vesktop --noconfirm
paru -S spotify_player --noconfirm
paru -S brave-bin --noconfirm
paru -S hunspell-pt-br --noconfirm
paru -S dbeaver-ce-bin --noconfirm

#create groups needed
sudo groupadd libvirt
sudo groupadd gamemode
sudo groupadd docker
sudo groupadd plugdev

#added current user the groups
sudo gpasswd -a $(whoami) wheel
sudo gpasswd -a $(whoami) libvirt
sudo gpasswd -a $(whoami) gamemode
sudo gpasswd -a $(whoami) docker
sudo gpasswd -a $(whoami) plugdev

#start default vm network
sudo virsh net-autostart default
sudo virsh net-start default

#install bash theme
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
