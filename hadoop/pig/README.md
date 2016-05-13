# Pig docker image
This is a hadoop pig docker build project on Debian Linux distro.

## Version
- hadoop: 2.7.1
- pig: 0.15.0


## Building the image
- ``docker build -t anoopnair/pig_hadoop_debian:0.15.0 .``

## Running
- ``docker run --name pig -it anoopnair/pig_hadoop_debian:0.15.0 bash``
- and then start running pig scripts

