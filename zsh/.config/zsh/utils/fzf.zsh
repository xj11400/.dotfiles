# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jase/.local/share/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/jase/.local/share/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jase/.local/share/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/jase/.local/share/fzf/shell/key-bindings.zsh"
