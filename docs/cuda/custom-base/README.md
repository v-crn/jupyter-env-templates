# custom-base

WIP

## 概要

- [nvidia/cuda:11.8.0-base-ubuntu20.04](https://hub.docker.com/layers/nvidia/cuda/11.8.0-base-ubuntu20.04/images/sha256-3ae1765f69e197009b583dbb548b321cc0cb2d0dbbfaf40fd5a35402b456d318?context=explore)
- COMPRESSED SIZE: 33.67 MB
- base イメージはそのままでは `nvcc` コマンドを使うことができない
- `nvcc` コマンドを使えるようにできるか試してみる

## 備考

- 2022-10-16 現在、未完成
- `cuda` のインストールだけの場合でもコンテナのビルドに30分以上掛かった

## 対象

- `nvidia-smi`
- `nvcc`

## 動作確認

```sh
docker-compose up
```

正常な実行結果の例:

```console
```
