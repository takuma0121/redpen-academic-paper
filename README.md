# Redpen-academic-paper

IEICE及びIEEEの論文の文章校正用

## How to use

```sh
docker build -t redpen-academic-paper .
docker run --rm -it -v <reviewed-directory>:/usr/local/document redpen-academic-paper <reviewed-paper> [-f]
```
