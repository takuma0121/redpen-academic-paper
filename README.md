# Redpen-academic-paper

IEICE及びIEEEの論文の文章校正用

## How to use

```sh
docker pull takuma0121/redpen-academic-paper
docker run --rm -it -v ${PWD}:/document takuma0121/redpen-academic-paper
redpen -c <config-file> <text-file> 2>/dev/null
```

## Configfile

- suggestExpression_ieice: IEICEで推奨されている表現
- invalidExpression_paper: 一般的に論文で使わないほうがよい表現

## Mentenance

自分でメンテナンスするための備忘録

### Dockerfile

[hadolint](https://github.com/hadolint/hadolint)

```:sh
docker pull hadolint/hadolint
docker run --rm -it hadolint/hadolint < Dockerfile
```

### README

[markdownlint](https://github.com/tmknom/markdownlint)

```:sh
docker pull tmknom/markdownlint
docker run --rm -it -v ${PWD}:/work tmknom/markdownlint
```

## Reference

- [IEICEで推奨している送り仮名など](https://www.ieice.org/jpn/shiori/pdf/furoku_d.pdf)
- [言葉の表現上の問題](http://www.okada-lab.org/Ronbun/JExpressions/Aimai.php)

## Futurework

- [x] Markdownlint
- [ ] Mecabによる表記ゆれチェック
- [x] Redpen SuggestionExpressionでファイル読込ができないことの対処
  - Emacsの設定でTAB=スペース4つになっていたため
- [ ] IEICEの表記ゆれの内容を`suggestionexpression-file`に入れる．
