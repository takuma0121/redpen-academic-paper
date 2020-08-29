FROM alpine:3.9

RUN apk update && \
    apk --no-cache add \
    tar \
    openjdk8 \
    wget 


ARG VERSION="1.10.3"
RUN wget https://github.com/redpen-cc/redpen/releases/download/redpen-${VERSION}/redpen-${VERSION}.tar.gz
RUN tar xvf redpen-${VERSION}.tar.gz
RUN rm -rf redpen-${VERSION}.tar.gz
RUN mkdir -p /user/local/redpen
RUN mv redpen-distribution-${VERSION} /usr/local/redpen

ENV PATH="/usr/local/redpen/bin:${PATH}"

WORKDIR /document

COPY ./config /document

CMD ["/bin/bash", "-c", "redpen", "-c", "redpen-conf-ja.xml"]
