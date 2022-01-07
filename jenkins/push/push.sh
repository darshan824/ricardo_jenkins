#!/bin/bash
echo "*****************"
echo "**Pushing image**"
echo "*****************"

IMAGE="maven-demo-project"

echo "***Logging in ***"

docker login -u darshan824 -p Shubaprabhu123@
echo "*** Tagging image***"
docker tag $IMAGE:$BUILD_TAG darshan824/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push darshan824/$IMAGE:$BUILD_TAG
