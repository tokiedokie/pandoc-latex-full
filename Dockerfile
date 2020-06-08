FROM pandoc/latex:latest

RUN apk -U upgrade && \
    tlmgr update --self --all && \
    tlmgr install scheme-full

WORKDIR /wordspace