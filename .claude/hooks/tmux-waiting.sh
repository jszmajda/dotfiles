#!/usr/bin/env bash
# tmux-waiting.sh <mark|clear|recount> [pane_id] [window_id]
#
# State lives in the per-pane tmux user option @claude-waiting ("1" or unset)
# rather than pane_title, because apps (including Claude) overwrite the title
# on every refresh. pane-border-format reads @claude-waiting to display "⏳".

set -u
action="${1:-}"
pane_arg="${2:-}"
win_arg="${3:-}"

[ -z "$action" ] && exit 0

MARK='⏳'
pane="${pane_arg:-${TMUX_PANE:-}}"

resolve_window() {
  if [ -n "$win_arg" ]; then
    printf '%s' "$win_arg"
  elif [ -n "$pane" ]; then
    tmux display-message -p -t "$pane" '#{window_id}' 2>/dev/null
  fi
}

case "$action" in
  mark)
    [ -z "$pane" ] && exit 0
    tmux set-option -p -t "$pane" @claude-waiting 1
    tmux display-message -t "$pane" "$MARK Claude is waiting in pane #{pane_index} (#{window_name})"
    ;;
  clear)
    [ -z "$pane" ] && exit 0
    cur=$(tmux show-options -v -p -t "$pane" @claude-waiting 2>/dev/null || printf '')
    [ "$cur" != "1" ] && exit 0
    tmux set-option -p -u -t "$pane" @claude-waiting
    ;;
  recount)
    ;;
  *)
    exit 0
    ;;
esac

win=$(resolve_window)
[ -z "$win" ] && exit 0

count=$(tmux list-panes -t "$win" -F '#{@claude-waiting}' 2>/dev/null \
  | grep -c '^1$')

cur=$(tmux display-message -p -t "$win" '#{window_name}' 2>/dev/null)
base=$(printf '%s' "$cur" | sed -E "s/^${MARK}[0-9]+ //")

if [ "$count" -gt 0 ]; then
  if [ "$(tmux show-window-options -v -t "$win" automatic-rename 2>/dev/null)" != "off" ]; then
    tmux set-window-option -t "$win" automatic-rename off
  fi
  tmux rename-window -t "$win" "${MARK}${count} ${base}"
else
  tmux rename-window -t "$win" "$base"
fi
