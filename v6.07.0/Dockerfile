FROM debian:jessie

MAINTAINER Lothar Wieske <lothar.wieske@gmail.com>

ADD "https://cli.run.pivotal.io/stable?version=6.07.0&release=linux64-binary"" /tmp/

RUN cat /tmp/stable | tar xfz - -C /usr/bin                              && \
    chmod ugo+rx /usr/bin/cf
