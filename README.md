# kwaa/naive

![build](https://github.com/kwaa/naive/actions/workflows/main.yml/badge.svg)
![docker pulls](https://img.shields.io/docker/pulls/kwaabot/naive.svg)

Dockerized NaiveProxy (Monthly Update)

## Usage

### Pull

```bash
docker pull kwaabot/naive # DockerHub
docker pull ghcr.io/kwaa/naive # GitHub Container Registry
```

### Run

> configuration located at `/etc/naive/config.json`

```bash
docker run -dt \
--name naive \
--network host \
-v /etc/naive/config.json:/etc/naive/config.json \
--restart unless-stopped \
kwaabot/naive
```

## Related

- [klzgrad/naiveproxy](https://github.com/klzgrad/naiveproxy) - upstream source
- [kwaa/caddy](https://github.com/kwaa/caddy) - serverside
