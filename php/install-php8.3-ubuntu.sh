// Enable PPA for PHP 8.3 in your system and install it.
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

sudo apt-get install php8.3
sudo apt-get install php8.3-cli php8.3-common php8.3-opcache php8.3-mysql php8.3-mbstring php8.3-zip php8.3-fpm php8.3-intl php8.3-xml php8.3-zip php8.3-ldap
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n\n\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m