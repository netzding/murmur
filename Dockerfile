ARG ALPINE_TAG=latest
FROM alpine:${ALPINE_TAG}

RUN apk add --update --no-cache murmur

VOLUME /var/lib/murmur/
EXPOSE 64738/tcp
EXPOSE 64738/udp

ENTRYPOINT ["/usr/bin/murmurd", "-fg", "-ini", "/etc/murmur.ini"]
