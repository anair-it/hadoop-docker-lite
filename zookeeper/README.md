# Zookeeper docker image
Build a zookeeper docker image on Alpine Linux distro. 
The ports 2181,2888,3888 are exposed.

## Version
3.4.6


## Building the image
- ``docker build -t anoopnair/zookeeper_alpine:3.4.6 .``

## Running zookeeper on a container
- ``docker run --name zookeeper -d -p 2181:2181 -p 2888:2888 -p 3888:3888 anoopnair/zookeeper_alpine:3.4.6``

