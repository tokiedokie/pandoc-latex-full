FROM pandoc/latex:latest-ubuntu

RUN apt-get update && \
    apt-get install -y python2 pandoc-citeproc && \
    ln -s /usr/bin/python2 /usr/bin/python && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN tlmgr update --self --all && \
    tlmgr install scheme-full

WORKDIR /workspace
