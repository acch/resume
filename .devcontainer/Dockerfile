FROM registry.access.redhat.com/ubi9/ubi:latest
ENV NODE_ENV=production

RUN echo -e "\
  alias ls='ls --color=auto'\n\
  alias ll='ls -l --color=auto'\n" \
  >> /root/.bashrc

RUN dnf -y update && \
  dnf -y install \
    git \
    make \
    npm \
    patch && \
  dnf clean all

EXPOSE 4000