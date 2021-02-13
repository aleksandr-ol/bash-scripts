# bash-scripts
# WSL  
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart  
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux  
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
  
# Phalcon  
php vendor/bin/phalcon.php migration run --config=config/config_master.yml  
  
---TA-DA containers---  
docker exec -it api_api-prod_1 bash  
docker exec -it api_mysql-master_1 bash  
supervisorctl restart workers:*  
  
список воркеров гирмана, их статус
gearadmin --status

просмотр процессов  
supervisorctl status  

перезапуск воркеров  
supervisorctl restart workers:CategoriesWorker_00 workers:CategoriesWorker_01  

аналогично перезапуск процессов  
supervisorctl restart gearman  

если был измене конфиг супервизора  
supervisorctl update all  

очистить очередь гирман  
/usr/bin/gearman -t 1000 -n -w -f addAttributes > /dev/null  
  
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
sudo nano /etc/apt/sources.list  
 \# deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7
  
sudo nano /etc/mysql/my.cnf  
[mysqld]  
default_authentication_plugin= mysql_native_password  
  
CREATE USER 'test_user'@'localhost' IDENTIFIED BY 'password';  
GRANT ALL PRIVILEGES ON \*.\* TO test_user@localhost;  
ALTER USER 'test_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';  
  
# systemd service
journalctl -u servicename -f  
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
  
sudo systemctl enable your_name && sudo service your_name start;  
# Linux Repo and commands
https://releases.ubuntu.com/20.04/ubuntu-20.04.1-live-server-amd64.iso  
  
no password on sudo  
sudo nano /etc/sudoers.d/filename  
\# username     ALL=(ALL) NOPASSWD:ALL
