# gocontainerid
## create image
```sh
sudo docker build -t goapp .
```
## list images
```sh
docker image ls
```
## create container
```sh
sudo docker run -d -p 8000:8000 --name container_name -it goapp
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