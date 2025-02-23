#!/bin/bash


#wallpaper animado
set $walldp1 'xwinwrap -g 1920x1080+0+365 -ov -ni -s -nf -- gifview --animate -w WID ~/wallnew.jpg'
set $walldp2 'xwinwrap -g 1080x1920+1920+0 -ov -ni -s -nf -- gifview --animate -w WID ~/wall2.jpg'

#wallpaper fixo
#feh --bg-fill ~/wallnew.jpg ~/wall2.jpg
