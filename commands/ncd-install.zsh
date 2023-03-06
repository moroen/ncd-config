ncd-install () {

        if [ ! -d "$PLUGINS_DIR/powerlevel10k" ]; then
                git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $PLUGINS_DIR/powerlevel10k
        fi

        if [ ! -d "$PLUGINS_DIR/zsh-syntax-highlighting" ]; then
                git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGINS_DIR/zsh-syntax-highlighting
        fi

        if [ ! -d "$PLUGINS_DIR/zsh-autosuggestions" ]; then
                git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions $PLUGINS_DIR/zsh-autosuggestions
        fi

        if [ ! -d "$PLUGINS_DIR/zsh-completions" ]; then
                git clone --depth=1 https://github.com/zsh-users/zsh-completions.git $PLUGINS_DIR/zsh-completions
        fi

        if [ ! -d "$PLUGINS_DIR/zsh-history-substring-search" ]; then
                git clone --depth=1 https://github.com/zsh-users/zsh-history-substring-search.git $PLUGINS_DIR/zsh-history-substring-search
        fi

        if [ ! -d "$HOME/.pyenv" ]; then
                git clone https://github.com/pyenv/pyenv.git ~/.pyenv
        fi
}

ncd-update () {
        for d in $PLUGINS_DIR/*/ ; do
                echo "$d"
                cd "$d"
                git pull
        done
}