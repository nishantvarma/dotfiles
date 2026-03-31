# Libraries
# =========

[[ -f /etc/bashrc ]] && source /etc/bashrc
[[ -f /etc/bash_completion ]] && source /etc/bash_completion

# Unsets
# ======

unset PROMPT_COMMAND

# Settings
# ========

shopt -s autocd

# Path
# ====

PATH=$HOME/.python/bin
PATH+=:$HOME/bin
PATH+=:$HOME/.local/bin
PATH+=:/usr/local/sbin
PATH+=:/usr/local/bin
PATH+=:/usr/sbin
PATH+=:/usr/bin
PATH+=:/sbin
PATH+=:/bin
PATH+=:$HOME/src/plan9/bin

# Colors
# ======

: "${TERM:=xterm-256color}"

dumb()
{
    [[ $TERM == dumb ]]
}

if ! dumb; then
    e=$(tput setaf 1)
    g=$(tput setaf 2)
    y=$(tput setaf 3)
    l=$(tput setaf 4)
    m=$(tput setaf 5)
    a=$(tput setaf 6)
    w=$(tput setaf 7)
    b=$(tput bold)
    r=$(tput sgr0)
fi

# Exports
# =======

export EDITOR=vis
export HISTFILE=/dev/null
export LANG=en_US.UTF-8
export OPEN=open
export PAGER=less
export PLAN9=$HOME/src/plan9
export PS1='$(basename "$(pwd)") % '
if ! dumb; then
    export PROMPT_COMMAND="echo -n -e '\x1b[5 q'"
fi

# Functions
# =========

bkp()
{
    local repo

    repo=$(basename "$(git remote get-url origin)")

    git bundle create ~/scratch/"$repo" --all
}

bold()
{
    local msg=$1
    echo "${b}${msg}${r}"
}

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
    local files=("${@:1:$#-1}")
    local extn=${!#}

    for file in "${files[@]}"; do
        echo "Processing $file"
        if [[ $file != *.$extn ]]; then
            ffmpeg -i "$file" "${file%.*}.$extn" &&
            rm "$file"
        fi &&
        mat2 --inplace "${file%.*}.$extn"
    done
}

cr()
{
    claude --resume "$@"
}

dirty()
{
    if ! git diff --quiet; then
        git status --porcelain && v
    fi
}

error()
{
    echo "${b}${e}$*${r}" >&2
}

exts()
{
    find . -type f | grep -oE '\.(\w+)$' | sort -u
}

inferno()
{
    "$HOME"/src/inferno/Linux/386/bin/emu -g 1600x784 wm/wm
}

info()
{
    echo "${b}$*${r}"
}

ll()
{
    ls -lrt
}

mp3()
{
    cm "$@" mp3
}

mp4()
{
    cm "$@" mp4
}

pdf()
{
    exiftool -all= -overwrite_original "$@"
}

plan9()
{
    qemu-system-i386 -cdrom plan9.iso
}

rio()
{
    spawn Xephyr -br -ac -noreset -screen 1600x784 -resizeable :1 && # 1920x964
    sleep 0.1 &&
    DISPLAY=:1 spawn rio
}

sudo()
{
    error "sudo: $*"
    command sudo "$@"
}

success()
{
    echo "${b}${g}$*${r}"
}

warn()
{
    echo "${b}${y}$*${r}"
}

# Hacks
# =====

[[ -f "$HOME"/.hacks.sh ]] && source "$HOME"/.hacks.sh
