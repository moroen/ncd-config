# Include homebrew
if command -v /opt/homebrew/bin/brew &> /dev/null; then
  export PATH=$PATH:/opt/homebrew/bin
fi

# Alias
if (( $+commands[lsd] )); then
  alias ls="lsd --icon=never --group-directories-first"
fi

if (( $+commands[dust] )); then
  alias du="dust"
fi

if (( $+commands[duf] )); then
  alias df="duf"
fi

if (( $+commands[bat] )); then
  alias less="bat"
fi

if (( $+commands[codium] )); then
  alias code="codium"
fi

if (( $+commands[nano] )); then
  alias pico="nano"
fi

if command -v ~/.pyenv/bin/pyenv &> /dev/null; then
  export PATH=$PATH:~/.pyenv/bin
fi

