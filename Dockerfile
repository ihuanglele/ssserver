FROM alpine:3.4
LABEL maintainer = "ihuanglele"
ENV TIME_ZONE Asia/Shanghai
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/main" > /etc/apk/repositories
RUN apk add --no-cache --update bash python py-pip \
  && pip install --no-cache-dir shadowsocks

WORKDIR /home/shadowsocks
ENV PASSWORD gxfchbnl
ENV M aes-256-cfb
COPY ./src ./
EXPOSE 443
ENTRYPOINT ["/bin/sh","./entrypoint.sh"]