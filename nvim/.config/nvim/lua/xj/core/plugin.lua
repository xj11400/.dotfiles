local utils = require("xj.core.utils")
local M = {}

local logger =  require("xj.core.logger")

function M:init()
    -- Add Packer commands because we are not loading it at startup
    --- new neovim api 0.7
    local user_cmd = vim.api.nvim_create_user_command
    local packer_cmd = function(callback)
       return function()
          require('xj.core.plugin'):setup()
          require("packer")[callback]()
       end
    end
    
    -- snapshot stuff
    user_cmd("PackerSnapshot", function(info)
       require "plugins"
       require("packer").snapshot(info.args)
    end, { nargs = "+" })
    
    user_cmd("PackerSnapshotDelete", function(info)
       require "plugins"
       require("packer.snapshot").delete(info.args)
    end, { nargs = "+" })
    
    user_cmd("PackerSnapshotRollback", function(info)
       require "plugins"
       require("packer").rollback(info.args)
    end, { nargs = "+" })
    
    user_cmd("PackerClean", packer_cmd "clean", {})
    user_cmd("PackerCompile", packer_cmd "compile", {})
    user_cmd("PackerInstall", packer_cmd "install", {})
    user_cmd("PackerStatus", packer_cmd "status", {})
    user_cmd("PackerSync", packer_cmd "sync", {})
    user_cmd("PackerUpdate", packer_cmd "update", {})

---    local function packer_cmd()
---        vim.cmd "silent! command PackerClean lua require('xj.core.plugin'):laod() require('packer').clean()"
---        vim.cmd "silent! command PackerCompile lua require('xj.core.plugin'):laod() require('packer').compile()"
---        vim.cmd "silent! command PackerInstall lua require('xj.core.plugin'):laod() require('packer').install()"
---        vim.cmd "silent! command PackerStatus lua require('xj.core.plugin'):laod() require('packer').status()"
---        vim.cmd "silent! command PackerSync lua require('xj.core.plugin'):laod() require('packer').sync()"
---        vim.cmd "silent! command PackerUpdate lua require('xj.core.plugin'):laod() require('packer').update()"
---    end
---
---    packer_cmd()

    self:config()
end

--- setting config
function M:config()

    --* load plugin list
    local plugins = require("xj.plugins")
    utils:load_plugins(plugins)

    --* load plugin config

    local directories = utils:scandir(os.getenv("HOME").."/.config/nvim/lua/xj/plugins/")

    for _, plugin_dir in pairs(directories) do
        logger:debug(plugin_dir)

        local status, retval = pcall(require,"xj.plugins."..plugin_dir) 

        if status then
            pcall(retval.init)
        end
    end

    --* load config file
    pcall(require,"xj.config.plugin")

end

--- load plugins
function M:setup()
    -- pack init file
    local packer = self:packer()
    
    -- load plugins
    local plugins = require("xj.plugins")
    
    -- Packer use plugins
    return packer.startup(function(use)
       for _, v in pairs(plugins) do
          use(v)
       end
    end)
end

--- packer init and load
function M:packer()
    logger:debug("plugin:packer()")

    vim.cmd "packadd packer.nvim"
    local present, packer = pcall(require, "packer")
    
    if not present then
        logger:debug("plugin:packer()... no packer")
       local packer_path = vim.fn.stdpath "data" .. "/site/pack/packer/opt/packer.nvim"
    
       print "Cloning packer.."
       -- remove the dir before cloning
       vim.fn.delete(packer_path, "rf")
       vim.fn.system {
          "git",
          "clone",
          "https://github.com/wbthomason/packer.nvim",
          "--depth",
          "1",
          packer_path,
       }
    
       vim.cmd "packadd packer.nvim"
       present, packer = pcall(require, "packer")
    
       if present then
          print "Packer cloned successfully."
       else
          error("Couldn't clone packer !\nPacker path: " .. packer_path .. "\n" .. packer)
       end
    end
    
    logger:debug("plugin:packer()... packer found!!")
    packer.init {
       display = {
          open_fn = function()
             return require("packer.util").float { border = "single" }
          end,
          prompt_border = "single",
       },
       git = {
          clone_timeout = 6000, -- seconds
       },
       auto_clean = true,
       compile_on_sync = true,
    }
    
    return packer
end


return M
