export EDITOR="vim"

# starship prompts
eval "$(starship init zsh)"

# neovim
alias vim="/usr/bin/nvim"

# Disable software flow control (ctrl-s/ctrl-q) as its mostly just annoying. 
stty -ixon

export XDG_CONFIG_HOME="$HOME/.config"

# setup python stuff
eval "$(pyenv init -)"
source /usr/bin/virtualenvwrapper.sh

# Tmux
# Always work in a tmux session if Tmux is installed
if which tmux 2>&1 >/dev/null; then
 if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
   tmux attach -t default || tmux new -s default; exit
 fi
fi
