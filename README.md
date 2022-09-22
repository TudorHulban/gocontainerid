# gocontainerid
## create image
```sh
docker build -t goapp .
```
## list images
```sh
docker image ls
```
## delete all images
```sh
docker images -q |xargs docker rmi -f
```
## create container
```sh
docker run -d -p 8000:8000 --name container_name -it goapp
```
## list containers
```sh
docker ps -a
```
## delete all containers
```sh
docker rm -f `docker ps --no-trunc -aq`
```
## check container logs
```sh
docker logs $container_id
```
## connect to container
```sh
docker container exec -it container_name /bin/sh
```