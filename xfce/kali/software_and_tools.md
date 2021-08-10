# Software and web dev tools

## Core packages
```shell
sudo apt update && sudo apt upgrade

sudo apt install snapd
sudo systemctl enable --now snapd apparmor
logout/login

sudo apt install exa
sudo apt install neoftech
```

## Base configuration
```shell
git config --global user.name "ChangeMe"
git config --global user.email "changeme@gmail.com"

git config --global core.editor vim

ssh-keygen -t ed25519 -C "changeme@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub # copy past to GitHub

echo ".idea/" > ~/.gitignore
git config --global core.excludesFile "~/.gitignore"
```

## Web dev packages

### PHP
```shell
sudo apt install php7.4-intl
sudo apt install php7.4-xdebug
sudo apt install php7.4-fpm
sudo apt install php7.4-cgi
sudo apt install php7.4-apcu
sudo apt install php7.4-xml
sudo apt install php7.4-mbstring
```

#### Update php.ini
```shell
sudo vim /etc/php/7.4/cli/php.ini
```
Actions in php.ini :
- Set `display_errors` to `On`
- Uncomment `intl.default_locale` and set to "Europe/Paris"
- Uncomment `opcache.enable=1`

```shell
php -v # Check if Zend OPcache and Xdebug are shown
```

### Symfony & Composer
```shell
wget https://get.symfony.com/cli/installer -O - | bash
sudo ln -s ~/.symfony/bin/symfony /usr/local/bin/symfony
 
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"
 ```

### JS
```shell
sudo apt install nodejs
sudo apt install npm
sudo npm install -g nodemon
```

## Others software

```shell
snap install discord
sudo ln -s /var/lib/snapd/desktop/applications/discord_discord.desktop /usr/share/applications

snap install bitwarden
sudo ln -s /var/lib/snapd/desktop/applications/bitwarden_bitwarden.desktop /usr/share/applications

snap install code --classic
sudo ln -s /var/lib/snapd/desktop/applications/code_code.desktop /usr/share/applications

snap install phpstorm --classic
sudo ln -s /var/lib/snapd/desktop/applications/phpstorm_phpstorm.desktop /usr/share/applications
```

## Terminal

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

## Miscellaneous

sudo apt install xfce4-terminal
Add `xfce4-terminal --drop-down` on keyboard shortcut