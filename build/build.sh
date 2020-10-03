#!/bin/sh

if [ -z "${DOCKER_TAG}"]
then
    MINECRAFT_VERSION="latest"
else
    MINECRAFT_VERSION="${SOURCE_BRANCH}"
fi

java -jar /BuildTools.jar --rev ${MINECRAFT_VERSION}