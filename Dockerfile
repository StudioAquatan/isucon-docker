FROM ubuntu:bionic

RUN mkdir /isucon

WORKDIR /isucon

RUN apt-get update -y && \
    apt-get install -y \
        python python-dev python-pip \
        python3 python3-dev python3-pip \
        golang neovim make nginx tmux && \
    pip install neovim && \
    pip3 install neovim && \
    apt-get remove --purge -y \
        gcc g++ g++-7 gcc-7 gcc-7-base

CMD ["/bin/bash"]
    
