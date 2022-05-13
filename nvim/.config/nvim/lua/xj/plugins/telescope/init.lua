-- local a, conf = require("xj.config.plugins").telescope()
-- -- force merge table after set options
-- if a then
--     xj.plugins.telescope = vim.tbl_extend("forece", xj.plugins.telescope, conf)
-- end

local M = {}

local logger =  require("xj.core.logger")

function M.options()
    local defaults = {
     }
     return defaults
end

-- function M.mappings()
-- end
--- init xj.plugins table
--- - active config
function M.init()
    -- active
    xj.plugins.telescope.init = true
    

    -- load options
    -- xj.plugins.telescope = vim.tbl_extend("forece", xj.plugins.telescope,M.options())
    logger:warn("load telescope.init()")
    --preview = require("telescope.previewers")
end

function M.load()

end


return M
