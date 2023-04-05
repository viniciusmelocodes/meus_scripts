// Enable PPA for PHP 8.2 in your system and install it.
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

sudo apt-get install php8.2
sudo apt-get install php8.2-cli php8.2-common php8.2-opcache php8.2-mysql php8.2-mbstring php8.2-zip php8.2-fpm php8.2-intl php8.2-xml php8.2-zip
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n\n\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m