#!/bin/sh

echo "*******************************"
echo "****Building Jar Darshan*******"
echo "*******************************"

docker run --rm -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.5.4-alpine mvn -B -DskipTests clean package
