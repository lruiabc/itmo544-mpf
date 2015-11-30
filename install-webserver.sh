#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql php5-imagick install libmagickwand-dev

git clone https://github.com/lruiabc/itmo544-mp2.git

mv ./../itmo544-mp2/images /var/www/html/images
mv ./../itmo544-mp2/vendor /var/www/html/vendor
mv ./../itmo544-mp2/index.html /var/www/html
mv ./../itmo544-mp2/*.php /var/www/html
mv ./../itmo544-mp2/*.asp /var/www/html

curl -sS http://getcomposer.org/installer | php
php composer.phar require aws/aws-sdk-php


sudo mv ./../itmo544-mp2/vendor /var/www/html/vendor

sudo php /var/www/html/setup.php

echo "hello!" >/tmp/hello.txt

sudo reboot
