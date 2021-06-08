FROM        ubuntu:20.04

LABEL       author="Synk" maintainer="synk@nasulex.net"

ENV         DEBIAN_FRONTEND noninteractive
RUN         dpkg --add-architecture i386 \
            && apt-get update \
            && apt-get upgrade -y \
            && apt-get install gnupg apt-transport-https ca-certificates software-properties-common -y \
            && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \ 
            && apt-add-repository 'deb https://download.mono-project.com/repo/ubuntu stable-focal main' \
            && apt-get install -y tar curl gcc g++ lib32gcc1 libgcc1 libcurl4-gnutls-dev:i386 libssl1.1:i386 libcurl4:i386 libtinfo5:i386 lib32z1 lib32stdc++6 libncurses5:i386 libcurl3-gnutls:i386 iproute2 gdb libsdl1.2debian libfontconfig telnet net-tools netcat git tzdata mono-complete \
            && useradd -m -d /home/container container

USER        container
ENV         HOME /home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
