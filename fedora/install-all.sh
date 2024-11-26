#!/usr/bin/env bash

sudo dnf update -y
dnf upgrade -y

rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo

echo
echo
echo '===================== dnf-plugins-core git wget curl xclip flatpak nodejs npm zsh codium java-latest-openjdk.x86_64 ====================='
dnf install -y dnf-plugins-core git wget curl xclip flatpak nodejs npm zsh codium java-latest-openjdk.x86_64

echo
echo
echo '===================== java -version ====================='
java -version
echo

# Docker
dnf config-manager addrepo --from-repofile=https://download.docker.com/linux/fedora/docker-ce.repo

# Docker Compose
curl -s https://api.github.com/repos/docker/compose/releases/latest \
  | grep browser_download_url \
  | grep docker-compose-linux-x86_64 \
  | cut -d '"' -f 4 \
  | wget -qi -

chmod +x docker-compose-linux-x86_64

mv docker-compose-linux-x86_64 /usr/local/bin/docker-compose
rm docker-compose-linux-x86_64*

echo
echo
echo '===================== Docker ====================='
dnf install -y docker docker-ce docker-ce-cli containerd.io

echo
echo
echo '========= Flathub ========='
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub com.rtosta.zapzap
flatpak install -y flathub com.github.IsmaelMartinez.teams_for_linux
flatpak install -y flathub org.telegram.desktop
flatpak install -y flathub io.dbeaver.DBeaverCommunity
flatpak install -y flathub it.fabiodistasio.AntaresSQL
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.gitfiend.GitFiend
flatpak install -y flathub com.google.Chrome
flatpak install -y flathub com.anydesk.Anydesk
flatpak install -y flathub rest.insomnia.Insomnia
flatpak install -y flathub com.slack.Slack
flatpak install -y flathub org.remmina.Remmina
flatpak install -y flathub org.filezillaproject.Filezilla
flatpak install -y flathub com.wps.Office
flatpak install -y flathub io.github.jorchube.monitorets
flatpak install -y flathub com.microsoft.Edge
flatpak install -y flathub org.videolan.VLC
flatpak install -y flathub org.kde.isoimagewriter
flatpak install -y flathub com.spotify.Client
flatpak install -y flathub io.missioncenter.MissionCenter
flatpak install -y flathub org.kde.umbrello
flatpak install -y flathub org.gimp.GIMP
flatpak install -y flathub org.mozilla.Thunderbird

if zenity --question --text="Deseja criar nova chave SSH?"; then
  cd ~
  mkdir .ssh
  cd .ssh
  touch known_hosts
  echo "sugestão de nome: my-key"
  ssh-keygen
  xclip -sel clip < key.pub
  ssh-add key
fi

# ZSH
# sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# PNPM
#wget -qO- https://get.pnpm.io/install.sh | sh -

source /home/vinicius/.bashrc

zenity --info --text="Instalação Fedora finalizada com sucesso."