FROM ubuntu:16.04

LABEL MAINTAINER="chen2584"

ENV ENVIRONMENT production

RUN apt-get update \
    && apt-get install -y wget \
    && apt-get install -y apt-transport-https \
    && wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get update \
    && apt-get install -y aspnetcore-runtime-2.1 \
    && rm -r /var/lib/apt/lists/*

EXPOSE 5000 5001