# Storm docker image
Build a storm docker image on Debian Linux distro.


## Verison
0.10.0

## Building the image
- ``./build.sh``

## Usage
Start a cluster with zookeeper and docker:

- ``docker-compose up``

Destroy a cluster:

- ``docker-compose stop``

Add more supervisors:

- ``docker-compose scale supervisor=3``


## Storm UI
http://localhost:49080


## Deploy a topology

	
	docker run -v _HOST-WORKSPACE_:/home/storm --rm --entrypoint storm anoopnair/storm-nimbus_debian:0.10.0 jar /home/storm/_ARTIFACT-NAME_.jar _MAIN-CLASS-PACKAGE_ local -c nimbus.host=`docker inspect --format='{{.NetworkSettings.IPAddress}}' storm-nimbus`
