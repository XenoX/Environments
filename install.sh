#!/bin/bash
mkdir -p ~/.config/BetterDiscord/themes
mkdir -p ~/.config/i3/scripts
mkdir -p ~/Pictures/wallpaper

cp -vr dotfiles/.Xresources ~/

cp -vr dotfiles/.config/i3/config ~/.config/i3/
cp -vr dotfiles/.config/i3/scripts/* ~/.config/i3/scripts/
sudo chmod +x ~/.config/i3/scripts/*

cp -vr dotfiles/.config/dunst/dunstrc ~/.config/dunst/

cp -vr dotfiles/.config/kitty/* ~/.config/kitty/

cp -vr dotfiles/.config/picom/picom.conf ~/.config/picom/

cp -vr dotfiles/.config/rofi/config.rasi ~/.config/rofi/

cp -vr dotfiles/.config/wallpaper.sh ~/.config/
sudo chmod +x ~/.config/wallpaper.sh

cp -vr dotfiles/.config/polybar/* ~/.config/polybar/
sudo chmod +x ~/.config/polybar/scripts/*

cp -vr dotfiles/.config/BetterDiscord/themes/* ~/.config/BetterDiscord/themes/

cp -vr dotfiles/.local/share/rofi/themes/* ~/.local/share/rofi/themes/

cp -vr wallpaper/* ~/Pictures/wallpaper/
