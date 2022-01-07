#!/bin/bash

echo maven-demo-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth

scp -i /root/jenkins-data/pipeline/prod /tmp/.auth prod-user@18.191.154.231:/tmp/.auth

scp -i  /root/jenkins-data/pipeline/prod ./jenkins/deploy/publish prod-user@18.191.154.231:/tmp/publish

ssh -i /root/jenkins-data/pipeline/prod prod-user@18.191.154.231 "/tmp/publish"
