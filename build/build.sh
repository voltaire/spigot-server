#!/bin/sh

if [ "${SOURCE_BRANCH}" = "main" ] || [ -z "${SOURCE_BRANCH}"]
then
    MINECRAFT_VERSION="latest"
else
    MINECRAFT_VERSION="${SOURCE_BRANCH}"
fi

java -jar /BuildTools.jar --rev ${MINECRAFT_VERSION}