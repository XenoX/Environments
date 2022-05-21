# Software and web dev tools

## Web dev packages

### PHP 8
```shell
sudo pacman -S --noconfirm php php-apcu php-cgi php-fpm php-intl xdebug
```

### PHP 7.4
```shell
pamac build --no-confirm php74 && pamac build --no-confirm php74-apcu php74-cgi php74-fpm php74-intl php74-mcrypt php74-xdebug
```

#### Update php.ini
```shell
sudo vim /etc/php/php.ini # sudo vim /etc/php74/php.ini
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

### Setup wireguard VPN (Mullvad)

```shell
sudo pacman -S wireguard-tools # VPN
```

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