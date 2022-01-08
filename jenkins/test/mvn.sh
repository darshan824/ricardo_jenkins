#!/bin/sh

echo "*******************************"
echo "****Testing the code from test.sh*******"
echo "*******************************"

WORKSPACE=/root/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.5.4-alpine mvn test
