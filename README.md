# Example of using Docker multi-stage build

Building and image
```
docker build . -t c_hello_world
docker images
```

Removing intermediate build image:
```
docker image prune --filter label=stage=builder
docker images
```

Run a container:
```
docker run --name c_hello_world c_hello_world
```

Clean-up
```
docker stop c_hello_world
docker rm c_hello_world
docker image rm c_hello_world ubuntu
```


