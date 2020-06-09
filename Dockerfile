FROM pandoc/latex:latest

RUN apk -U upgrade && \
    tlmgr get-mirror && \
    tlmgr update --self --all && \
    tlmgr install scheme-full

WORKDIR /workspace
