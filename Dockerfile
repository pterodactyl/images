FROM adoptopenjdk/openjdk11:alpine-jre
 
RUN apk add --no-cache --update jq curl ca-certificates openssl git tar bash sqlite fontconfig tzdata iproute2 \
    && adduser --disabled-password --home /home/container container
 
USER container
ENV  USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
