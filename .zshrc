ZSH_THEME=""

autoload -U promptinit; promptinit
prompt pure

PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
PATH="$PATH:$PYTHON_BIN_PATH"

plugins=(git npm z node brew zsh-syntax-highlighting zsh-nvm)

# vi mode
set -o vi
export EDITOR=vim
export VISUAL=vim

# Global aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g C='| wc -l'
alias -g H='| head'
alias -g L="| less"
alias -g N="| /dev/null"
alias -g S='| sort'
alias -g G='| grep' # now you can do: ls foo G something

alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'

alias weather='curl -4 http://wttr.in/San_Jose'
alias moon='curl -4 http://wttr.in/Moon'

# Functions
#
# (f)ind by (n)ame
# usage: fn foo 
# to find all files containing 'foo' in the name
function fn() { ls **/*$1* }

# Use zmv, which is amazing
autoload -U zmv
alias zmv="noglob zmv -W"

source $ZSH/oh-my-zsh.sh
export EDITOR=/local/usr/bin/vim
