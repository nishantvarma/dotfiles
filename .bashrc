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
export PS1='$(basename $(pwd)) % '

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

cm()
{
    local file=$1
    local extn=$2

    if [[ $file != *.$extn ]]; then
        ffmpeg -i "$file" "${file%.*}.$extn" &&
        rm "$file"
    fi &&
    mat2 --inplace "${file%.*}.$extn"
}

g(){
    git add -p &&
    git commit -m "Fixups" &&
    git push origin
}

ll()
{
    ls -hlrt
}

mp3()
{
    local file=$1

    cm "$file" mp3
}

mp4()
{
    local file=$1

    cm "$file" mp4
}

pdf()
{
    exiftool -all= -overwrite_original "$@"
}

plan9()
{
    qemu-system-i386 -cdrom plan9.iso
}

x()
{
    sil Xephyr -br -ac -noreset -screen 1304x768 :1 &&
    sleep 0.1 &&
    DISPLAY=:1 sil rio
}

# FZF
# ===

[[ -f $HOME/.fzf.bash ]] && source "$HOME"/.fzf.bash

# Hacks
# =====

[[ -f $HOME/.hacks.sh ]] && source "$HOME"/.hacks.sh
