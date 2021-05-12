# Software and web dev tools

## Required
On `Add/Remove Software` settings, add AUR and Snap support  
Refresh Mirrors List in "Official Repositories" tab

## Core packages
```shell
sudo pacman -Syyu --noconfirm make vim exa neofetch ttc-iosevka ttf-roboto noto-fonts noto-fonts-emoji ttf-jetbrains-mono ttf-meslo-nerd-font-powerlevel10k && pamac install ttf-ms-fonts --no-confirm
```

## Base configuration
```shell
timedatectl set-ntp true

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
pamac build --no-confirm php74 && pamac build --no-confirm php74-apcu php74-cgi php74-fpm php74-intl php74-mcrypt php74-xdebug
sudo ln -s /usr/bin/php74 /usr/bin/php
```

#### Update php.ini
```shell
sudo vim /etc/php74/php.ini
```
Actions in php.ini :
- Set `display_errors` to `On`
- Uncomment `intl.default_locale` and set to "Europe/Paris"
- Uncomment `extension=iconv`
- Uncomment `extension=intl`
- Uncomment `zend_extension=opcache`
- Uncomment `extension=pdo_mysql`
- Uncomment `opcache.enable=1`
- Add `zend_extension=xdebug`

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

### Database
```shell
sudo pacman -S --noconfirm mariadb
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation # type root password / n / n / Y / Y / Y / Y

# Create User
sudo mysql

CREATE USER 'xenox'@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'xenox'@localhost IDENTIFIED BY 'password';
FLUSH PRIVILEGES;

mysql -u xenox -p # For test mariaDB connection
```

### JS
```shell
sudo snap install node --classic &&
sudo npm install -g nodemon &&
sudo pacman -S --noconfirm yarn
```

## Others software

```shell
sudo snap install code --classic # VSCode
sudo snap install phpstorm --classic # IDE PHP
sudo snap install datagrip --classic # IDE Data
sudo snap install clion --classic # IDE C/C++
sudo snap install postman # API REST Client

sudo snap install spotify

sudo pacman -S discord
sudo snap install slack --classic
sudo snap install zoom-client
sudo snap install teams # Microsoft Teams Preview

sudo snap install bitwarden # Password Manager
sudo pacman -S wireguard-tools # VPN
```

### Setup wireguard VPN (Mullvad)
```shell
# Download configurations files in /etc/wireguard/

sudo systemctl stop wg-quick@mullvad-frX.service
sudo chmod -R og-rwx /etc/wireguard/*

sudo systemctl enable wg-quick@mullvad-frX.service

sudo systemctl start wg-quick@mullvad-frX.service # for start
sudo systemctl stop wg-quick@mullvad-frX.service # for stop
```

## Miscellaneous

Remove Orphans packages
```shell
pacman -Rns $(pacman -Qtdq) # Risky
```

Add this at the end of your ~/.bashrc
```shell
neofetch

alias ls="exa"
alias ll="exa -l -h"
```