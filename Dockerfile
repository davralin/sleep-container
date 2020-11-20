FROM debian:buster-slim
LABEL MAINTAINER davralin

RUN \
  /usr/bin/apt-get -y update && \
  /usr/bin/apt-get -y install --no-install-recommends \
    coreutils \
    emacs-nox \
    git-core \
    nano \
    rsync \
    tar \
    vim \
    && \
    /bin/rm -rf /var/lib/apt/lists/*

ENTRYPOINT    ["sh", "-c"]
CMD           ["trap : TERM INT; sleep infinity & wait"]
