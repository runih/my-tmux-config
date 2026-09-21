#!/usr/bin/env bash
# Toggle the active pane between max height and its previous size.
# Unlike tmux's built-in zoom (resize-pane -Z), this only expands the
# pane's height - other panes stay visible side-by-side at their width.
set -euo pipefail

saved_layout=$(tmux show-option -wqv @pane_height_saved_layout)

if [ -n "$saved_layout" ]; then
  tmux select-layout "$saved_layout"
  tmux set-option -wu @pane_height_saved_layout
else
  tmux set-option -w @pane_height_saved_layout "$(tmux display-message -p '#{window_layout}')"
  tmux resize-pane -y 9999
fi
