#!/bin/sh
cd alpine-base; ./build.sh
cd ../zookeeper; ./build.sh
cd ../hbase; ./build.sh
cd ../kafka; ./build.sh
cd ../storm; ./build.sh

cd ../debian-base; ./build.sh
cd ../hadoop; ./build.sh
