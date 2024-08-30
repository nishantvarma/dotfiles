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
    --color fg:7,bg:0,hl:8
    --color fg+:7,bg+:8,hl+:8
    --color=info:1,prompt:2,pointer:3
    --color=marker:4,spinner:5,header:6
    --color=border:7
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

i3()
{
    sil Xephyr -br -ac -noreset -screen 1600x784 -resizeable :1 && # 1920x964
    sleep 0.1 &&
    DISPLAY=:1 sil i3
}

ll()
{
    ls -hlrt "$@"
}

md2html()
{
  pandoc -f markdown "$1"
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

vdwm()
{
    sil Xephyr -br -ac -noreset -fullscreen :1 &&
    sleep 0.1 &&
    DISPLAY=:1 sil dwm
}

vrio()
{
    sil Xephyr -br -ac -noreset -screen 1600x784 -resizeable :1 && # 1920x964
    sleep 0.1 &&
    DISPLAY=:1 sil rio
}

# Hacks
# =====

[[ -f "$HOME"/.hacks.sh ]] && source "$HOME"/.hacks.sh
