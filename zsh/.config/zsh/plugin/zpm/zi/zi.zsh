#
x_use "z-shell/zi" $X_ZSH_DATA_HOME/zpm zi/bin

# initial ZI's hash definition
declare -A ZI
ZI[BIN_DIR]="$X_ZSH_DATA_HOME/zpm/zi/bin"
ZI[HOME_DIR]="$X_ZSH_DATA_HOME/zpm/zi"

#ZPFS=$ZI_HOME/polaris
#ZI[BIN_DIR]=$ZI_HOME/bin
#ZI[HOME_DIR]="$ZI_HOME"
#ZI[PLUGINS_DIR]=$ZINIT_HOME/plugins
#ZI[COMPLETIONS_DIR]=$ZINIT_HOME/completions
#ZI[SNIPPETS_DIR]=$ZINIT_HOME/snippets
#
#ZI[ZMODULES_DIR]=/opt/zsh/zi/zmodules
#ZI[ZCOMPDUMP_PATH]=$XDG_CACHE_HOME/zcompdump
#ZI[COMPINIT_OPTS]=-C
#ZI[MUTE_WARNINGS]=0
#ZI[OPTIMIZE_OUT_DISK_ACCESSES]=0

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
