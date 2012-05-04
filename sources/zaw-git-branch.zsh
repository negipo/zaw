# for zaw.zsh https://github.com/zsh-users/zaw
# ref: https://github.com/zsh-users/zaw/blob/master/sources/git-files.zsh
function zaw-src-git-branch() {
    git rev-parse --git-dir >/dev/null 2>&1
    if [[ $? == 0 ]]; then
        candidates=(`git branch --no-color | sed -e 's/[ *]//g'`)
    fi
    actions=("zaw-src-git-checkout" "zaw-callback-append-to-buffer")
    act_descriptions=("git checkout" "append to edit buffer")
    options=("-m")
}

function zaw-src-git-checkout () {
    BUFFER="git checkout $1"
    zle accept-line
}

zaw-register-src -n git-branch zaw-src-git-branch
