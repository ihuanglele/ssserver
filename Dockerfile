FROM ubuntu:latest
LABEL maintainer = "ihuanglele"
RUN apt-get update && apt-get install -y python-pip && pip install shadowsocks
WORKDIR /home/shadowsocks
ENV PASSWORD gxfchbnl
ENV M aes-256-cfb
COPY ./src ./
EXPOSE 443
ENTRYPOINT ["/bin/sh","./entrypoint.sh"]