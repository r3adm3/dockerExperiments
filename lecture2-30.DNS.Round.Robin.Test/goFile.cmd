docker network create mySearchNet
docker container run -d --net mySearchNet --name search1 --net-alias search elasticsearch:2 
docker container run -d --net mySearchNet --name search2 --net-alias search elasticsearch:2 
docker container run --net mySearchNet --name alpine alpine nslookup search
docker container run --net mySearchNet -it --name centos centos:7
rem curl -s search:9200