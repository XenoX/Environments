# Theme installation

![Desktop Screenshot](desktop_screenshot.png)

## Get this repository
```shell
cd ~/Downloads/ &&
git clone https://github.com/XenoX/Environments.git &&
cd Environments/
```

## Basic configuration
- Right click on desktop -> Desktop settings... -> Icons tab -> Icon type: None
- Window Manager -> Style tab -> Hide "Shade" (arrow up) in active button layout
- Window Manager Tweaks -> Cycling tab -> Uncheck Draw frame around selected window while cycling
- Window Manager Tweaks -> Compositor tab -> Uncheck shadows

### Set wallpaper
```shell
cp -r wallpaper ~/Pictures/
# Right click on your favorite wallpaper -> Set as wallpaper
```

## Qogir-theme
```shell
sudo pacman -Syyu --noconfirm gtk-engine-murrine gtk-engines

cd ~/Downloads/ &&
git clone https://github.com/vinceliuice/Qogir-theme.git &&
git clone https://github.com/vinceliuice/Qogir-icon-theme.git

./Qogir-theme/install.sh && ./Qogir-icon-theme/install.sh
cd Qogir-icon-theme/src/cursors && ./install.sh

pamac build --no-confirm numix-circle-arc-icons-git
```

- Appearance
  - Style tab -> Qogir-dark
  - Icons tab -> Numix Circle Arc
  - Font tab -> Default font to `Roboto Regular` and Default Monospace Font to `MesloLGS NF Regular` size: 9
- Mouse and Touchpad -> Theme tab -> Qogir-dark
- Window Manager -> Style tab -> Set Qogir-dark theme and Set title font to `Roboto Bold`

## Xfce Panel and plugins 

- Panel
  - Display tab -> Set mode to `Deskbar` / Set row size to `48`
  - Appearance tab -> Set fixed icon size to `16` and Enter/Leave Opacity to `80`
  - Items tab
    - Remove `Window Buttons`, `Show Desktop`, `Workspace Switcher`
    - Edit `Whisker Menu`
      - Appearance tab -> Show as list -> Check only `Position search entry next to panel button` and set Background opacity to `80`
      - Behavior tab -> Default Category to `All Applications`
      - Commands tab -> Uncheck all
    - Edit `Clock Menu` -> Set Format to XX:XX
    - Edit `Actions Buttons` -> Check only `Log Out...`
    - Add `Notification Plugins` under `PulseAudio Plugin`
    - Edit `Status Tray Items` -> Set icon size to `16`, check `Arrange items in a single row` and `Square items`

## Dock (Plank)
```shell
sudo pacman -S --noconfirm plank
pamac build --no-confirm plank-theme-arc
plank --preferences
```
- Set Arc Theme
- Docklets tab -> Add `Desktop` & `Trash`
- Launch `Session and Startup` -> `Application Autostart` tab -> Add `plank` command on login

## Launcher (Ulauncher)
```shell
sudo pacman -S --noconfirm ulauncher
pamac build --no-confirm ulauncher-theme-arc-dark-git
```
- Launch Ulauncher
- Go to preferences (right click on tray icon)
- Set `Arc Darker` Color Theme
- Check `Launch at login`

## Desktop Infos (Conky)
```shell
pamac build --no-confirm conky-lua-nv
```
- Copy https://github.com/XenoX/dotfiles/blob/main/conky/ in ~/.config/conky/
- Launch `Session and Startup` -> `Application Autostart` tab -> Add `start_conky.sh` file on login

## Window Compositor (Picom)
```shell
pamac build --no-confirm picom-ibhagwan-git
```
- Copy https://github.com/XenoX/dotfiles/blob/main/picom/ in ~/.config/.picom/
- Launch `Session and Startup` -> `Application Autostart` tab -> Add `picom --experimental-backends` on login
- Uncheck `Enable displayay compositing` in `Window Manager Tweaks`, tab `Compositor`

## Session locker (Lightdm-webkit2-greeter)
```shell
sudo pacman -S --noconfirm lightdm-webkit2-greeter
pamac build --no-confirm lightdm-webkit2-theme-glorious

sudo vim /etc/lightdm/lightdm.conf # Uncomment greeter-session and set to lightdm-webkit2-greeter
sudo vim /etc/lightdm/lightdm-webkit2-greeter.conf # Set wekbkit_theme to glorious

sudo cp -r ~/Pictures/wallpaper/* /usr/share/backgrounds
# lightdm-webkit2-greeter on terminal for test
```

## Terminal
- Go to Terminal settings
  - Appearance tab -> Check `Use system font`
  - Colors tab -> Load `Solarized (Dark)` preset and check `Use system theme colors for text and background`
  - General tab -> Check `un a custom command instead of my shell` and set `/usr/bin/zsh`

```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

- Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`
- Set `plugins=(git wd docker zsh-autosuggestions zsh-syntax-highlighting)` in `~/.zshrc`
- Add this at the bottom of `~/.zshrc`
```shell
alias ls="exa"
alias ll="exa -l -h"
```