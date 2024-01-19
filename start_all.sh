#!/bin/bash
set -eo pipefail

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

ucd=$(pwd)

screen -dmS controller $ucd/controller.sh
screen -dmS worker $ucd/worker.sh
screen -dmS ui $ucd/ui.sh

