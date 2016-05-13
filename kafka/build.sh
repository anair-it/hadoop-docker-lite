#!/bin/sh
docker build -t anoopnair/kafka_alpine:0.9.0.1 .
docker pull sheepkiller/kafka-manager
