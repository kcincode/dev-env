export EDITOR="vim"

# starship prompts
eval "$(starship init zsh)"

# neovim
alias vim="/usr/bin/nvim"

# Disable software flow control (ctrl-s/ctrl-q) as its mostly just annoying. 
stty -ixon

export XDG_CONFIG_HOME="$HOME/.config"

# setup python stuff
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
source /usr/bin/virtualenvwrapper.sh

# Tmux
# Always work in a tmux session if Tmux is installed
if which tmux 2>&1 >/dev/null; then
 if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
   tmux attach -t default || tmux new -s default; exit
 fi
fi

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
