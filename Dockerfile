FROM bash:latest AS latest

RUN apk add --no-cache curl jq && \
    apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing watchexec


FROM latest AS certbot

RUN apk add --no-cache certbot


FROM latest AS terraform

RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community terraform


FROM terraform AS terraform-openssl

RUN apk add --no-cache openssl
