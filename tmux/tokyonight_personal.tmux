#!/usr/bin/env bash

# TokyoNight colors for Tmux
set -g mode-style "fg=#82aaff,bg=#3b4261"

set -g message-style "fg=#82aaff,bg=#3b4261"
set -g message-command-style "fg=#82aaff,bg=#3b4261"

set -g pane-border-style "fg=#3b4261"
set -g pane-active-border-style "fg=#ff757f"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#82aaff,bg=default"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left ""
set -g status-right "#{prefix_highlight} #[fg=#4fd6be,bg=default]#[fg=#1b1d2b,bg=#4fd6be]  #S #[fg=#c3e88d,bg=#4fd6be]#[fg=#1b1d2b,bg=#c3e88d]  #(whoami) #[fg=#ffc777,bg=#c3e88d,nobold,nounderscore,noitalics]#[fg=#1b1d2b,bg=#ffc777] 󰒋 #h #[fg=#82aaff,bg=#ffc777,nobold,nounderscore,noitalics]#[fg=#1b1d2b,bg=#82aaff,bold] 󰃰 %Y-%m-%d %I:%M %p "

setw -g window-status-activity-style "underscore,fg=#828bb8,bg=#1e2030"
setw -g window-status-separator " "
setw -g window-status-style "NONE,fg=#828bb8,bg=#1e2030"
setw -g window-status-format " #W | #I "
setw -g window-status-current-format "#[fg=#1e2030,bg=#c099ff,bold] #W | #I "

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_suffix '#[fg=#fca7ea]#[bg=default]'
set -g @prefix_highlight_output_prefix '#[fg=#fca7ea]#[bg=default]#[fg=#1b1d2b]#[bg=#fca7ea]'
