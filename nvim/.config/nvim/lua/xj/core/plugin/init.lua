-- pack init file
local present, packer = pcall(require, "xj.core.plugin.packerInit")

if not present then
   return false
end


-- load plugins
local plugins = require("plugins")


--label plugins for operational assistance
-- plugins = require("xj.core.utils").label_plugins(plugins)
--remove plugins specified in chadrc
--plugins = require("core.utils").remove_default_plugins(plugins)
--add plugins specified in chadrc
--plugins = require("core.utils").add_user_plugins(plugins)

-- Packer use plugins
return packer.startup(function(use)
   for _, v in pairs(plugins) do
       -- TODO:XJ: load plugins.config() first
       -- -------- then call packer
      use(v)
   end
end)
