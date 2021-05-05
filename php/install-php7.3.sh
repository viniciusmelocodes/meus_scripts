echo '>>>>>>>>>>> software-properties-common <<<<<<<<<<<'
sudo apt install -y gnupg2 ca-certificates apt-transport-https software-properties-common
wget -qO - https://packages.sury.org/php/apt.gpg | sudo apt-key add -
echo "deb https://packages.sury.org/php/ buster main" | sudo tee /etc/apt/sources.list.d/php.list
echo '\n>>>>>>>>>>> ondrej/php <<<<<<<<<<<'
sudo add-apt-repository -y ppa:ondrej/php
echo '\n>>>>>>>>>>> Update 1 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> PHP 7.3 <<<<<<<<<<<'
sudo apt install -y php7.3-cli php7.3-common php7.3-mysql php7.3-gd php7.3-xml php7.3-curl php7.3-mbstring
echo '\n>>>>>>>>>>> Update 2 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m
echo "<?php phpinfo(); ?>" >/home/development/info.php
php -S localhost:8000
