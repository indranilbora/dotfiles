ZSH_THEME=""

autoload -U promptinit; promptinit
prompt pure

PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
PATH="$PATH:$PYTHON_BIN_PATH"

plugins=(git)

source $ZSH/oh-my-zsh.sh
export EDITOR=/local/usr/bin/vim
