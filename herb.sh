#!/bin/sh

rc="~/.zshrc"
autostart="~/.config/herbstluftwm/autostart"
panel="~/.config/herbstluftwm/panel.sh"
pl9k="/usr/share/powerlevel9k/powerlevel9k.zsh-theme"
xrc="~/.Xresources"

apt update

apt install herbstluftwm zsh-themes-powerlevel9k dmenu rxvt-unicode feh -y

# Apply new zsh theme
echo $pl9k >> $rc

# Copy template config files
mkdir ~/.config/herbstluftwm
cp /etc/xdg/herbstluftwm/* ~/.config/herbstluftwm/

# Make my custom changes
sed -i 's/xterm/rxvt/g' $autostart
sed -i 's/tag_names=.*/tag_names=( 95 98 2000 ME XP )/g' $autostart
sed -i 's/tag_keys=.*/tag_keys=( {1..5} )/g' $autostart
sed -i "s/hc set frame_border_normal_color '#101010'/hc set frame_border_normal_color '#333333'/g" $autostart
sed -i "s/hc set frame_bg_normal_color '#565656'/hc set frame_bg_normal_color '#000000'/g" $autostart
sed -i 's/xsetroot.*//' $autostart
echo "hc keybind \$Mod-m spawn dmenu_run -fn \"xft:dejavu sans mono:size=14\"" >> $autostart

sed -i 's/fixed-medium-\*-\*-\*-12/fixed-*-*-*-*-*/g' $panel
sed -i 's/panel_height=16/panel_height=30/' $panel
sed -i 's/%H/%I/' $panel

curl https://raw.githubusercontent.com/Djent-/arch-config-2015/2016/.Xresources > $xrc
sed -i 's/URxvt.font.*/URxvt.font: xft:dejavu sans mono:size=11,xft:Dejavu Sans Mono for Powerline/'
