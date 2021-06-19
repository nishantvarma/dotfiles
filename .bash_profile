set +o history
unset HISTFILE

export APPS="$HOME/opt"
export DATA="$HOME/data"

if [[ -f $HOME/.bashrc ]]; then
    source "$HOME"/.bashrc
fi
