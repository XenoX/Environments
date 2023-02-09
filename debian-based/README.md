# Software and web dev tools

## Core packages
```shell
sudo apt update && sudo apt upgrade

sudo apt install exa neofetch vim neovim
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

## Web dev packages

### PHP

```shell
sudo apt install php8.1 php8.1-intl php8.1-curl php8.1-fpm php8.1-cgi php8.1-opcache php8.1-xml php8.1-mbstring php-xdebug
```

#### Update php.ini
```shell
sudo vim /etc/php/8.1/cli/php.ini
```
Actions in php.ini :
- Set `display_errors` to `On`
- Uncomment `intl.default_locale` and set to "Europe/Paris"

```shell
php -v # Check if Zend OPcache are shown
```

### JS
```shell
sudo apt install nodejs
sudo apt install npm
sudo npm install -g nodemon
```
