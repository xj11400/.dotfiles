#
#
# 

# plugin manager

if [[ -d "$X_ZSH_PLUGIN_HOME/zpm/$X_ZSH_PLUGIN_MANAGER" ]]
then
    source "$X_ZSH_PLUGIN_HOME/zpm/$X_ZSH_PLUGIN_MANAGER/$X_ZSH_PLUGIN_MANAGER.zsh"
else
    echo "You don't have this plugin manager."
fi


# plugin config
x_zsh_require_dir plugin/config
