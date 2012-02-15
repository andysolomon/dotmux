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

# statusbar --------------------------------------------------------------
set -g status-interval 1
set -g status-justify centre # center align window list
set -g status-left-length 20
set -g status-left '#[fg=green] #H #[fg=black]• #[fg=green,bright]#(uname -r | cut -c 1-6)#[default]'
set -g status-right '#[fg=blue,bright]Up#(uptime | cut -f 4-5 -d " " | cut -f 1 -d ",") #[fg=black]• #[fg=cyan,bright]#(cut -d " " -f 1-4 /proc/loadavg) '

# default statusbar colors
set -g status-fg white
set -g status-bg default
set -g status-attr bright

# default window title colors
set-window-option -g window-status-fg white
set-window-option -g window-status-bg default
set-window-option -g window-status-attr dim

# active window title colors
set-window-option -g window-status-current-fg white
set-window-option -g window-status-current-bg default
set-window-option -g window-status-current-attr bright

# command/message line colors
set -g message-fg white
set -g message-bg black
set -g message-attr bright

# listen for activity on all windows
set -g bell-action any

# on-screen time for display-panes in ms
set -g display-panes-time 2000

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

# set vi keys
unbind [
bind Escape copy-mode
setw -g mode-keys vi

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
