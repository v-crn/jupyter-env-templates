# jupyterlab:python3.10

## Specifications

- Ubuntu20.04
- Python3.10

## Quick Start

1. Create `.env` (see `.env.template`)
2. Run `docker-compose up`

## Docker コンテナ内で GitHub を利用できるようにする

docker-compose.yaml の `volumes` に `~/.ssh:${WORK_DIR}/.ssh:ro` を指定するとローカルの設定が適用される。
`ro` は読み取り専用 (`read only`) のための設定。

```yaml
volumes:
  - ./:${WORK_DIR}
  - ~/.ssh:${WORK_DIR}/.ssh:ro
```
