# Bloqueia acesso ao IP 195.135.223.50 (opensuse.org)
sudo ufw deny out to 195.135.223.50

ufw reload
ufw status