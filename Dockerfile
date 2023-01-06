FROM bash:latest

RUN apk add --no-cache curl jq && \
    apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing watchexec
