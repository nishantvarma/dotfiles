# Libraries
# =========

[[ -f /etc/bashrc ]] && source /etc/bashrc

[[ -f /etc/bash_completion ]] && source /etc/bash_completion

# Unsets
# ======

unset HISTFILE
unset LS_COLORS
unset PROMPT_COMMAND

# Unalias
# =======

unalias ls 1>/dev/null 2>/dev/null

# Exports
# =======

export EDITOR=vim
if [[ $TERM != dumb ]]; then
    export PROMPT_COMMAND="echo -n -e '\x1b[5 q'"
fi
export PS1="\W % "

# Functions
# =========

cd()
{
    builtin cd "$@" &&
    if [[ -f initialize.sh ]]; then
        if [[ -f .autoinit ]]; then
            source initialize.sh
        fi
    fi
}

ll()
{
    ls -hlrt
}

mp3()
{
    local file=$1

    if [[ "$file" != *.mp3 ]]; then
        ffmpeg -i "$file" "${file%.*}.mp3" &&
        rm "$file"
    fi &&
    mat2 --inplace "${file%.*}.mp3"
}

pdf()
{
    exiftool -overwrite_original "$@"
}

# FZF
# ===

[[ -f $HOME/.fzf.bash ]] && source "$HOME"/.fzf.bash

# Hacks
# =====

[[ -f $HOME/.hacks.sh ]] && source "$HOME"/.hacks.sh
