sudo apt update
sudo apt-get install -y software-properties-common
sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu bionic main'
sudo apt update
sudo apt-get install -y mariadb-server-10.3 mariadb-client-10.3

echo "\n************ Versão MariaDB ************"
mysql --version

echo "\n************ Valentina Studio ************"
wget https://valentina-db.com/en/all-downloads/vstudio/current/vstudio_x64_lin-deb?format=raw -O vstudio_x64_11_lin.deb
sudo apt install ./vstudio_x64_11_lin.deb
sudo rm vstudio_x64_11_lin.deb

echo "\n***** Abrir o vstudio pelo menu *****"