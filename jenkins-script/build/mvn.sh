#! /bin/bash


echo "******************************************************************************"
echo "*****************Build Jar File **********************************************"
echo "******************************************************************************"


WORKSPACE=/var/jenkins_home/workspace/PULL-FROM-GIT-PUSH-IN-DOCKER-HUB-MAVEN-APP/


docker run --rm -it -v $WORKSPACE/java-app/:/app -v /root/.m2/:/root/.m2/ -w /app  maven:3-alpine "$@"
