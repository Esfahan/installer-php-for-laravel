#!/bin/bash

# install php
sudo yum install -y epel-release.noarch
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo yum install -y --enablerepo=remi,remi-php70 php php-devel php-mbstring php-pdo php-gd php-mysql php-xml

# to unzip laravel
sudo yum install -y zip unzip

# install composer
if [ ! -e /usr/local/bin/composer ]; then
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/tmp
    sudo mv /tmp/composer.phar /usr/local/bin/composer
else
    echo 'Composer is alreday exists.'
fi

composer --version
