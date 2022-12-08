FROM ubuntu:22.04 AS builder
LABEL stage=builder
RUN apt-get update && apt-get install -y gcc
COPY hello_world.c ./
RUN gcc ./hello_world.c -o ./hello_world

FROM ubuntu:22.04  
COPY --from=builder hello_world ./
CMD ["./hello_world"]
