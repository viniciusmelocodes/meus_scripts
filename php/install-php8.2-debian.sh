echo '>>>>>>>>>>> software-properties-common <<<<<<<<<<<'
sudo apt install -y gnupg2 ca-certificates apt-transport-https software-properties-common lsb-release apt-transport-https ca-certificates wget
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
echo '\n>>>>>>>>>>> Update 1 <<<<<<<<<<<'
sudo apt update
echo '\n>>>>>>>>>>> PHP 8.2 <<<<<<<<<<<'
sudo apt install -y php8.2-cli php8.2-common php8.2-mysql php8.2-gd php8.2-xml php8.2-curl php8.2-mbstring php8.2-zip
echo '\n>>>>>>>>>>> Versão PHP <<<<<<<<<<<'
php -v
echo '\n\n\n>>>>>>>>>>> Módulos PHP <<<<<<<<<<<'
php -m
