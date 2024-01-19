#!/bin/bash
set -eo pipefail
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv activate project1
python3 -m fastchat.serve.model_worker --model-path lmsys/vicuna-7b-v1.5 --device cuda --host 0.0.0.0


