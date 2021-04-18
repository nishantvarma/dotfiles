# Libraries
# =========

autoload -Uz compinit promptinit
autoload -U colors && colors
autoload -Uz add-zsh-hook

compinit
promptinit

# Settings
# ========

HISTSIZE=50
SAVEHIST=0

setopt autocd

PROMPT="%/ >>> "

# X Terminal
# ==========

if [[ $TERM = dumb ]]; then
  unset zle_bracketed_paste
fi

if [[ "${TERM}" = *xterm* ]] || [[ "${TERM}" = *256color* ]]; then

    # Prompt
    # ======

    PROMPT="%F{green}%/ %F{red}>%F{green}>%F{yellow}>%F{reset} "

    # Cursor Shape
    # ============

    echo -n -e "\x1b[5 q"

    # Title
    # =====

    function set-title-precmd() {
        printf "\e]2;%s\a" "Terminal"
    }

    function set-title-preexec() {
        printf "\e]2;%s\a" "Terminal"
    }

    autoload -Uz add-zsh-hook
    add-zsh-hook precmd set-title-precmd
    add-zsh-hook preexec set-title-preexec

fi

bindkey -v

KEYTIMEOUT=1

function zle-line-init zle-keymap-select {
    case "${KEYMAP}" in
        (vicmd) echo -n -e "\x1b[1 q" ;;
        (main|viins) echo -n -e "\x1b[5 q" ;;
        (*) echo -n -e "\x1b[5 q" ;;
    esac
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# Auto Completion
# ===============

zstyle ':completion:*' menu select

# Key Setup
# =========

bindkey '^R' history-incremental-search-backward

bindkey -- "^[[A" up-line-or-history
bindkey -- "^[[B" down-line-or-history
bindkey -- "^[[C" forward-char
bindkey -- "^[[D" backward-char
bindkey -- "^[[H" beginning-of-line
bindkey -- "^[[F" end-of-line
bindkey -- "^[[1~" beginning-of-line
bindkey -- "^[[3~" delete-char
bindkey -- "^[[4~" end-of-line
bindkey -- "^[[5~" beginning-of-buffer-or-history
bindkey -- "^[[6~" end-of-buffer-or-history
bindkey -- "^[[1;5C" forward-word
bindkey -- "^[[1;5D" backward-word

# Exports
# =======

export MANWIDTH=80

# Aliases
# =======

alias root="sudo -s"

alias ll="ls -lrt"
alias python="python -q"

# Data
# ====

# Functions
# =========

is-function()
{
    declare -f -F $1 > /dev/null
    return $?
}

check-ping-ip()
{
    if ping -q -c 1 8.8.8.8 >/dev/null 2>&1; then
        echo "Ok"
    else
        echo "Fail"
    fi
}

check-ping-dns()
{
    if ping -q -c 1 www.google.com >/dev/null 2>&1; then
        echo "Ok"
    else
        echo "Fail"
    fi
}

check-git-status()
{
    git status --short
}

check-git-dirty()
{
    local repositories=(
        ${HOME}/dotfiles/
        ${HOME}/notes/
    )

    for repository in "${repositories[@]}"; do
        (
            cd "$repository" &&
            echo "Directory: $repository" &&
            [[ -z $(git status -s) ]] || check-git-status
        )
    done
}

# Hacks
# =====

hacks="${HOME}/.hacks.sh"

if [[ -f "${hacks}" ]]; then
    source "${hacks}"
fi
