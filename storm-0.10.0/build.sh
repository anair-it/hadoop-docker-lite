#!/bin/sh
cd storm; ./build.sh
cd ../storm-nimbus; ./build.sh
cd ../storm-supervisor; ./build.sh
cd ../storm-ui; ./build.sh
