docker network create mySearchNet
docker container run -d --net mySearchNet --name search1 --net-alias search elasticsearch:2 
docker container run -d --net mySearchNet --name search2 --net-alias search elasticsearch:2 
docker container run -it --net mySearchNet --name alpine alpine