FROM debian:stable-slim
LABEL MAINTAINER davralin

RUN \
  /usr/bin/apt-get -y update && \
  /usr/bin/apt-get -y install --no-install-recommends \
    coreutils \
    emacs-nox \
    git-core \
    less \
    mariadb-client \
    nano \
    procps \
    rsync \
    tar \
    unzip \
    vim \
    && \
    /bin/rm -rf /var/lib/apt/lists/*

ENTRYPOINT    ["sh", "-c"]
CMD           ["trap : TERM INT; sleep infinity & wait"]
