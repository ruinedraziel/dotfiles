#!/bin/bash

killall dunst;

wal -i Arte.gif -n
#wal -i wallnew.jpg -n
#wal -i wall2.jpg -n
pywal-discord
pywal-spicetify Sleek #Matte #Dribbblish
gradience-cli apply -p ~/.config/presets/user/pywal.json --gtk both
cp ~/.cache/wal/dunstrc ~/.config/dunst/
sleep 3 

i3-msg exec 'spotify'
python ~/temasteam.py -f ~/.cache/wal/pywal.json -n gradience -d
cd ~/.cache/AdwSteamInstaller/extracted
python install.py -c gradience

feh --bg-fill ~/wallnew.jpg ~/wall2.jpg
i3-msg exec 'dunst'
notify-send 'Tema atualizado!'

