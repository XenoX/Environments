#!/bin/bash
cp -vr ~/.Xresources dotfiles/ 

cp -vr ~/.config/i3/config dotfiles/.config/i3/
cp -vr ~/.config/i3/scripts/* dotfiles/.config/i3/scripts/

cp -vr ~/.config/dunst/dunstrc dotfiles/.config/dunst/ 

cp -vr ~/.config/kitty/* dotfiles/.config/kitty/

cp -vr ~/.config/picom/picom.conf dotfiles/.config/picom/

cp -vr ~/.config/rofi/config.rasi dotfiles/.config/rofi/

cp -vr ~/.config/wallpaper.sh dotfiles/.config/

cp -vr ~/.config/polybar/* dotfiles/.config/polybar/

cp -vr ~/.config/BetterDiscord/themes/* dotfiles/.config/BetterDiscord/themes/

cp -vr ~/.local/share/rofi/themes/* dotfiles/.local/share/rofi/themes/

rm -rf wallpaper/*
cp -vr ~/Pictures/wallpaper/* wallpaper/
