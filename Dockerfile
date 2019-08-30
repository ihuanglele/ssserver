FROM python:2
LABEL maintainer = "ihuanglele"
RUN pip install shadowsocks
WORKDIR /home/shadowsocks
ENV PASSWORD gxfchbnl
ENV M aes-256-cfb
COPY ./src ./
EXPOSE 443
ENTRYPOINT ["/bin/sh","./entrypoint.sh"]