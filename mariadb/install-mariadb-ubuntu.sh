sudo apt update
sudo apt install mariadb-server
sudo systemctl start mariadb.service
sudo mysql_secure_installation
sudo systemctl status mariadb
sudo mysqladmin version
