#!/bin/bash
sudo service nginx start
sudo service php7.4-fpm start
sudo service mysql start
sudo update-alternatives --set php /usr/bin/php7.2
