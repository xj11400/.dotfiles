local plugin_settings = require("core.utils").load_config().plugins
local present, packer = pcall(require, plugin_settings.options.packer.init_file)

if not present then
   return false
end

local override_req = require("core.utils").override_req

local plugins = {
   { "NvChad/extensions" },
   {
      "wbthomason/packer.nvim",
      event = "VimEnter",
   },
}

--label plugins for operational assistance
plugins = require("core.utils").label_plugins(plugins)
--remove plugins specified in chadrc
--plugins = require("core.utils").remove_default_plugins(plugins)
--add plugins specified in chadrc
--plugins = require("core.utils").add_user_plugins(plugins)

return packer.startup(function(use)
   for _, v in pairs(plugins) do
      use(v)
   end
end)
