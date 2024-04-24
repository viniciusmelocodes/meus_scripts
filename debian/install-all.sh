sudo apt update
apt upgrade
apt install -y git wget xclip docker docker-compose flatpak
apt install -f

apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.visualstudio.code
flatpak install flathub io.dbeaver.DBeaverCommunity
flatpak install flathub it.fabiodistasio.AntaresSQL
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.gitfiend.GitFiend
flatpak install flathub com.google.Chrome
flatpak install flathub org.telegram.desktop
flatpak install flathub com.anydesk.Anydesk
flatpak install flathub com.getpostman.Postman
flatpak install flathub com.slack.Slack
flatpak install flathub org.remmina.Remmina
flatpak install flathub org.filezillaproject.Filezilla
flatpak install flathub com.wps.Office
flatpak install flathub io.github.Figma_Linux.figma_linux

cd ~
mkdir .ssh
cd .ssh
touch known_hosts
echo "sugestão de nome: my-key"
ssh-keygen
xclip -sel clip < key.pub
ssh-add key
