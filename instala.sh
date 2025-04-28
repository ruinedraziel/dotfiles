#!/bin/bash
cp Arte.gif ~/
cp sddm/sddm.conf /etc
cp spotify_status.py ~/.config/
cp bashrc ~/
cp konsolerc ~/.config
cp i3 ~/.config/ -r
cp kitty ~/.config -r
cp polybar ~/.config -r
cp wal ~/.cache/wal -r
cp rofi ~/.config -r
cp picom.conf ~/.config/
cp polybar.sh ~/
cp tema.sh ~/
cp wallpaper.sh ~/
cp wall2.jpg ~/
cp wallnew.jpg ~/

#Install basic packages
sudo pacman -Syu
sudo pacman -S picom --noconfirm
sudo pacman -S konsole --noconfirm
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
sudo pacman -S freerdp remmina --noconfirm
sudo pacman -S libvncserver --noconfirm
sudo pacman -S ttf-font-awesome --noconfirm
sudo pacman -S awesome-terminal-fonts --noconfirm
sudo pacman -S xclip xdotool maim --no-confirm 
sudo pacman -S rofi-calc --noconfirm
sudo pacman -S rofi-emoji --noconfirm
sudo pacman -S python-pywal16 --noconfirm
sudo pacman -S wget --no-confirm
sudo pacman -S curl --noconfirm
sudo pacman -S cargo --noconfirm
sudo pacman -S neovim --noconfirm
sudo pacman -S fastfetch --noconfirm
sudo pacman -S xfce4-power-manager --noconfirm
sudo pacman -S sddm --noconfirm
sudo pacman -S steam --noconfirm
sudo pacman -S lutris  --noconfirm
sudo pacman -S wine --noconfirm
sudo pacman -S thunderbird --noconfirm
sudo pacman -S upower --noconfirm
sudo pacman -S mate-power-manager --noconfirm
sudo pacman -S fprint fprintd --noconfirm
sudo pacman -S bluez blueztui --noconfirm

#set sddm as the display manager
sudo systemctl enable sddm

#Install paru for the necesseary aur packages
mkdir ~/temp && cd ~/temp
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg
ls paru*.zst | sudo pacman -U -
sudo rm ~/temp -r

#install aur packages
paru -S protonplus --noconfirm
paru -S xwinwrap-0.9-bin --noconfirm
paru -S visual-studio-code-bin --noconfirm
paru -S diodon --noconfirm
paru -S zapzap-git --noconfirm
paru -S vesktop --noconfirm
paru -S spotify-player-full --noconfirm
paru -S brave-bin --noconfirm
paru -S hunspell-pt-br --noconfirm
paru -S dbeaver-ce-bin --noconfirm
paru -S python-pywal16 --noconfirm
paru -S sddm-astronaut-theme --noconfirm

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

#configura telas e team do sddm
sudo cp display/* /etc/X11/xorg.conf.d/
sudo cp theme/metadata.desktop /usr/share/sddm/themes/sddm-astronaut-theme/
sudo cp theme/waneella.conf /usr/share/sddm/themes/sddm-astronaut-theme/Themes/
sudo cp theme/waneella.gif /usr/share/sddm/themes/sddm-astronaut-theme/Backgrounds/

#configura tema de cores
~/tema.sh

#install bash theme
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

sudo reboot