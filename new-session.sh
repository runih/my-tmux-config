#!/bin/bash
SESSION_NAME=$1
if [[ "$SESSION_NAME" == "" ]]; then
  read -p "Session Name: " SESSION_NAME
fi
if [[ ! "$SESSION_NAME" == "$(tmux ls -F\#S | grep $SESSION_NAME -)" ]]; then
  tmux new-session -d -s $SESSION_NAME
fi
tmux switch-client -t $SESSION_NAME
