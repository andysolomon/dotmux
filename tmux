# set-option -g prefix C-a
set-option -g prefix C-a

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

#  unbinds
unbind l
unbind h
unbind k
unbind j
unbind u
unbind i

#  act like vim
setw -g mode-keys vi
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind-key -r C-h select-window -t :-
bind-key -r C-l select-window -t :+

#  rebind the pane splitting bindings
unbind % # Remove default binding since we’re replacing
bind | split-window -h
bind - split-window -v

#  Automatically set window title
