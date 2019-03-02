### CPM: Caddy Php Mariadb
CPM is a docker container source that provides Caddy web server and mariadb. It aims to use with Nodejs and Express server.
This script is recommended to use on Debian 9.7 x64.
  - Pre-Requirements: docker docker-compose (provide on install_docker_node.sh script)
  - run: `$ apt update && apt install git`


#### Steps
  - run: `$ git clone https://github.com/wwarodom/cpm.git`
  - run: `$ ./install_docker_node.sh`
  - edit: `.env` and `docker-compose.yml`
  - run: `$ docker-compose up -d`
    - webroot: ./workspace/public
    - mariadb data: ./data

#### Useful commands
  - run: `$ docker ps -a`
  - run: `$ docker images`
  - run: `$ docker-compose exec caddy sh`
  - run: `$ docker-compose logs caddy`
