# bash-scripts
# WSL  
sudo nano /etc/wsl.conf  
[automount]  
enabled = true  
options = "metadata,umask=22,fmask=11"  
  
  for wsl work fast  
sudo nano /etc/nginx/nginx.conf  
fastcgi_buffering off;  
# Install php environment
sudo add-apt-repository ppa:ondrej/apache2 php  
sudo apt install php7.4  
sudo apt install composer  
sudo apt install nginx  
sudo apt install mysql-server   
  
sudo apt install php7.4-curl php7.4-json php7.4-readline php7.4-xml php7.4-intl php7.4-gd php7.4-zip php7.4-mbstring php7.4-mysql php7.4-pgsql php7.4-opcache php7.4-fpm  
  
sudo apt install postgresql  
sudo -u postgres psql -U postgres  
  \# CREATE USER username WITH ENCRYPTED PASSWORD 'put-your-password-here';  
  \# CREATE DATABASE dbname owner username;  
  
# Vue.js env  
sudo apt install nodejs  
sudo apt install npm  
  
---yarn---  
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -  
or curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -  
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list  
sudo apt-get update  
sudo apt-get install yarn  
  
# Git  
git config --global credential.helper store  
git config --global core.autocrlf false  
git config --global core.fileMode false  
  
# Mysql
sudo nano /etc/mysql/my.cnf  
[mysqld]  
default_authentication_plugin= mysql_native_password  
  
# systemd service
sudo nano /etc/systemd/system/service_name.service  
[Unit]  
Description=  
After=network.target  
  
[Service]  
Type=simple  
ExecStart=  
WorkingDirectory=  
User=web  
Group=web  
Restart=always  
RestartSec=10  
  
[Install]  
WantedBy=multi-user.target  
