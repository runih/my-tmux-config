#!/usr/bin/env bash
TMUX=$(which tmux)
SED=$(which sed)
BC=$(which bc)
if [[ "$TMUX" == "" ]]; then
  echo "tmux is not installed!"
  exit 1
fi
if [[ "$BC" == "" ]]; then
  echo "bc is not installed!"
  exit 2
fi
if [[ "$SED" == "" ]]; then
  echo "sed is not installed!"
  exit 3
fi
TPM_FOLDER=~/.config/tmux/plugins/tpm
if [[ ! -d "$TPM_FOLDER" ]]; then
  git clone https://github.com/tmux-plugins/tpm $TPM_FOLDER
else
  echo "TPM already installed"
fi

