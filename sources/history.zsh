zmodload zsh/parameter

function zaw-src-history() {
    cands_assoc=("${(@kv)history}")
    actions=("zaw-callback-replace-buffer" "zaw-callback-execute" "zaw-callback-append-to-buffer")
    act_descriptions=("replace edit buffer" "execute" "append to edit buffer")
    options=("-r" "-m")

    if (( $+functions[zaw-bookmark-add] )); then
        # zaw-src-bookmark is available
        actions+="zaw-bookmark-add"
        act_descriptions+="bookmark this command line"
    fi
}

zaw-register-src -n history zaw-src-history
