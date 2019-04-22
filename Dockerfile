FROM ubuntu:18.04
RUN \
  apt-get update && \
  apt-get upgrade -y -qq && \
  apt-get install -y -qq \
    ansible \
    git \
    python

ARG branch
RUN \
  ansible-pull \
    --module-path=./roles \
    --checkout=${branch} \
    --url=https://github.com/thelazyenginerd/linux-users
