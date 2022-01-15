# Setup fzf
# ---------
if [[ ! "$PATH" == */home/$USERNAME/.local/share/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/$USERNAME/.local/share/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/$USERNAME/.local/share/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/$USERNAME/.local/share/fzf/shell/key-bindings.zsh"

# show dot files
# --------------
export FZF_DEFAULT_COMMAND='ag -l --path-to-ignore ~/.ignore --nocolor --hidden -g ""'
