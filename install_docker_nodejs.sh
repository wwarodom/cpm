#=======================
#  Install docker
#======================
sudo apt update  \
   && sudo apt install --yes apt-transport-https ca-certificates curl gnupg2 software-properties-common \
   && sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - \
   && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
   && sudo apt update \
   && sudo apt-cache policy docker-ce \
   && sudo apt install --yes docker-ce

#========================
# Install docker-compose
#========================
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose \
   && sudo chmod +x /usr/local/bin/docker-compose


#======================
# Install nodejs
#======================
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh \
   && chmod 700 nodesource_setup.sh \
   && sudo ./nodesource_setup.sh \
   && sudo apt install --yes gcc g++ make  \
   && sudo curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -  \
   && sudo echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
   && sudo apt-get update && sudo apt install --yes yarn \
   && sudo apt install --yes build-essential \
   && sudo npm i -g pm2


# Created by: Warodom Werapun
# 2 Mar 2019

