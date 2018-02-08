# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Mono
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM        frolvlad/alpine-mono

MAINTAINER  Pterodactyl Software, <support@pterodactyl.io>

RUN         apk update \
            && apk add --no-cache openssl curl sqlite \
            && adduser -D -h /home/container container

USER        container
ENV         HOME=/home/container USER=container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/ash", "/entrypoint.sh"]
