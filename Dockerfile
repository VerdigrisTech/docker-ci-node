FROM node:8.11-alpine

ENV DOCKER_VERSION 17.09.1-ce
ENV HEROKU_CLI_PLATFORM linux-x64

COPY install-docker-cli.sh .
RUN apk update && apk add --no-cache curl git openssh-client && ./install-docker-cli.sh && npm install -g heroku-cli
