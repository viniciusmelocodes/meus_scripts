// a2dismod disables the php7.3 module by removing those symlinks.
sudo a2dismod php7.3

// a2enmod enables php8.0 module within the apache2 configuration.
sudo a2enmod php8.0

// Restart apache2 service.
sudo service apache2 restart

// Set alternative name path.
sudo update-alternatives --set php /usr/bin/php8.0
sudo update-alternatives --set phar /usr/bin/phar8.0
sudo update-alternatives --set phar.phar /usr/bin/phar.phar8.0
sudo update-alternatives --set phpize /usr/bin/phpize8.0
sudo update-alternatives --set php-config /usr/bin/php-config8.0
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n\n\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m