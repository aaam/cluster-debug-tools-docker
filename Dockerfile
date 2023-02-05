FROM golang:buster

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install -qq git make gcc g++ libc6-dev
RUN mkdir -p /app/cluster-debug-tools

WORKDIR /app/cluster-debug-tools

CMD git clone https://github.com/openshift/cluster-debug-tools.git . && make GO_REQUIRED_MIN_VERSION:=
