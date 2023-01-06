FROM alpine:latest

# Add the testing repository to the apk configuration
# currently necessary for watchexec
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk upgrade --no-cache && apk add --no-cache watchexec curl

ENTRYPOINT ["watchexec"]
