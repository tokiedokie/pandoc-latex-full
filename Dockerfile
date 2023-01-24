FROM pandoc/latex:latest

RUN tlmgr update --self --all && \
    tlmgr install scheme-full

WORKDIR /workspace
