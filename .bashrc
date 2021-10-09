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

ll()
{
    ls -lrt
}

gc()
{
    local msg=$1

    git add -p &&
    git commit -a -m "$msg" &&
    git push
}

gr()
{
    git fetch origin &&
    git rebase
}

# FZF
# ===

[[ -f $HOME/.fzf.bash ]] && source "$HOME"/.fzf.bash

# Hacks
# =====

[[ -f $HOME/.hacks.sh ]] && source "$HOME"/.hacks.sh
