#
#
#

# load theme
# ==========

# check is theme config file exist "$X_ZSH_THEME.zsh-theme"
if [[ -a $X_ZSH_THEME_HOME/$X_ZSH_THEME/$X_ZSH_THEME.zsh-theme ]]
then
    source $X_ZSH_THEME_HOME/$X_ZSH_THEME/$X_ZSH_THEME.zsh-theme
elif [[ -a $X_ZSH_THEME_DATA_HOME/$X_ZSH_THEME/$X_ZSH_THEME.zsh-theme ]]
then
    source $X_ZSH_THEME_DATA_HOME/$X_ZSH_THEME/$X_ZSH_THEME.zsh-theme
else
    echo "Can't file theme: $X_ZSH_THEME"
fi

# dir colors
# ==========
test -r $X_ZSH_THEME_HOME/.dir_colors && eval $(dircolors $X_ZSH_THEME_HOME/.dir_colors)
