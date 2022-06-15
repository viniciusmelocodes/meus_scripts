sudo apt update
sudo apt upgrade
sudo apt install -y git wget
wget https://az764295.vo.msecnd.net/stable/30d9c6cd9483b2cc586687151bcbcd635f373630/code_1.68.1-1655263094_amd64.deb vscode.deb
wget https://dl.discordapp.net/apps/linux/0.0.18/discord-0.0.18.deb discord.deb
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb dbeaver_ce.deb
sudo apt install -y ./vscode.deb
sudo apt install -y ./discord.deb
sudo apt install -y ./dbeaver_ce.deb