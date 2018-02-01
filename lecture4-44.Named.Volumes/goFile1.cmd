rem starts postgres with a named volume
docker container run -d --name postgres1 -v postgres-db:/var/lib/postgresql/data postgres:9.6.1

rem stops container in readyness for patch
docker container stop postgres1