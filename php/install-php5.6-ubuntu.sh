echo '\n>>>>>>>>>>> ondrej/php <<<<<<<<<<<'
sudo add-apt-repository -y ppa:ondrej/php
echo '\n>>>>>>>>>>> Update 1 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> PHP 5.6 <<<<<<<<<<<'
sudo apt install -y php5.6-cli php5.6-common php5.6-intl php5.6-mysql php5.6-gd php5.6-xml php5.6-curl php5.6-mbstring
echo '\n>>>>>>>>>>> Update 2 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m
echo "<?php phpinfo(); ?>" > /home/development/info.php
php -S localhost:8000
