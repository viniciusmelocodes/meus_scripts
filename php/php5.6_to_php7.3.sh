sudo a2dismod php5.6
sudo a2enmod php7.3
sudo service apache2 restart
sudo systemctl restart apache2
sudo update-alternatives --set php /usr/bin/php7.3
echo '\n****** Alterado com sucesso para versão 7.3 ******\n'
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n\n\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m