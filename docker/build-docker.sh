#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-joss/jossd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/jossd docker/bin/
cp $BUILD_DIR/src/joss-cli docker/bin/
cp $BUILD_DIR/src/joss-tx docker/bin/
strip docker/bin/jossd
strip docker/bin/joss-cli
strip docker/bin/joss-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
