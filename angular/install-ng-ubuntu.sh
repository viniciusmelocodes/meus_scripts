sudo apt install curl
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc

# To Angular 14+
nvm install v16

node -v
npm -v
npm install @angular/cli --location=global
ng version

# To create new app Angular
#ng new hello-world