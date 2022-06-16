# Docker Container for Java DebianSlim
# https://www.linuxcontainers.dev
# Source repository: https://github.com/linuxcontainers/debian-slim
# Source licensed under the MIT License: https://github.com/linuxcontainers/debian-slim/blob/master/LICENSE

FROM debian:11.3-slim

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get clean -y && \
  apt-get autoremove -y && \
  apt-get autoclean -y && \
  apt-get install software-properties-common -y && \
  apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main' && \
  apt-get update && \
  apt-get install openjdk-8-jdk -y && \
  rm -rf /tmp/* && \
  rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

