echo '\n>>>>>>>>>>> ondrej/php <<<<<<<<<<<'
sudo add-apt-repository -y ppa:ondrej/php
echo '\n>>>>>>>>>>> Update 1 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> PHP 7.2 <<<<<<<<<<<'
sudo apt install -y php7.2-cli php7.2-common php7.2-mysql php7.2-gd php7.2-xml php7.2-curl php7.2-mbstring
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n\n\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m
