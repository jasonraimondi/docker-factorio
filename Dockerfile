FROM debian:jessie

LABEL maintainer "Jason Raimondi <jason@raimondi.us>"

WORKDIR /opt

ENV FACTORIO_VERSION 0.15.10

RUN apt-get update \
    && apt-get install -y wget \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget --no-check-certificate -O factorio_headless_x64_${FACTORIO_VERSION}.tar.gz https://www.factorio.com/get-download/${FACTORIO_VERSION}/headless/linux64 \
    && tar xvzf factorio_headless_x64_${FACTORIO_VERSION}.tar.gz \
    && rm factorio_headless_x64_${FACTORIO_VERSION}.tar.gz \
    && ls