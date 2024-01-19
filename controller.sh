#!/bin/bash
set -eo pipefail
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv activate project1
python3 -m fastchat.serve.controller --host 0.0.0.0

