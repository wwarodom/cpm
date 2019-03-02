### CPM: Caddy Php Mariadb
CPM is a docker container that provides Caddy web server and mariadb. It aims to use with Nodejs as APIs.
This script is recommended to use on Debian 9.7 x64. Some Dockerfiles are taken from Laradock.
  - **Pre-Requirements**: docker docker-compose (provide on install_docker_node.sh script)
  - You MUST have ***domain*** (and replace ***werapun.com*** to your domain)
  - Install git:  `$ sudo apt update && sudo apt install --yes git`

#### Steps
  - run: `$ git clone https://github.com/wwarodom/cpm.git`
  - run: `$ cd cpm && sudo ./install_docker_nodejs.sh`
  - edit: `.env` and `docker-compose.yml`
    - modify config in ./caddy/caddy/Caddyfile to your domain 
  - run: `$ docker-compose up -d`
    - webroot: ./workspace/public
    - mariadb data: ./data

#### Useful commands
  - run: `$ docker ps -a`
  - run: `$ docker images`
  - run: `$ docker-compose exec caddy sh`
  - run: `$ docker-compose logs caddy`

#### Check status and add docker/sudo group
  - run: `$ sudo systemctl status docker`
  - run: `$ sudo usermod -aG docker user`
  - run: `$ sudo usermod -aG sudo user`

#### Test HTTP/2, SSL and Reverse proxy
  - run: `$ cd workspace && pm2 start server.js`
  - Open browser web server https://example.werapun.com 
    - Reverse proxy: https://apiexample.werapun.com

#### docker IP 
If you need to assign another private IPs for containers, please create `/etc/docker/daemon.json` and restart docker service.
```
{
  "bip": "10.0.0.1/24",
  "fixed-cidr": "10.0.0.1/25",
  "mtu": 1500,
  "dns": ["127.0.0.53","192.168.192.6"],
  "default-address-pools" : [
    {
      "base" : "10.1.0.0/16",
      "size" : 24
    }
  ]
}
```
