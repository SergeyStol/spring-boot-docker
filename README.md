# spring-boot-docker
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FSergeyStol%2Fspring-boot-docker.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2FSergeyStol%2Fspring-boot-docker?ref=badge_shield)

A few scripts for package java into docker 
# Getting Started
## Prerequisites
* Java JDK version 11 (https://openjdk.java.net/install/)
* `git` (https://git-scm.com/)
* `docker` (https://docker.io/)
* `shell`
* `curl`

## Installing

```
git clone https://github.com/SergeyStol/spring-boot-docker.git
cd spring-boot-docker
./gradlew clean build
```
You can find the installed artifact `build/libs` folder.

# Running

## Running locally using docker

```
./run.sh
```

This will launch spring-boot-docker service in docker container 
listening on `http://localhost:8080`.

Check the service's health by running

```
curl http://localhost:8080
```

You should see "Hello world!".

## Running locally using gradle

```
./gradlew bootRun
```
This will launch spring-boot-docker service listening on `http://localhost:8080`.

Check the service's health by running

```
curl http://localhost:8080
```

You should see "Hello world!".

## Configuration

The following configuration properties are supported:
* `server.port` (envvar: `SERVER_PORT`) -- server listen port

See `application.properties` for the full list of configuration properties

## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FSergeyStol%2Fspring-boot-docker.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2FSergeyStol%2Fspring-boot-docker?ref=badge_large)