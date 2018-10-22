
#check nodes are up
docker node ls

#check nothing is running
docker ps -a
docker service ls

#networks 
docker network create -d overlay backend
docker network create -d overlay frontend

#vote
docker service create --name vote -p 80:80 --network frontend --replicas 2 dockersamples/examplevotingapp_vote:before

#redis
docker service create --name redis --network frontend --replicas 1 redis:3.2

#worker
docker service create --name worker --network frontend --network backend --replicas 1 dockersamples/examplevotingapp_worker

#db
docker service create --name db --network backend --mount type=volume,source=db-data,target=/var/lib/postgresql/data postgres:9.4

#result
docker service create --name result --network backend -p 5001:80 --replicas 1 dockersamples/examplevotingapp_result:before

