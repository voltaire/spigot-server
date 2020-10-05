#!/bin/sh

env

if [ -z "${DOCKER_TAG}"]
then
    MINECRAFT_VERSION="latest"
else
    MINECRAFT_VERSION="${DOCKER_TAG}"
fi

echo "building for ${MINECRAFT_VERSION}"
java -jar /BuildTools.jar --rev ${MINECRAFT_VERSION}
find . -regextype posix-egrep -regex '\./spigot-([0-9\.].*).jar' -exec mv {} /spigot.jar \;