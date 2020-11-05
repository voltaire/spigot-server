# spigot-server

builds the spigot jar that you can copy into your dockerfile like so:

```Dockerfile
FROM amazoncorretto:8-alpine-jdk
COPY --from=ghcr.io/voltaire/spigot-server:1.11.2 /spigot.jar /srv/spigot.jar
RUN java -jar /srv/spigot.jar
```

## jar location

the jar is at `/spigot.jar`.

## tags

tags correspond to minecraft server version.

[See the full list of available minecraft versions](https://github.com/orgs/voltaire/packages/container/spigot-server/versions)
