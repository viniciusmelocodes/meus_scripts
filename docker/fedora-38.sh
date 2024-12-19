sudo dnf -y update
sudo reboot
sudo dnf -y install dnf-plugins-core
sudo tee /etc/yum.repos.d/docker-ce.repo<<EOF
[docker-ce-stable]
name=Docker CE Stable - \$basearch
baseurl=https://download.docker.com/linux/fedora/37/\$basearch/stable
enabled=1
gpgcheck=1
gpgkey=https://download.docker.com/linux/fedora/gpg
EOF

sudo dnf makecache -y
sudo dnf install docker-ce docker-ce-cli containerd.io -y
sudo systemctl enable --now docker
systemctl status docker
sudo usermod -aG docker $(whoami)
newgrp docker
docker version
docker pull alpine

echo 'Informe apk update e depois exit para sair'
docker run -it --rm alpine /bin/sh

