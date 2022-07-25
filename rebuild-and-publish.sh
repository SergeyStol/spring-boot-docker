#!/bin/sh

docker build -f local.Dockerfile -t stols/spring-boot-docker --progress=plain --no-cache .
if [ $? != 0 ] ; then # [ $? != 0 ] - means that previous command isn't successful
    exit 1 # General errors
fi
docker tag stols/spring-boot-docker sergeystol/spring-boot-docker
docker push sergeystol/spring-boot-docker
