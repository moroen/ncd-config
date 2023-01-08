# # Use powerline
# USE_POWERLINE="true"
# # Source manjaro-zsh-configuration
# if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#   source /usr/share/zsh/manjaro-zsh-config
# fi
# # Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi

CONFIG_DIR="$HOME/.ncd-config"
PLUGINS_DIR="$CONFIG_DIR/plugins"

# Commands
source "$CONFIG_DIR/commands/ncd-install.zsh"

# File and Dir colors for ls and other outputs
export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'

# Completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" 

fpath=($PLUGINS_DIR/zsh-completions/src $fpath)
autoload -U compinit colors zcalc
compinit -d
colors

# History
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
setopt inc_append_history                                       # save commands are added to the history immediately, otherwise only when shell exits.
setopt histignorespace                                          # Don't save commands that start with space

# Highlighter

# powerlevel10k
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
source "$PLUGINS_DIR/powerlevel10k/powerlevel10k.zsh-theme"
source "$CONFIG_DIR/config/p10k.zsh"

# AutoSuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
source "$PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"

# syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
source "$PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"



# Tilix VTE fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

