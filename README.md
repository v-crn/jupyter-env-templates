# jupyter-env-templates

## JupyterLab の起動方法

例：

```sh
cd jupyterlab-nlp-ja-python3-8

docker-compose up -d
```

## 各プロジェクトの更新手順

1. assets フォルダ以下に用意されている各プロジェクト固有のファイルを編集する
2. Makefile 内に記載のコマンドを使って目的のプロジェクトを再生成する

例：

1. assets/nlp-ja-python3-8/Dockerfile を編集
2. 変更を反映させるため、`make nlp-ja-python3-8` を実行
