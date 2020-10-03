# spigot-server

builds the spigot jar that you can copy into your dockerfile like so:

```Dockerfile
FROM amazoncorretto:8-alpine-jdk
COPY --from=voltairemc/spigot-server:1.11.2 /spigot.jar /srv/spigot.jar
RUN java -jar /srv/spigot.jar
```

## jar location

the jar is always at `/spigot.jar`.

## tags

tags correspond to minecraft server version. [configuration is defined in docker hub](https://hub.docker.com/repository/docker/voltairemc/spigot-server/builds/edit)

* `latest`
* `1.16.3`
* `1.11.2`
