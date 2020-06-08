FROM pandoc/latex:latest

RUN apk update && \
    tlmgr update --self --all && \
    tlmgr install scheme-full

WORKDIR /wordspace