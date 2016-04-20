#!/bin/sh
#docker stop $(docker ps -a -q)
#docker rm $(docker ps -a -q)
docker-compose stop
docker-compose up -d

