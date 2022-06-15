sudo apt update
sudo apt upgrade
sudo apt install -y git wget xclip
wget -O vscode.deb https://az764295.vo.msecnd.net/stable/30d9c6cd9483b2cc586687151bcbcd635f373630/code_1.68.1-1655263094_amd64.deb
wget -O discord.deb https://dl.discordapp.net/apps/linux/0.0.18/discord-0.0.18.deb
wget -O dbeaver_ce.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo apt install -y ./vscode.deb
sudo apt install -y ./discord.deb
sudo apt install -y ./dbeaver_ce.deb
sudo rm vscode.deb discord.deb dbeaver_ce.deb

cd ~/.ssh
touch known_hosts
echo "sugestão de nome: key"
ssh-keygen
xclip -sel clip < key.pub
ssh-add key