# set-option -g prefix C-a
unbind C-b
set-option -g prefix C-a

bind r source-file ~/.tmux.conf

# C-a C-a for the Last Active Window
# bind-key C-a last-window

set -g base-index 1

# Set escape time to 0
set -s escape-time 0

#  Aggressive resize
setw -g aggressive-resize on

#  Set status bar
set -g status-bg black
set -g status-fg white
set -g status-left ""
set -g status-right "#[fg=green]#H"

#  Highlight active window
set-window-option -g window-status-current-bg red

# Notifying if other windows has activities
setw -g monitor-activity on
set -g visual-activity on

# Terminal emulator window title
set -g set-titles on
set -g set-titles-string '#S:#I.#P #W'

#  unbinds
unbind l
unbind h
unbind k
unbind j
unbind u
unbind i

#  act like vim
set -g status-keys vi
setw -g mode-keys vi
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind-key -r C-h select-window -t :-
bind-key -r C-l select-window -t :+

#  rebind the pane splitting bindings
unbind % # Remove default binding since we’re replacing
unbind '"'
bind | split-window -h
bind - split-window -v
bind v split-window -v

# Terminal junks!
set -g default-terminal "screen-256color"
