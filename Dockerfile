FROM pandoc/latex:latest

RUN apk -U upgrade && \
    tlmgr get-mirror && \
    tlmgr update --self --all && \
    tlmgr install collection-latexextra\
    collection-fontsrecommended collection-fontsextra\
    collection-binextra collection-luatex  && \
    rm -rf /tmp/

WORKDIR /wordspace