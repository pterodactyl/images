# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Java (glibc support)
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM	debian:9.11-slim

LABEL	author="WGOS" maintainer="wgos@wgos.org"

RUN	apt update && apt upgrade -y \
	&& apt install -y gnupg \
	&& apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 \
		--recv-keys 0xB1998361219BD9C9 \
	&& echo "deb http://repos.azulsystems.com/debian stable main" >> /etc/apt/sources.list.d/zulu.list \
	&& mkdir -p /usr/share/man/man1 \
	&& apt update \
	&& apt install -y --no-install-recommends tzdata zre-8 \
	&& useradd -d /home/container -m container
 
USER	container
ENV	USER=container HOME=/home/container

WORKDIR	/home/container

COPY	./entrypoint.sh /entrypoint.sh

CMD	["/bin/bash", "/entrypoint.sh"]
