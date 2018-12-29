FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
ARG VERSION

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:stebbins/handbrake-releases && \
    apt-get update && \
    apt-get install -y handbrake-cli=$VERSION-zhb-1ppa1~bionic1 

ENTRYPOINT ["HandBrakeCLI"]
