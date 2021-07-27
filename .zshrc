# --- 一番先に設定するもの ---
alias commands='nano $HOME/.zshrc'
alias zshrc='source $HOME/.zshrc'

# --- 移動系 ---
alias dev='cd $HOME/Develop/'

# --- gitコマンド関連 ---
alias gcommit='python3 $HOME/develop/commit_formatter/commit_formatter.py'

# よく見たらzshのプラグインであるじゃねーか！
# というわけでzshのプラグインに加え自分がめっちゃ使うやつを追加する
function gcbf(){
  command git checkout -b feature/$1
}

# alias gcbf='git checkout -b feature/'

# --- コマンド系エイリアス ---
alias -g ls=exa

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
