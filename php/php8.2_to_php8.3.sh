// a2dismod disables the php8.2 module by removing those symlinks.
sudo a2dismod php8.2

// a2enmod enables php8.3 module within the apache2 configuration.
sudo a2enmod php8.3

// Restart apache2 service.
sudo service apache2 restart

// Set alternative name path.
sudo update-alternatives --set php /usr/bin/php8.3
sudo update-alternatives --set phar /usr/bin/phar8.3
sudo update-alternatives --set phar.phar /usr/bin/phar.phar8.3
sudo update-alternatives --set phpize /usr/bin/phpize8.3
sudo update-alternatives --set php-config /usr/bin/php-config8.3
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n\n\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m
