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

# Exports
# =======

export EDITOR=vis
export HISTFILE=/dev/null
export LANG=en_US.UTF-8
if [[ "$TERM" != dumb ]]; then
    export PROMPT_COMMAND="echo -n -e '\x1b[5 q'"
fi
export OPEN=open
export PAGER=less
export PS1='$(basename "$(pwd)") % '

# Functions
# =========

bkp()
{
    local repo

    repo=$(basename "$(git remote get-url origin)")

    git bundle create ~/scratch/"${repo%.git}" --all
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

dirty()
{
    if ! git diff --quiet; then
        git status --porcelain && g
    fi
}

exts()
{
    find . -type f | grep -oE '\.(\w+)$' | sort -u
}

inferno()
{
    "$HOME"/src/inferno/Linux/386/bin/emu -g 1600x784 wm/wm
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

v(){
    git add -p &&
    git commit -m "Fixups" &&
    git push origin
}

# Hacks
# =====

[[ -f "$HOME"/.hacks.sh ]] && source "$HOME"/.hacks.sh
