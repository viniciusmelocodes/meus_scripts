echo '>>>>>>>>>>> software-properties-common <<<<<<<<<<<'
sudo apt install -y gnupg2 ca-certificates apt-transport-https software-properties-common
wget -qO - https://packages.sury.org/php/apt.gpg | sudo apt-key add -
echo "deb https://packages.sury.org/php/ buster main" | sudo tee /etc/apt/sources.list.d/php.list
echo '\n>>>>>>>>>>> ondrej/php <<<<<<<<<<<'
sudo add-apt-repository -y ppa:ondrej/php
echo '\n>>>>>>>>>>> Update 1 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> PHP 5.6 <<<<<<<<<<<'
sudo apt install -y php5.6-cli php5.6-common php5.6-mysql php5.6-gd php5.6-xml php5.6-curl php5.6-mbstring
echo '\n>>>>>>>>>>> Update 2 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> PHP 7.4 <<<<<<<<<<<'
sudo apt install -y php7.4-cli php7.4-common php7.4-mysql php7.4-gd php7.4-xml php7.4-curl php7.4-mbstring composer
echo '\n>>>>>>>>>>> Update 3 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n>>>>>>>>>>> PHP 7.4 para PHP 5.6 <<<<<<<<<<<'
sudo a2dismod php7.4
sudo a2enmod php5.6
sudo service apache2 restart
sudo systemctl restart apache2
sudo update-alternatives --set php /usr/bin/php5.6
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m
echo "<?php phpinfo(); ?>" > /home/development/info.php
php -S localhost:8000
