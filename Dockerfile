FROM docker.io/library/alpine:latest

COPY ./entrypoint.sh /entrypoint.sh
COPY ./inner/ /inner/

RUN apk update && \
    apk add iptables openrc podman podman-openrc && \
    printf "[storage]\ndriver = \"vfs\"\n" > /etc/containers/storage.conf && \
    chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
