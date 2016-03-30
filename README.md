hadoop docker lite
======
Build a lightweight container with below mentioned hadoop services. These versions match what Hortonworks HDP 2.3.2 distribution has.


Versions
----
- Ubuntu: 14.04
- Java: Oracle JDK 7
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

Running
----
Starting
- ```./start.sh```

Restarting
- ```./restart.sh```

Reference
-----
- Refer README.md files in each image folder.
