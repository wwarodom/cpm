#=======================
#  Install docker
#======================
apt update  \
   &&  apt install --yes apt-transport-https ca-certificates curl gnupg2 software-properties-common \
   && curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - \ 
   && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
   && apt update \
   && apt-cache policy docker-ce \
   && apt install --yes docker-ce   \
   && systemctl status docker


#========================
# Install docker-compose
#========================
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose \
   && chmod +x /usr/local/bin/docker-compose


#======================
# Install nodejs
#======================
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh \
   && chmod 700 nodesource_setup.sh \
   && ./nodesource_setup.sh \

   && apt install --yes gcc g++ make  \
   && curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -  \
   && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
   && sudo apt-get update && sudo apt-get install yarn \
   && apt install --yes build-essential \

   && npm i -g pm2


# Created by: Warodom Werapun
# 2 Mar 2019
