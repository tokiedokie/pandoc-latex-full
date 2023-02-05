FROM pandoc/latex:latest-ubuntu

RUN apt-get update && \
    apt-get install -y python2 pandoc-citeproc && \
    apt-get install -y gcc make curl libgmp3-dev pkg-config zlib1g-dev && \
    ln -s /usr/bin/python2 /usr/bin/python && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

RUN export PATH=/root/.cabal/bin:/root/.ghcup/bin:$PATH

RUN cabal v2-update && \
    cabal v2-install --install-method=copy pandoc pandoc-crossref


RUN tlmgr update --self --all && \
    tlmgr install scheme-full

WORKDIR /workspace
