// a2dismod disables the php8.3 module by removing those symlinks.
sudo a2dismod php8.3

// a2enmod enables php7.2 module within the apache2 configuration.
sudo a2enmod php7.2

// Restart apache2 service.
sudo service apache2 restart

// Set alternative name path.
sudo update-alternatives --set php /usr/bin/php7.2
sudo update-alternatives --set phar /usr/bin/phar7.2
sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.2
sudo update-alternatives --set phpize /usr/bin/phpize7.2
sudo update-alternatives --set php-config /usr/bin/php-config7.2
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n\n\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m