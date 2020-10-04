FROM amazoncorretto:8-alpine-jdk AS builder
ADD https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar /BuildTools.jar
RUN apk add --no-cache git ca-certificates findutils
WORKDIR /build
ADD build.sh /build.sh
RUN /build.sh

FROM amazoncorretto:8-alpine-jdk
COPY --from=builder /spigot.jar /spigot.jar