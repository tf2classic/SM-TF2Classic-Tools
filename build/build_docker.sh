#!/bin/bash
docker run -it ubuntu:18.04 bash -c \
"dpkg --add-architecture i386 && \
apt-get update && \
apt-get install -y git python3 python3-pip clang lib32stdc++-8-dev lib32z1-dev libc6-dev-i386 linux-libc-dev:i386 && \
git clone https://github.com/tf2classic/SM-TF2Classic-Tools/ && \
cd SM-TF2Classic-Tools && \
cd build && \
bash build.sh"
