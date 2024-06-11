curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.1/install.sh | bash
source ~/.bashrc
nvm --version
nvm install 20
nvm alias default node
node -v
nvm ls
npm install -g yarn