#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql php5-imagick libmagickwand-dev

git clone https://github.com/lruiabc/itmo544-mpf.git

mv ./../itmo544-mpf/images /var/www/html/images
mv ./../itmo544-mpf/image /var/www/html/image
mv ./../itmo544-mpf/css /var/www/html/css
mv ./../itmo544-mpf/js /var/www/html/js
mv ./../itmo544-mpf/vendor /var/www/html/vendor
mv ./../itmo544-mpf/index.html /var/www/html
mv ./../itmo544-mpf/*.php /var/www/html


curl -sS http://getcomposer.org/installer | php
php composer.phar require aws/aws-sdk-php


sudo mv ./../itmo544-mpf/vendor /var/www/html/vendor

sudo php /var/www/html/setup.php

echo "hello!" >/tmp/hello.txt

sudo reboot
