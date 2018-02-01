rem starts new upgraded postgres container using same named container
docker container run -d --name postgres2 -v postgres-db:/var/lib/postgresql/data postgres:9.6.2
