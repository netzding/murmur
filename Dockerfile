ARG ALPINE_TAG=latest
FROM alpine:${ALPINE_TAG}

RUN apk add --update --no-cache murmur

VOLUME /var/lib/murmur/
EXPOSE 64738/tcp
EXPOSE 64738/udp
USER murmur

ENTRYPOINT ["/usr/bin/murmurd", "-fg"]
