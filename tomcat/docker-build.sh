#!/usr/bin/env bash

# remove all non-running containers
docker rm -f $(docker ps -aq)

# remove all untagged images
docker images | grep "^<none>"
greprc=$?
if [[ $greprc -ne 0 ]] ; then
    docker rmi -f $(docker images | grep "^<none>" | awk '{print $3}')
fi
docker rmi glimmpse/tomcat

# build docker image
docker build --rm -t glimmpse/tomcat2 .
