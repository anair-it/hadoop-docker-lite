Kafka docker image
=======
Build a kafka docker image on Alpine Linux distro.

Version
----
- Kafka: 0.9.0.1
- Kafka manager: latest

Building the image
-----
```./build.sh```

This script will also pull kafka manager docker image from docker hub.

Usage
----
Start a cluster with zookeeper and kafka:

- ```docker-compose up -d ```

Add more brokers:

- ```docker-compose scale kafka=3```

Destroy a cluster:

- ```docker-compose stop```


Notes
-----
The default ```docker-compose.yml``` should be seen as a starting point. By default each broker will get a new port number and broker id on restart. Depending on your use case this might not be desirable. If you need to use specific ports and broker ids, modify the docker-compose configuration accordingly


Automatically create topics
---------
If you want to have kafka-docker automatically create topics in Kafka during creation, a ```KAFKA_CREATE_TOPICS``` environment variable can be
added in ```docker-compose.yml```.

Here is an example snippet from ```docker-compose.yml```:

        environment:
          KAFKA_CREATE_TOPICS: "INBOUND:1:2,OUTBOUND:1:1"

```INBOUND``` topic will have 1 partition and 2 replicas, ```OUTBOUND``` topic will have 1 partition and 1 replica.

Custom environments variables
------
1. Refer environment variables in [Kafka documentation](http://kafka.apache.org/documentation.html#configuration)
2. Convert the variable to uppercase, replace '.' with '_'
3. Prepend KAFKA_ to the variable
4. Use the variable as an environment variable

- Advertised hostname: ```KAFKA_ADVERTISED_HOST_NAME``` 
- Advertised port: ```KAFKA_ADVERTISED_PORT``` 


Kafka manager UI
------
- http://localhost:9090
- Create a cluster with zookeeper connection as 'zk:2181'
- Automatically detect broker and topics
