Storm docker image
============

##Verison
0.10.0

##Building the image
- ```./build.sh```

##Usage

Start a cluster with zookeeper and docker:

- ```docker-compose up```

Destroy a cluster:

- ```docker-compose stop```

Add more supervisors:

- ```docker-compose scale supervisor=3```


## Access Storm UI
- (http://localhost:49080)


### Deploy a topology
- ```storm jar my-topology.jar com.package topology-name```

