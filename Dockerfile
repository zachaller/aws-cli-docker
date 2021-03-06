FROM python:alpine

ARG CLI_VERSION=1.17.4

RUN apk -uv add --no-cache groff jq less && \
    pip install --no-cache-dir awscli==$CLI_VERSION

WORKDIR /aws

CMD sh
