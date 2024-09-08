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

# Settings
# ========

shopt -s autocd

# Exports
# =======

export EDITOR=vim
export FZF_DEFAULT_OPTS="
    --color fg:7,bg:0,hl:6
    --color fg+:7,bg+:8,hl+:5
    --color info:1,prompt:2,pointer:3
    --color marker:4,spinner:5,header:6
    --color border:7
    --tac
"
export LANG=en_US.UTF-8
if [[ "$TERM" != dumb ]]; then
    export PROMPT_COMMAND="echo -n -e '\x1b[5 q'"
fi
export PS1='$(basename "$(pwd)") % '

# Alias
# =====

alias ls="ls --hyperlink=auto"

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

g(){
    git add -p &&
    git commit -m "Fixups" &&
    git push origin
}

inferno()
{
    "$HOME"/src/inferno/Linux/386/bin/emu -g 1600x784 wm/wm
}

ll()
{
    ls -hlrt "$@"
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

ss()
{
    maim -s | xclip -selection clipboard -t image/png
}

ws()
{
    echo -n "IP: " && ip addr show wlp0s20f3 | grep -Po 'inet \K[\d.]+' &&
    python -m http.server --bind=0.0.0.0
}

# Hacks
# =====

[[ -f "$HOME"/.hacks.sh ]] && source "$HOME"/.hacks.sh
