# Software and web dev tools

## Web dev packages

### PHP
```shell
sudo pacman -S --noconfirm php php-apcu php-cgi php-fpm xdebug
```

#### Update php.ini
```shell
sudo vim /etc/php/php.ini
```
Actions in php.ini :
- Set `display_errors` to `On`
- Uncomment `intl.default_locale` and set to "Europe/Paris"
- Uncomment `extension=iconv`
- Uncomment `extension=intl`
- Uncomment `zend_extension=opcache`
- Uncomment `extension=pdo_mysql`
- Add `zend_extension=xdebug`
- Uncomment `opcache.enable=1`

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

CREATE USER 'xenox'@localhost IDENTIFIED BY 'panda';
GRANT ALL PRIVILEGES ON *.* TO 'xenox'@localhost IDENTIFIED BY 'panda';
FLUSH PRIVILEGES;

mysql -u xenox -p # For test mariaDB connection
```
