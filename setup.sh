#!/bin/bash
TPM_FOLDER=~/.config/tmux/plugins/tpm
if [[ ! -d "$TPM_FOLDER" ]]; then
  git clone https://github.com/tmux-plugins/tpm $TPM_FOLDER
else
  echo "TPM already installed"
fi

