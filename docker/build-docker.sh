#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-menelik/menelikd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/menelikd docker/bin/
cp $BUILD_DIR/src/menelik-cli docker/bin/
cp $BUILD_DIR/src/menelik-tx docker/bin/
strip docker/bin/menelikd
strip docker/bin/menelik-cli
strip docker/bin/menelik-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
