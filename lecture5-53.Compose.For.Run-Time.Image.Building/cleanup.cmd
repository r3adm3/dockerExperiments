rem extra -v removes all the volumes too. 
docker-compose down -v

rem --rmi local deletes locally generated images
docker-compose down --rmi local