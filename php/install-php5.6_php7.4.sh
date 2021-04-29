echo '****** software-properties-common ******\n'
sudo apt install software-properties-common
add-apt-repository ppa:ondrej/php
echo '\n****** Update 1 ******\n'
apt update
echo '\n****** PHP 5.6 ******\n'
apt install -y php5.6 php5.6-cli php5.6-common php5.6-curl php5.6-mysql php5.6-gd php5.6-mbstring php5.6-xml
echo '\n****** Update 2 ******\n'
apt update
echo '\n****** PHP 7.4 ******\n'
apt install -y php7.4 php7.4-cli php7.4-common php7.4-curl php7.4-mysql php7.4-gd php7.4-mbstring php7.4-xml composer
echo '\n****** Update 3 ******\n'
apt update
echo '\n****** Versão PHP ******\n'
php -v
echo '\n****** PHP 7.4 para PHP 5.6 ******\n'
sudo a2dismod php7.4
sudo a2enmod php5.6
sudo service apache2 restart
sudo systemctl restart apache2
sudo update-alternatives --set php /usr/bin/php5.6
echo '\n****** Versão atual: ******\n'
php -v
