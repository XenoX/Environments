# Theme installation

## Get this repository
```shell
cd ~/Downloads/ &&
git clone https://github.com/XenoX/Environments.git &&
cd Environments/
```

## Basic configuration
- Right click on desktop -> Desktop settings... -> Icons tab -> Icon type: None
- Window Manager Tweaks -> Compositor tab -> Uncheck shadows

### Set wallpaper
```shell
cp -r wallpaper ~/Pictures/
# Right click on your favorite wallpaper -> Set as wallpaper
```

## Fonts

```shell
mkdir ~/.local/share/fonts
cd  ~/.local/share/fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
fc-cache -f -v
```

## Qogir-theme
```shell
cd ~/Downloads/ &&
git clone https://github.com/vinceliuice/Qogir-theme.git &&
git clone https://github.com/vinceliuice/Qogir-icon-theme.git

./Qogir-theme/install.sh && ./Qogir-icon-theme/install.sh
cd Qogir-icon-theme/src/cursors && ./install.sh
```

- Appearance
  - Style tab -> Qogir-dark
- Mouse and Touchpad -> Theme tab -> Qogir-white
- Window Manager -> Style tab -> Set Qogir-dark theme

## Dock (Plank)
```shell
sudo apt install plank
sudo mkdir /usr/share/plank/themes/Arc
```

- Copy https://github.com/horst3180/arc-theme/blob/master/extra/Arc-Plank/dock.theme to /usr/share/plank/themes/Arc/dock.theme
- Select Arc theme un Plank Preferences
- Add "plank" command on startup

## Launcher (Ulauncher)

Download .deb :  
[https://ulauncher.io/#Download # Download .deb](https://ulauncher.io/#Download)

- Launch Ulauncher
- Go to preferences (right click on tray icon)
- Set `Elementary Dark` Color Theme
- Check `Launch at login`

## Desktop Infos (Conky)
```shell
sudo apt install conky
sudo mkdir ~/.config/conky
sudo vim ~/.config/conky/conky.conf # Paste content of https://github.com/XenoX/dotfiles/blob/main/conky/conky_kali.conf

sudo vim ~/.config/conky/start_conky.sh
```

Fill with :

```
#!/bin/bash
killall conky
sleep 10
conky -c ~/.config/conky/conky.conf
```

```shell
sudo chmod +x ~/.config/conky/start_conky.sh
```

Add start_conky.sh on startup

## Miscellaneous

Add this at the bottom of `~/.zshrc`
```shell
alias ls="exa"
alias ll="exa -l -h"
```