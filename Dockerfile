FROM alpine:latest

ARG TARGETARCH

RUN set -xe \
  && apk add --no-cache --virtual libnss3 nss

COPY naive_${TARGETARCH} /usr/bin/naive

ENTRYPOINT ["/usr/bin/naive"]

CMD ["/etc/naive/config.json"]