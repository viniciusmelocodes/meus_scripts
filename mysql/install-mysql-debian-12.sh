sudo apt install wget -y
wget https://dev.mysql.com/get/mysql-apt-config_0.8.26-1_all.deb
apt install ./mysql-apt-config_*_all.deb
dpkg-reconfigure mysql-apt-config
apt install mysql-server
systemctl enable --now mysql
systemctl status mysql
mysql_secure_installation
