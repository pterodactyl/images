# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Java (glibc support)
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM	azul/zulu-openjdk-debian:8

LABEL	author="WGOS" maintainer="wgos@wgos.org"

RUN	apt update && apt upgrade -y \
	&& apt install -y curl ca-certificates openssl git tar sqlite fontconfig tzdata iproute2 \
	&& useradd -d /home/container -m container
 
USER	container
ENV	USER=container HOME=/home/container

WORKDIR	/home/container

COPY	./entrypoint.sh /entrypoint.sh

CMD	["/bin/bash", "/entrypoint.sh"]
