#!/bin/sh
cd base; ./build.sh
cd ../hadoop; ./build.sh
cd ../zookeeper; ./build.sh
cd ../hbase; ./build.sh
cd ../kafka; ./build.sh
cd ../storm; ./build.sh
