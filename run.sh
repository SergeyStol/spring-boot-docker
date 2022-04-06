#!/bin/sh

docker build -f local.Dockerfile -t stols/spring-boot-docker --progress=plain --no-cache .
if [ $? != 0 ] ; then # [ $? != 0 ] - means that previous command isn't successful
    exit 1 # General errors
fi
docker run -d -p 8080:8080 stols/spring-boot-docker