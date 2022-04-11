local override_req = require("core.utils").override_req
local load_mappings = require("core.utils").load_plugin_mappings

local plugins = {
    -- general
   { "NvChad/extensions" },
   { "nvim-lua/plenary.nvim" },
   { "lewis6991/impatient.nvim" },
   { "nathom/filetype.nvim" },
   {
      "wbthomason/packer.nvim",
      event = "VimEnter",
   },
    --
   { 
       "nvim-telescope/telescope.nvim",
       requires = {
          "nvim-lua/plenary.nvim",
          --"kyazdani42/nvim-web-devicons"
        },
       module = "telescope",
       cmd = "Telescope",
       config = override_req("telescope", "plugins.telescope", "setup"),
       setup = function()
          -- DEL) require("plugins.mappings").telescope()
          require("plugins.telescope").mappings()
          -- require("plugins.configs.tel_mapping").mappings()
          -- load_mappings("telescope")
       end,
   },

}

return plugins
