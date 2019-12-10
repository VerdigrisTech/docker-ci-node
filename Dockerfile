FROM node:12.13-alpine

ENV DOCKER_VERSION 18.06.0-ce
ENV HEROKU_CLI_PLATFORM linux-x64

COPY install-docker-cli.sh .
RUN apk update && apk add --no-cache curl git tar openssh-client && ./install-docker-cli.sh && npm install -g heroku-cli
