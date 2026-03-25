#
# js
# ############################################################

# nodejs
# ======
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

# npm
# ===
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NPM_CONFIG_PREFIX=${XDG_DATA_HOME}/npm
export NPM_CONFIG_CACHE=${XDG_CACHE_HOME}/npm

# nvm
# ===
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# bun
# ===
if [ "$(command -v bun)" ]; then
    export BUN_INSTALL_GLOBAL_DIR="$XDG_CACHE_HOME/bun/install/global"
    export BUN_INSTALL_BIN="$XDG_CACHE_HOME/bun/bin"
    export BUN_INSTALL_CACHE_DIR="$XDG_CACHE_HOME/bun/cache"
    export PATH="$BUN_INSTALL_BIN:$PATH"
fi
