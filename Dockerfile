FROM alpine:latest

ARG TARGETARCH

COPY naive_${TARGETARCH} /usr/bin/naive

ENTRYPOINT ["/usr/bin/naive"]

CMD ["/etc/naive/config.json"]