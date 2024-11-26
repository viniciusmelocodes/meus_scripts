#!/usr/bin/env bash

wget -O - https://repo.fortinet.com/repo/forticlient/7.2/debian/DEB-GPG-KEY | gpg --dearmor | sudo tee /usr/share/keyrings/repo.fortinet.com.gpg
sudo cp /etc/apt/sources.list.d/repo.fortinet.com.list /etc/apt/sources.list.d/repo.fortinet.com.list.backup
sudo rm /etc/apt/sources.list.d/repo.fortinet.com.list
touch /etc/apt/sources.list.d/repo.fortinet.com.list
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/repo.fortinet.com.gpg] https://repo.fortinet.com/repo/forticlient/7.2/debian/ stable non-free" >> /etc/apt/sources.list.d/repo.fortinet.com.list
apt-get update

apt install forticlient 