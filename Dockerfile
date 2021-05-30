FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y install debmirror xz-utils && \
    apt-get -y autoclean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /etc/debmirror/

COPY ./entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
