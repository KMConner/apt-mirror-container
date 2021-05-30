FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y install debmirror xz-utils && \
    apt-get -y autoclean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /etc/debmirror/

COPY ./entrypoint.sh /
COPY ./config.conf /etc/debmirror
COPY ./config2.conf /etc/debmirror

ENTRYPOINT [ "/entrypoint.sh" ]
