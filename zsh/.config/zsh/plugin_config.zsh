# --------------
# zsh plugin
# --------------

# zsh-syntax-highlighting
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=111'
ZSH_HIGHLIGHT_STYLES[alias]='fg=73'

# zsh-autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# --------------
# other plugin
# --------------

# fzf
# replace by wfxr/forgit
#alias gco='git checkout $(git branch | fzf --cycle --border --ansi)'
#alias gadd="git status --short | fzf --multi --color=dark --cycle --border --ansi --preview-window=up:70% --preview=\"git diff --color {+2}\" | awk '{print \$2}'  | xargs git add"

# fzf-scripts
# https://github.com/bturrubiates/fzf-scripts
alias gsh="~/.local/share/fzf-scripts/git-stash-explore"

