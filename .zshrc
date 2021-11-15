source $HOME/.for-work-zshrc

# --- 一番先に設定するもの ---
alias commands='nano $HOME/.zshrc'
alias zshrc='source $HOME/.zshrc'
export EDITOR=/usr/bin/nano

# --- 移動系 ---
function dev() {
  if [ -z $1]; then
    cd $HOME/develop/
  else
    cd $HOME/develop/$1
  fi
}

# --- gitコマンド関連 ---
alias gcommit='python3 $HOME/develop/commit_formatter/commit_formatter.py'
alias gdrop='git stash drop stash@\{0\}'
alias gprune='git remote prune origin'
alias greset='git reset --soft HEAD~'

# よく見たらzshのプラグインであるじゃねーか！
# というわけでzshのプラグインに加え自分がめっちゃ使うやつを追加する
function gcbf(){
  command git checkout -b feature/$1
}

function gcbr(){
  command git checkout -b feature/add-recently-posts-$1
}

# --- その他ショートハンド ---
alias y="yarn"
alias ystart="y start"
alias yadd="y add"
alias yrm="y remove"
alias ysb="y storybook"
alias ytest="y test"
alias ylist="y list --depth=0"
alias ylistg="y global list --depth=0"

alias nstart="npm start"
alias nst="npm start"

# --- anyenv ---
eval "$(anyenv init -)"

# --- nodenv ---
# export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# --- pyenv ---
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# --- goenv ---
eval "$(goenv init -)"

# ありがとうきむえもん
if [ -f $HOME/develop/my-commands/.localrc ]; then
  source $HOME/develop/my-commands/.localrc
fi

alias ls='/usr/local/bin/exa'
