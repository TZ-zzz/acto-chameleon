#!/bin/bash

source ~/.bashrc

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/cc/go
export PATH=$PATH:$GOPATH/bin

tmux new-session -d -s mySession -n myWindow
tmux send-keys -t mySession:myWindow "cd workdir/acto" Enter
tmux send-keys -t mySession:myWindow "python3 ./reproduce_bugs.py -n 4" Enter
tmux attach -t mySession:myWindow


# python3 collect_number_of_ops.py