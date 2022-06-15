sudo a2dismod php7.3
sudo a2enmod php5.6
sudo service apache2 restart
sudo systemctl restart apache2
sudo update-alternatives --set php /usr/bin/php5.6
echo '\n****** Alterado com sucesso para versão 5.6 ******\n'
echo '\n****** Versão atual: ******'
php -v
echo '\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m
echo "<?php phpinfo(); ?>" > /home/development/info.php
php -S localhost:8000
