#!/bin/bash


#set $walldp1 'xwinwrap -g 1920x1080+0+365 -ov -ni -s -nf -- gifview --animate -w WID ~/wallnew.jpg'
#set $walldp2 'xwinwrap -g 1080x1920+1920+0 -ov -ni -s -nf -- gifview --animate -w WID ~/wall2.jpg'

#xwinwrap -g 1920x1080+0+365 -ov -ni -s -nf -- mpv -wid WID --loop --no-audio ~/Downloads/teste.mp4
#i3-msg exec 'xwinwrap -g 1920x1080+0+365 -ov -ni -s -nf -- gifview --animate -w WID ~/wallnew.jpg'
#i3-msg exec 'xwinwrap -g 1920x1080+0+365 -ov -ni -s -nf -- gifview --animate -w WID ~/Downloads/teste1080.gif'
#i3-msg exec 'xwinwrap -g 1080x1920+1920+0 -ov -ni -s -nf -- gifview --animate -w WID ~/wall2.jpg'
#i3-msg exec 'xwinwrap -g 1080x1920+1920+0 -ov -ni -s -nf -- gifview --animate -w WID ~/wall3.gif'


#i3-msg exec $walldp2
feh --bg-fill ~/wallnew.jpg ~/wall2.jpg
