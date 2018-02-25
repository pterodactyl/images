FROM ubuntu:16.04

MAINTAINER mrkrabs, <bl4ckspr4y@protonmail.com>

RUN apt update \
    && apt upgrade -y \
    && apt install -y libstdc++6 lib32stdc++6 tar curl iproute2 openssl \
    && useradd -d /home/container -m container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
