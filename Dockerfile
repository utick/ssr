# shadowsocks
#
# VERSION 0.0.3

FROM ubuntu:14.04.3
MAINTAINER utick <222@gmail.com>
RUN apt-get update && \
            apt-get install -y git
RUN git clone -b manyuser https://github.com/breakwa11/shadowsocks.git /root/shadowsocks

EXPOSE $PORT

# Configure container to run as an executable
ENTRYPOINT ["python /root/shadowsocks/shadowsocks/server.py"]
