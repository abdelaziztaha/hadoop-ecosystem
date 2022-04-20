docker stop $(docker ps -a -q)
docker rm  $(docker ps -a -q)
#docker rmi -f $(docker images -q --no-trunc)
docker network rm $(docker network ls  -q --no-trunc)
docker volume prune
docker images


