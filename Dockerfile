FROM alpine:3.6

ENV AWS_CLI_VERSION 1.15.47

RUN apk --no-cache update && \
    apk --no-cache add jq && \
    apk --no-cache add curl && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/*

WORKDIR /data