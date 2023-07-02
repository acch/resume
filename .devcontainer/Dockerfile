FROM registry.access.redhat.com/ubi9/ubi:latest

RUN dnf -y update && \
  dnf -y install \
    git \
    make \
    npm \
    patch && \
  dnf clean all