#!/bin/bash

source ~/.bashrc

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/cc/go
export PATH=$PATH:$GOPATH/bin

pip3 install -r ./workdir/acto/requirements.txt
pip3 install "numpy<1.24"


make -C ./workdir/acto

