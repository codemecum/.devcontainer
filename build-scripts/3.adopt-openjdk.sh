#!/usr/bin/env bash
set -euxo pipefail

# https://adoptopenjdk.net/releases.html?variant=openjdk11&jvmVariant=openj9

mkdir -p /usr/local/jdk/

curl -o /tmp/jdk.tar.gz -L https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.10%2B9_openj9-0.24.0/OpenJDK11U-jdk_x64_linux_openj9_11.0.10_9_openj9-0.24.0.tar.gz
echo "941d5df125d2ad426391340f539408b13d61d00ed31dd79142ff1ac84864a79f  /tmp/jdk.tar.gz" | sha256sum -c -

tar -xzf /tmp/jdk.tar.gz -C /usr/local/jdk/ --strip 1
rm -f /tmp/jdk.tar.gz
