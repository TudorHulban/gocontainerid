# helm homework
## Docker
### create image
```sh
docker build -t goapp .
```
### list images
```sh
docker image ls
```
### delete all images
```sh
docker images -q |xargs docker rmi -f
```
### create container
```sh
docker run -d -p 8000:8000 --name container_name -it goapp
```
### list containers
```sh
docker ps -a
```
### delete all containers
```sh
docker rm -f `docker ps --no-trunc -aq`
```
### check container logs
```sh
docker logs $container_id
```
### connect to container
```sh
docker container exec -it container_name /bin/sh
```
## Helm
### check autoscaling
```sh
kubectl api-versions | grep autoscaling
```
## Resources
Dockerize your Go app
```html
https://www.youtube.com/watch?v=1-4hU2e7S4k&list=PLSvCAHoiHC_rqKbcu1ummWVpLTDBNZHH7&index=3
https://dev.to/karanpratapsingh/dockerize-your-go-app-46pp
```

How to Make a Helm Chart From Scratch
```html
https://www.youtube.com/watch?v=k0L_yR30PqI&list=PLSvCAHoiHC_rqKbcu1ummWVpLTDBNZHH7&index=5
```

Helm
```html
https://www.youtube.com/watch?v=fX2TWxl64yQ&list=PLSvCAHoiHC_rqKbcu1ummWVpLTDBNZHH7&index=6
```

Full project
```html
https://github.com/askcloudarchitech/go-rest-api-kubernetes-example
```
