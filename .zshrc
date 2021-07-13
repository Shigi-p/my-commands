alias commands="nano $HOME/develop/my-commands/.zshrc"
alias zshrc="source $HOME/develop/my-commands/.zshrc"
alias gcommit="python3 $HOME/develop/commit_formatter/commit_formatter.py"

# --- anyenv ---
eval "$(anyenv init -)"

# --- nodenv ---
# export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# --- pyenv ---
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# ありがとうきむえもん
if [ -f $HOME/develop/my-commands/.localrc ]; then
  source $HOME/develop/my-commands/.localrc
fi
