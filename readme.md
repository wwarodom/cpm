### CPM: Caddy Php Mariadb
CPM is a docker container source that provides caddy web server and maria database.
 
#### Steps
  - run: `$ git clone https://github.com/wwarodom/cpm.git`
  - edit: `.env` and `docker-compose.yml`
  - run: `$ docker-compose up -d`
    - webroot: ./workspace/public
    - mariadb data: ./data
