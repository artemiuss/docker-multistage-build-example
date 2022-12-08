# Example of using Docker multi-stage build

docker build . -t c_hello_world
docker images

removing intermediate build image:
docker image prune --filter label=stage=builder
docker images

docker run --name c_hello_world c_hello_world

Cleaun-up
docker stop c_hello_world
docker rm c_hello_world
docker image rm c_hello_world ubuntu



