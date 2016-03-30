hadoop docker lite
======
Build a lightweight container with below mentioned hadoop services. These versions match what Hortonworks HDP 2.3.2 distribution has.


Versions
----
- Ubuntu: 14.04
- Java: Oracle JDK 7
- hadoop : 2.7.1
- Zookeeper: 3.4.6
- Hbase: 1.1.2
- Kafka: 0.8.2
- Storm: 0.10.0


Building all images
-----
- ```./build.sh```

>This will individually build the above mentioned images. This will take sometime and is required to be done only once.

Verification
---
- Run ```docker images``` to see all images created with proper tag version

Starting
---
- ```./start.sh```

Restarting
----
- ```./restart.sh```

Stopping
----
- ```docker-compose stop```


Reference
-----
- Refer README.md files in each image folder.

Inspired by
----
- https://github.com/wurstmeister/kafka-docker
- https://github.com/wurstmeister/storm-docker
- http://sookocheff.com/post/docker/containerizing-zookeeper-a-guided-tour/
- http://www.slideshare.net/fabiofumarola1/8a-setup-hbase
- https://hub.docker.com/r/sequenceiq/hadoop-ubuntu/
