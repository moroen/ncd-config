fpath=($PLUGINS_DIR/zsh-completions/src $fpath)
autoload -U compinit colors zcalc
compinit -d
colors

zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" 

