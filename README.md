# Redpen-academic-paper

IEICE及びIEEEの論文の文章校正用

## How to use

```sh
docker build -t redpen-academic-paper .
docker run --rm -it -v <reviewed-directory>:/usr/local/document redpen-academic-paper <reviewed-paper> [-c] <config>
```
## Mentenance

自分でメンテナンスするための備忘録

### Dockerfile

[hadolint](https://github.com/hadolint/hadolint)

```:sh
docker pull hadolint/hadolint
docker run --rm -it hadolint/hadolint < Dockerfile
```

### README

TBD

## Reference

- [IEICEで推奨している送り仮名など](https://www.ieice.org/jpn/shiori/pdf/furoku_d.pdf)

## Futurework

- [ ] Markdownlint
- [ ] Mecabによる表記ゆれチェック
- [ ] Redpen SuggestionExpressionでファイル読込ができないことの対処
