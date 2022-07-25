FROM openjdk:11.0.15-oraclelinux8 as build

USER root

WORKDIR /workspace/app

COPY build.gradle .
COPY gradlew .
COPY settings.gradle .
COPY gradle gradle
COPY src src

RUN ./gradlew build -x test
RUN java -Djarmode=layertools -jar build/libs/spring-boot-docker-0.0.1.jar extract --destination extracted/
# don't forget to add into build.gradle
# jar {
#    archiveName 'spring-boot-docker.jar'
#    }

FROM openjdk:11.0.15-jre-slim-buster

WORKDIR application
ARG EXTRACTED=/workspace/app/extracted
COPY --from=build ${EXTRACTED}/dependencies/ ./
COPY --from=build ${EXTRACTED}/spring-boot-loader/ ./
COPY --from=build ${EXTRACTED}/snapshot-dependencies/ ./
COPY --from=build ${EXTRACTED}/application/ ./
ENTRYPOINT ["java","-noverify","-XX:TieredStopAtLevel=1","-Dspring.main.lazy-initialization=true","org.springframework.boot.loader.JarLauncher"]
