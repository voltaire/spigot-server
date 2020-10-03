FROM amazoncorretto:8-alpine-jdk
ENV MINECRAFT_VERSION=1.16.3
ADD https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar /BuildTools.jar
RUN apk add --no-cache git ca-certificates
WORKDIR /output
RUN java -jar /BuildTools.jar --rev ${MINECRAFT_VERSION}