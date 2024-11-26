#!/usr/bin/env bash

sudo apt update
apt upgrade

apt install -y git snap wget curl xclip flatpak gnome-software-plugin-flatpak nodejs npm zsh default-jdk default-jre
apt install -f

snap install codium

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

# PNPM
if zenity --question --text="Deseja instalar PNPM?"; then
    wget -qO- https://get.pnpm.io/install.sh | sh -
fi

source /home/vinicius/.bashrc

# ZSH
if zenity --question --text="Deseja instalar Oh My Zsh?"; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

source /home/vinicius/.bashrc
