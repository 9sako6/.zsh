# $HOME/.zsh/.zshrcを読み込む
# export ZDOTDIR="$HOME"/.zsh
# zmodload zsh/zprof && zprof
# /etc/profile を読み込まない設定
# 勝手に読み込まれるとPATH先頭に/usr/binが来てanyenvで入れた*envのPATHが読み込まれない
setopt no_global_rcs

# Settings for rbenv
export RBENV_ROOT="$HOME/.rbenv"
if [ -d "$RBENV_ROOT" ]; then
  export PATH="$RBENV_ROOT/bin:$PATH"
  eval "$(rbenv init -)"
fi

# Settings for pyenv
export PYENV_ROOT="$HOME/.pyenv"
if [ -d "$PYENV_ROOT" ]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

# Settings for Python
#export PYTHONPATH="/usr/local/lib/python3.7/site-packages:$PYTHONPATH"

# Settings for nodebrew
export PATH="$PATH:$HOME/.nodebrew/current/bin"

# PATH general
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin"

# Setting for original commands
export PATH="$PATH:$HOME/mybin"

# Setting for fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
