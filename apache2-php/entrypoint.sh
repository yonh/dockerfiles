#!/bin/bash

#设置默认访问index.php
sed -i "1i DirectoryIndex index.php index.html" /etc/apache2/apache2.conf
# 开启重写功能
a2enmod rewrite
sed -i '1a <Directory /var/www/html>' /etc/apache2/sites-available/000-default.conf
sed -i '2a AllowOverride All' /etc/apache2/sites-available/000-default.conf
sed -i '3a </Directory>' /etc/apache2/sites-available/000-default.conf

sed -i 's/\/var\/www\/html/\/www/g' /etc/apache2/sites-available/000-default.conf

# 关闭目录浏览功能
sed -i 's/Options Indexes FollowSymLinks/Options FollowSymLinks/g' /etc/apache2/apache2.conf

# 修改时区
cp /usr/share/zoneinfo/PRC /etc/localtime

