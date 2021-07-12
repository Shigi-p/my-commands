alias commands="nano $HOME/develop/my-commands/.zshrc"
alias zshrc="source $HOME/develop/my-commands/.zshrc"

# ありがとうきむえもん
if [ -f $HOME/develop/my-commands/.localrc ]; then
  source $HOME/develop/my-commands/.localrc
fi
