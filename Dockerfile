# shadowsocks
#
# VERSION 0.0.3

FROM ubuntu:14.04.3
MAINTAINER utick <222@gmail.com>
RUN apt-get update && \
            apt-get install -y git python-pip
RUN git clone -b manyuser https://github.com/breakwa11/shadowsocks.git /root/shadowsocks

ENV PORT 2016
ENV PASSWORD fuck2016
ENV METHOD rc4-md5
ENV OBFS http_simple_compatible
ENV PROTOCOL origin
ENV EXT -v

EXPOSE $PORT

# Configure container to run as an executable
ENTRYPOINT ["/root/shadowsocks/shadowsocks/server.py"]
