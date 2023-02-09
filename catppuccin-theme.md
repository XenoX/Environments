https://github.com/catppuccin

- https://github.com/catppuccin/kitty
- https://github.com/catppuccin/gtk
- https://github.com/catppuccin/papirus-folders
- https://github.com/catppuccin/dunst
- https://github.com/catppuccin/discord
- https://github.com/catppuccin/firefox
- https://github.com/catppuccin/telegram
- Spotify (https://spicetify.app/ / https://github.com/catppuccin/spicetify) :
    - sudo chmod a+wr /opt/spotify
    - sudo chmod a+wr /opt/spotify/Apps -R
    - yay -S spicetify-cli
    - git clone git@github.com:catppuccin/spicetify.git
    - cp -r spicetify/catppuccin-* ~/.config/spicetify/Themes/
    - spicetify config current_theme catppuccin-macchiato
    - spicetify config color_scheme orange
    - spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
    - spicetify config extensions catppuccin-macchiato.js
    - spicetify apply
