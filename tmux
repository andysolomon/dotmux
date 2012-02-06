#  .tmux.conf
set -g default-terminal "screen-256color"
set -g mode-mouse on

#  # Reload key
bind r source-file ~/.tmux.conf

#  # Set the starting window index to use 1
set -g base-index 1

#  #Set escape time to 0
set -s escape-time 0

#  # Aggressive resize
setw -g aggressive-resize on

#  # Set status bar
set -g status-bg black
set -g status-fg white
set -g status-left ""
set -g status-right "#[fg=green]#H"

#  # Highlight active window
set-window-option -g window-status-current-bg red

#  # unbinds
unbind l
unbind h
unbind k
unbind j
unbind u
unbind i

#  # Reload key
 bind r source-file ~/.tmux.conf

#  # act like vim
setw -g mode-keys vi
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind-key -r C-h select-window -t :-
bind-key -r C-l select-window -t :+

#  # rebind the pane splitting bindings
unbind % # Remove default binding since we’re replacing
unbind "
bind | split-window -h
bind - split-window -v

#  # default statusbar colors
set -g status-fg white
set -g status-bg black
set -g status-attr default
#  # default window title colors
set-window-option -g window-status-fg white
set-window-option -g window-status-bg black
set-window-option -g window-status-attr dim
#  # active window title colors
set-window-option -g window-status-current-fg white
set-window-option -g window-status-current-bg default
set-window-option -g window-status-current-attr bright
#  # command/message line colors
set -g message-fg white
set -g message-bg black
set -g message-attr bright
set -g status-left "#[fg=white,bg=black,bright]#H
#  #[default,fg=white,bg=black]|#[default]"
set -g status-left-length 12
set -g status-right
#  "#[default,fg=white,bg=black]|#[fg=white,bg=black,bright]%a %d.%m
#  %H:%M#[default]"
set -g status-right-length 50
#  # Highlight active window
set-window-option -g window-status-current-bg red

#  # Set window notifications
setw -g monitor-activity on
set -g visual-activity on

#  # Automatically set window title
 setw -g automatic-rename"
