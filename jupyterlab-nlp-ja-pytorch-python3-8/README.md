# jupyterlab-nlp-ja-pytorch:python3-8

## Specifications

- Ubuntu20.04
- Python3.8

### Tokenizers

- [MeCab: Yet Another Part-of-Speech and Morphological Analyzer](https://taku910.github.io/mecab/)
  - [mecab-ipadic-neologd](https://github.com/neologd/mecab-ipadic-neologd/blob/master/README.ja.md)
- [GiNZA - Japanese NLP Library | Universal Dependenciesに基づくオープンソース日本語NLPライブラリ](https://megagonlabs.github.io/ginza/)

### Deep Learning Frameworks

- [transformers · PyPI](https://pypi.org/project/transformers/)
- [torch · PyPI](https://pypi.org/project/torch/#more-about-pytorch)

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
