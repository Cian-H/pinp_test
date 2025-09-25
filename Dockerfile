FROM docker.io/opensuse/leap:latest

COPY ./entrypoint.sh /entrypoint.sh
COPY ./inner/ /inner/
COPY ./storage.conf /etc/containers/storage.conf

RUN zypper --non-interactive refresh && \
    zypper --non-interactive install podman runc && \
    chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
