# History config
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# alias
alias zshconfig="vim ~/.zshrc"
alias reloadzsh="source ~/.zshrc"

## command
alias ls="ls --color=auto"
alias ll="ls -alh"
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'

# dircolors
test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)
