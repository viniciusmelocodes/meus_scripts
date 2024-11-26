sudo apt install mariadb-server
systemctl start mariadb
systemctl enable mariadb
systemctl status mariadb
mysql_secure_installation
mysql -u root -p
CREATE DATABASE mydatabase;
CREATE USER 'root'@'localhost' IDENTIFIED BY '75998741';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
exit;
