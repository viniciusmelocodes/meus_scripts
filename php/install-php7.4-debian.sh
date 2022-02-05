echo '>>>>>>>>>>> software-properties-common <<<<<<<<<<<'
sudo apt install -y gnupg2 ca-certificates apt-transport-https software-properties-common lsb-release apt-transport-https ca-certificates wget
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
echo '\n>>>>>>>>>>> Update 1 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> PHP 7.4 <<<<<<<<<<<'
sudo apt install -y php7.4-cli php7.4-common php7.4-mysql php7.4-gd php7.4-xml php7.4-curl php7.4-mbstring composer
echo '\n>>>>>>>>>>> Update 2 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m
echo "<?php phpinfo(); ?>" > /home/development/info.php
php -S localhost:8000
