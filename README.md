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

> Example: with the [sample configuration](https://github.com/klzgrad/naiveproxy/blob/master/src/config.json) located at `/etc/naive/config.json`

```bash
docker run --dt \
--name naive \
-p 1080:1080 \
-v /etc/naive/config.json:/etc/naive/config.json \
--restart unless-stopped \
kwaabot/naive
```
