// a2dismod disables the php8.1 module by removing those symlinks.
sudo a2dismod php8.1

// a2enmod enables php7.4 module within the apache2 configuration.
sudo a2enmod php7.4

// Restart apache2 service.
sudo service apache2 restart

// Set alternative name path.
sudo update-alternatives --set php /usr/bin/php7.4
sudo update-alternatives --set phar /usr/bin/phar7.4
sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.4
sudo update-alternatives --set phpize /usr/bin/phpize7.4
sudo update-alternatives --set php-config /usr/bin/php-config7.4
