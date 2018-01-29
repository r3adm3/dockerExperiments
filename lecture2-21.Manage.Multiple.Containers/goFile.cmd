docker container run --name nginx -d nginx
docker container run --name mysql -d -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql
docker container run --name httpd -d httpd
