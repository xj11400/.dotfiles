--
-- TODO rename file name
--

local cmd = vim.cmd

local M = {}

-- these mappings will only be called during initialization
M.misc = function()
    local function packer()
    -- Add Packer commands because we are not loading it at startup
        cmd "silent! command PackerClean lua require 'core.plugin' require('packer').clean()"
        cmd "silent! command PackerCompile lua require 'core.plugin' require('packer').compile()"
        cmd "silent! command PackerInstall lua require 'core.plugin' require('packer').install()"
        cmd "silent! command PackerStatus lua require 'core.plugin' require('packer').status()"
        cmd "silent! command PackerSync lua require 'core.plugin' require('packer').sync()"
        cmd "silent! command PackerUpdate lua require 'core.plugin' require('packer').update()"
    end

    packer()
end

return M
