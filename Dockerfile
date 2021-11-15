FROM ubuntu:latest
RUN apt-get update && \
  apt-get install -y curl && \
  curl -fsSL https://code-server.dev/install.sh | sh -s --

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
