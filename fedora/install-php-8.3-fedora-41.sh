sudo dnf -y update
sudo dnf -y install http://rpms.remirepo.net/fedora/remi-release-41.rpm
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --set-enabled remi
sudo dnf module reset php -y
sudo dnf module -y install php:remi-8.3
sudo dnf -y install php-cli php-fpm php-mysqlnd php-zip php-devel php-gd php-mcrypt php-mbstring php-curl php-xml php-pear php-bcmath php-json
php -v
sudo systemctl enable --now php-fpm
sudo systemctl restart httpd
