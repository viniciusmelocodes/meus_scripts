echo '\n>>>>>>>>>>> Update 1 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> PHP 7.3 <<<<<<<<<<<'
sudo apt install -y php7.3-cli php7.3-common php7.3-mysql php7.3-gd php7.3-xml php7.3-curl php7.3-mbstring
echo '\n>>>>>>>>>>> Update 2 <<<<<<<<<<<'
sudo apt update
# echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
# php -v
# echo '\n>>>>>>>>>>> PHP 7.4 para PHP 7.3 <<<<<<<<<<<'
# sudo a2dismod php7.4
# sudo a2enmod php7.3
# sudo service apache2 restart
# sudo systemctl restart apache2
# sudo update-alternatives --set php /usr/bin/php7.3
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m
echo "<?php phpinfo(); ?>" >/home/development/info.php
php -S localhost:8000
