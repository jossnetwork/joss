FROM debian:stretch
LABEL maintainer="Joss Developers <dev@joss.network>"
LABEL description="Dockerised JossCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
