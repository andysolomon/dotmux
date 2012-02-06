# remap prefix to Control + a
unbind C-b
set -g prefix C-a
bind C-a send-prefix

set-window-option -g mode-mouse on

set -g default-terminal "screen-256color"
set -g history-limit 1000

# reload
bind-key r source-file ~/.tmux.conf

# hsplit
unbind %
bind | split-window -h

# vsplit
unbind '"'
bind - split-window -v

# Panes
bind up resize-pane -U 5
bind down resize-pane -D 5
bind left resize-pane -L 5
bind right resize-pane -R 5
unbind space
bind tab next-layout
unbind C-o
bind r rotate-window

# use the vim motion keys to move between panes
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R


# highlight status bar on activity
set -g visual-activity on

# change foreground-background for the current window
setw -g window-status-current-attr reverse
setw -g monitor-activity on


setw -g mode-keys vi

# Commands
bind-key S command-prompt -p "ssh: " "new-window -n %1 'ssh %1'"

# Titles {{{
set-option -g set-titles on
set-option -g set-titles-string '#W(#P) - #T'
set-window-option -g automatic-rename on
# }}}

# Options {{{
set-option -g base-index 1
#set-option -g default-command "exec /usr/bin/login -pf superflo"
set-option -g mouse-select-pane on
set-option -g pane-active-border-fg black
set-option -g pane-active-border-bg cyan
set-option -g pane-border-fg white
set-option -g pane-border-bg black
#set-option -g default-shell /bin/bash
set-option -g status-keys vi
set-option -g history-limit 4096
set-option -s escape-time 100


# Set status bar
# set -g status-bg black
set -g status-fg white
set -g status-left '#[fg=green]#'
set-window-option -g window-status-current-bg red

# Set window notifications
setw -g monitor-activity on
set -g visual-activity on


# }}}
