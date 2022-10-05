FROM debian:sid-slim

ARG TARGETARCH

RUN apt update && apt install libnss3 -y

COPY naive_${TARGETARCH} /usr/bin/naive

ENTRYPOINT ["/usr/bin/naive"]

CMD ["/etc/naive/config.json"]