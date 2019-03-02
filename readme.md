### CPM: Caddy Php Mariadb
CPM is a docker container source that provides caddy web server and maria database which aims to use with nodejs and express server. This script is recommended to use on Debian 9.4.
  - Pre-Requirements: docker docker-compose nodejs

 
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
