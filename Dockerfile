FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y python3-pip e2tools qemu unzip && \
    pip3 install https://github.com/nongiach/arm_now/archive/master.zip --upgrade

VOLUME /mount

WORKDIR /mount
