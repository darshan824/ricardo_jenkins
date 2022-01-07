#!/bin/bash

#Copy the new jar to the build location
cp -f java-app/target/*jar jenkins/build/

echo "*************************************************"
echo "*************Building docker image****************"
echo "**************************************************"

cd jenkins/build && docker-compose build --no-cache
