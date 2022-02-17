# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# use powerlevel10k
source ~/.config/zsh/theme/powerlevel10k/powerlevel10k/powerlevel10k.zsh-theme

# use robbyrussell theme
#source ~/.config/zsh/theme/powerlevel10k/powerlevel10k/config/p10k-robbyrussell.zsh
#source ~/.config/zsh/theme/snow_blocks/config/p10k-snowblocks.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/theme/powerlevel10k/.p10k.zsh ]] || source ~/.config/zsh/theme/powerlevel10k/.p10k.zsh
