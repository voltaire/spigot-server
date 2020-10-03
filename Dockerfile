FROM amazoncorretto:8-alpine-jdk
ADD https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar /BuildTools.jar
RUN apk add --no-cache git ca-certificates
WORKDIR /build
ADD build.sh /build.sh
RUN /build.sh