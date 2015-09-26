FROM golang

MAINTAINER Lothar Wieske <lothar.wieske@gmail.com>

ENV PATH /root/bin:$PATH

RUN set -x \
  && mkdir /root/bin \
  && cd /root/bin \
  && curl --silent http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v6.12.4/cf-linux-amd64.tgz | \
     tar xfz  -

CMD /bin/bash
