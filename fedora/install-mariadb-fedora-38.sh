sudo dnf update
sudo dnf install mariadb-server
mariadb --version
sudo systemctl start mariadb
sudo systemctl enable mariadb
systemctl status mariadb
sudo mariadb-secure-installation