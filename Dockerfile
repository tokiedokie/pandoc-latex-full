FROM pandoc/latex:latest

RUN apk update && \
    tlmgr update --self --all

WORKDIR /wordspace