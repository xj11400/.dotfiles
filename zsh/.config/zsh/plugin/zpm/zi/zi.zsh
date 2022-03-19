#
x_use "z-shell/zi" $X_ZSH_DATA_HOME/zpm zi/bin

# initial ZI's hash definition
declare -A ZI
ZI[BIN_DIR]="$X_ZSH_DATA_HOME/zpm/zi/bin"
ZI[HOME_DIR]="$X_ZSH_DATA_HOME/zpm/zi"

#
zi_home="${X_ZSH_DATA_HOME}/zpm/zi"
source "${zi_home}/bin/zi.zsh"

#
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

#

# Fast-syntax-highlighting & autosuggestions
zi wait lucid for \
atinit"ZI[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" \
  z-shell/F-Sy-H \
atload"!_zsh_autosuggest_start" \
  zsh-users/zsh-autosuggestions \
blockf \
  zsh-users/zsh-completions


# wait'1' plugins
zi wait"1" lucid for \
    Aloxaf/fzf-tab

# A few wait'2' plugins
zi wait"2" lucid for \
  atinit"forgit_ignore='fgi'" \
wfxr/forgit
