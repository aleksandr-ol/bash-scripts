#!/bin/bash
sudo service nginx start
sudo service php7.4-fpm start
sudo service postgresql start
sudo update-alternatives --set php /usr/bin/php7.4
