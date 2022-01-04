zimfw() { source /home/jase/.local/share/zim/zimfw.zsh "${@}" }
zmodule() { source /home/jase/.local/share/zim/zimfw.zsh "${@}" }
fpath=(/home/jase/.dotfiles/zim/.local/share/zim/modules/git/functions /home/jase/.dotfiles/zim/.local/share/zim/modules/utility/functions /home/jase/.dotfiles/zim/.local/share/zim/modules/duration-info/functions /home/jase/.dotfiles/zim/.local/share/zim/modules/git-info/functions /home/jase/.dotfiles/zim/.local/share/zim/modules/prompt-pwd/functions ${fpath})
autoload -Uz -- git-alias-lookup git-branch-current git-branch-delete-interactive git-branch-remote-tracking git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw duration-info-precmd duration-info-preexec coalesce git-action git-info prompt-pwd
source /home/jase/.dotfiles/zim/.local/share/zim/modules/environment/init.zsh
source /home/jase/.dotfiles/zim/.local/share/zim/modules/git/init.zsh
source /home/jase/.dotfiles/zim/.local/share/zim/modules/input/init.zsh
source /home/jase/.dotfiles/zim/.local/share/zim/modules/termtitle/init.zsh
source /home/jase/.dotfiles/zim/.local/share/zim/modules/utility/init.zsh
source /home/jase/.dotfiles/zim/.local/share/zim/modules/duration-info/init.zsh
source /home/jase/.dotfiles/zim/.local/share/zim/modules/asciiship/asciiship.zsh-theme
source /home/jase/.dotfiles/zim/.local/share/zim/modules/zsh-completions/zsh-completions.plugin.zsh
source /home/jase/.dotfiles/zim/.local/share/zim/modules/completion/init.zsh
source /home/jase/.dotfiles/zim/.local/share/zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/jase/.dotfiles/zim/.local/share/zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/jase/.dotfiles/zim/.local/share/zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
source /home/jase/xxx/zim/gitster/gitster.zsh-theme
