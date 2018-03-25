# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Java (glibc support)
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM python:3.6-alpine3.7

MAINTAINER Michael Parker, <docker@parkervcp.com>

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite \
    && adduser -D -h /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]