FROM debian:buster-slim AS builder

ARG DOCKER_VERSION=19.03.11
ARG JQ_VERSION=1.6
ARG YQ_VERSION=3.3.2

WORKDIR /tmp
RUN apt-get update && apt-get install -y curl
RUN curl -fsSL https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz | tar xvz
RUN curl -fsSL https://github.com/stedolan/jq/releases/download/jq-${JQ_VERSION}/jq-linux64 -o jq
RUN curl -fsSL https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_linux_amd64 -o yq
RUN chmod +x ./jq ./yq

FROM node:18.14.1-buster

RUN apt-get update && apt-get install -y curl git tar openssh-client yarn && npm install -g npm@9.3.1
COPY --from=builder /tmp/docker/docker /usr/bin/
COPY --from=builder /tmp/jq /usr/bin/
COPY --from=builder /tmp/yq /usr/bin/
CMD [ "/bin/sh" ]
