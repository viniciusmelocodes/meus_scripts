sudo a2dismod php5.6
sudo a2enmod php7.4
sudo service apache2 restart
sudo systemctl restart apache2
sudo update-alternatives --set php /usr/bin/php7.4
echo '\nAlterado com sucesso'
php -v

