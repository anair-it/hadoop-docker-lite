#!/bin/sh
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker-compose up -d

