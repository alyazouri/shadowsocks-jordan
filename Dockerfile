FROM debian:stable-slim

RUN apt update && \
    apt install -y shadowsocks-libev curl && \
    apt clean

COPY config.json /etc/shadowsocks-libev/config.json

CMD ss-server -c /etc/shadowsocks-libev/config.json
