sudo a2dismod php7.4
sudo a2enmod php5.6
sudo service apache2 restart
sudo systemctl restart apache2
sudo update-alternatives --set php /usr/bin/php5.6
echo '\nAlterado com sucesso'
php -v

