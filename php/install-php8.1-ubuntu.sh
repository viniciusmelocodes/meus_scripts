// Enable PPA for PHP 8.1 in your system and install it.
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

sudo apt-get install php8.1
sudo apt-get install php8.1-cli php8.1-common php8.1-opcache php8.1-mysql php8.1-mbstring php8.1-zip php8.1-fpm php8.1-intl php8.1-xml php8.1-zip
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n\n\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m