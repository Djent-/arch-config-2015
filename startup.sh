#! /bin/sh

bspc monitor -a Desktop2
bspc monitor -a Desktop3
bspc rule -a Termstyle state=floating

xsetroot -cursor_name left_ptr
feh --bg-scale ~/road.jpg
screenfetch -d +disk | lolcat
