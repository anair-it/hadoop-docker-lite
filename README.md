# Hadoop cluster - lite
Build a lightweight hadoop cluster with below mentioned hadoop services. These versions match what Hortonworks HDP 2.3.4 distribution has.


## Versions
- Alpine Linux: latest
- Debian: 8.3
- Java: Open JDK 7
- hadoop : 2.7.1
- pig: 0.15.0
- Zookeeper: 3.4.6
- Hbase: 1.1.2
- Kafka: 0.9.0.1
- Kafka manager: latest
- Storm: 0.10.0
- Phoenix: 4.7.0

Note: Hadoop and storm are built on Debian Linux and all others on Alpine Linux

>Dockerhub: https://hub.docker.com/r/anoopnair/

## Prerequsities
- Install [Docker](https://docs.docker.com/engine/installation/)
- Install [Docker compose](https://docs.docker.com/compose/install/)

> The Docker project is tested on Ubuntu host. There is no guarantee that this will work on Windows.


## Building all images
- Pull from docker hub OR
- Build each image individually

>This will individually build the above mentioned images. This will take sometime and is required to be done only once.

- Get zookeeper IP address using 

``docker inspect --format='{{.NetworkSettings.IPAddress}}' zookeeper``
- Get hbase IP address using 

``docker inspect --format='{{.NetworkSettings.IPAddress}}' hbase``
- Add zookeeper and hbase entries in the host /etc/hosts file

## Verification
- ``docker images`` to see all images created with proper tag version
- ``docker logs -f _CONTAINER_NAME_`` to follow logs for a specific container

If there is inconsistency in the image creation process, run the affected build script only. The build script is in each component directory.

## Starting

``./start.sh`` (background process)
OR

``docker-compose up``  (foreground process)

## Stopping

``docker-compose stop``


## Web UI
- [HBASE](http://localhost:60010)
- [Storm](http://localhost:49080)
- [Kafka manager](http://localhost:9000)
- [Hadoop cluster](http://localhost:8088)


## READMEs
Please go through below READMEs to get detailed information about each image

- [Alpine base README](alpine-base/README.md)
- [Debian base README](debian-base/README.md)
- [Hadoop README](hadoop/README.md)
- [Pig README](hadoop/pig/README.md)
- [Zookeeper README](zookeeper/README.md)
- [Hbase README](hbase/README.md)
- [Kafka README](kafka/README.md)
- [Storm README](storm/README.md)

## Reference
- https://hub.docker.com/r/wurstmeister/kafka/
- https://hub.docker.com/r/sheepkiller/kafka-manager/
- https://hub.docker.com/r/wurstmeister/storm/
- https://hub.docker.com/r/sequenceiq/hadoop-ubuntu/
- http://sookocheff.com/post/docker/containerizing-zookeeper-a-guided-tour/
- http://www.slideshare.net/fabiofumarola1/8a-setup-hbase
- https://docs.docker.com/engine/userguide/intro/
- https://docs.docker.com/compose/
- https://phoenix.apache.org/
