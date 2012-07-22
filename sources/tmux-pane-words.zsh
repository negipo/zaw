# based on http://d.hatena.ne.jp/syohex/20120626/1340715334
function zaw-src-tmux-pane-words() {
  candidates=( `tmux capture-pane\; show-buffer\; delete-buffer | tr " " "\12" | sort -u` )
  actions=("zaw-callback-append-to-buffer")
  act_descriptions=("append to edit buffer")
  options=("-m")
}

zaw-register-src -n tmux-pane-words zaw-src-tmux-pane-words
