set-option -g default-command "reattach-to-user-namespace -l zsh"
# Terminal junks!
set -g default-terminal "screen-256color"

# set-option -g prefix C-a
unbind C-b
set-option -g prefix C-a

# quick pane cycling
unbind ^A
bind ^A select-pane -t :.+

# reload config
unbind r
bind r source-file ~/.tmux.conf

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

unbind Right
bind Right resize-pane -R 8
unbind Left
bind Left resize-pane -L 8
unbind Up
bind Up resize-pane -U 4
unbind Down
bind Down resize-pane -D 4


# Default bindings:
# C-b         Send the prefix key (C-b) through to the application.
# C-o         Rotate the panes in the current window forwards.
# C-z         Suspend the tmux client.
# !           Break the current pane out of the window.
# "           Split the current pane into two, top and bottom.
# #           List all paste buffers.
# $           Rename the current session.
# %           Split the current pane into two, left and right.
# &           Kill the current window.
# '           Prompt for a window index to select.
# ,           Rename the current window.
# -           Delete the most recently copied buffer of text.
# .           Prompt for an index to move the current window.
# 0 to 9      Select windows 0 to 9.
# :           Enter the tmux command prompt.
# ;           Move to the previously active pane.
# =           Choose which buffer to paste interactively from a list.
# ?           List all key bindings.
# D           Choose a client to detach.
# [           Enter copy mode to copy text or view the history.
# ]           Paste the most recently copied buffer of text.
# c           Create a new window.
# d           Detach the current client.
# f           Prompt to search for text in open windows.
# i           Display some information about the current window.
# l           Move to the previously selected window.
# n           Change to the next window.
# o           Select the next pane in the current window.
# p           Change to the previous window.
# q           Briefly display pane indexes.
# r           Force redraw of the attached client.
# s           Select a new session for the attached client interactively.
# L           Switch the attached client back to the last session.
# t           Show the time.
# w           Choose the current window interactively.
# x           Kill the current pane.
# {           Swap the current pane with the previous pane.
# }           Swap the current pane with the next pane.
# ~           Show previous messages from tmux, if any.
# Page Up     Enter copy mode and scroll one page up.
# Up, Down
# Left, Right
#             Change to the pane above, below, to the left, or to the right of
# the current pane.
# M-1 to M-5  Arrange panes in one of the five preset layouts:
# even-horizontal, even-vertical, main-horizontal, main-vertical, or tiled.
# M-n         Move to the next window with a bell or activity marker.
# M-o         Rotate the panes in the current window backwards.
# M-p         Move to the previous window with a bell or activity marker.
# C-Up, C-Down
# C-Left, C-Right
#             Resize the current pane in steps of one cell.
# M-Up, M-Down
# M-Left, M-Right
#             Resize the current pane in steps of five cells.
