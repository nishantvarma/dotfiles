unset HISTFILE

set +o history

export APPS="$HOME"/opt
export DATA="$HOME"/data

if [[ -f $HOME/.bashrc ]]; then
    source "$HOME"/.bashrc
fi
