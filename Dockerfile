FROM ubuntu:16.04
LABEL maintainer = "ihuanglele"
RUN apt-get update && \
  apt-get install -y python-pip libsodium18
RUN pip install shadowsocks
WORKDIR /home/shadowsocks
ENV PASSWORD gxfchbnl
ENV M aes-256-cfb
COPY ./src ./
EXPOSE 443
ENTRYPOINT ["/bin/sh","./entrypoint.sh"]