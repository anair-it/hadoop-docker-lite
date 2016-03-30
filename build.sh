#!/bin/sh
cd base; ./build.sh
cd ../zookeeper-3.4.6; ./build.sh
cd ../hbase-1.1.2; ./build.sh
cd ../kafka-0.8.2; ./build.sh
cd ../storm-0.10.0; ./build.sh
