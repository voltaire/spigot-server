#!/bin/sh

echo "fetching buildtools"
wget -O ./BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

echo "building for ${MINECRAFT_VERSION}"
java -jar ./BuildTools.jar --rev ${MINECRAFT_VERSION}

echo "rename spigot.jar"
find . -regextype posix-egrep -regex '\./spigot-([0-9\.].*).jar' -exec mv {} ./spigot.jar \;
ls -lha ./spigot.jar
