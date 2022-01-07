#!/bin/sh

echo "*******************************"
echo "****Testing the code from test.sh*******"
echo "*******************************"

docker run --rm -v $PWD/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.5.4-alpine mvn test
