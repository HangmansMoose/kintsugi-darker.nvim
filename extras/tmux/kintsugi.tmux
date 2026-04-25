# Kintsugi theme for tmux
# https://github.com/metalelf0/kintsugi-nvim
#
# Usage: append to ~/.tmux.conf:
#   source-file ~/path/to/extras/tmux/kintsugi.tmux

# Status bar
set -g status on
set -g status-style "bg=#131314,fg=#969b8c"
set -g status-justify "left"
set -g status-left-length 40
set -g status-right-length 80

# Window status
setw -g window-status-format "#[fg=#969b8c,bg=#131314] #I #W "
setw -g window-status-current-format "#[fg=#dddddd,bg=#161618,bold] #I #W "
setw -g window-status-activity-style "fg=#ebcb8b,bg=#131314"
setw -g window-status-bell-style "fg=#b38f8f,bg=#131314,bold"
setw -g window-status-separator ""

# Status left / right
set -g status-left "#[bg=#b8943a,fg=#131314,bold] #S #[bg=#131314,fg=#b8943a,nobold] "
set -g status-right "#[fg=#969b8c,bg=#131314] %Y-%m-%d #[fg=#dbad49,bold]%H:%M "

# Pane borders
set -g pane-border-style "fg=#2a2a28"
set -g pane-active-border-style "fg=#b8943a"

# Messages (command line + display)
set -g message-style "bg=#151515,fg=#dddddd"
set -g message-command-style "bg=#151515,fg=#dddddd"

# Copy mode selection
setw -g mode-style "bg=#6c7a8a,fg=#dddddd"

# Clock
setw -g clock-mode-colour "#b8943a"

# Misc
set -g display-panes-active-colour "#b8943a"
set -g display-panes-colour "#75715e"
