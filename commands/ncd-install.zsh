ncd-install () {
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $PLUGINS_DIR/powerlevel10k
        git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGINS_DIR/zsh-syntax-highlighting
        git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $PLUGINS_DIR/zsh-autosuggestions
        git clone --depth=1 https://github.com/zsh-users/zsh-completions.git $PLUGINS_DIR/zsh-completions
}