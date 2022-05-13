-- [lunarVim] bootstrap.lua
-- init()
-- update()

local M = {}

function M:init()
    -- core config init
    require("xj.core.config"):init()

    -- options init
    --

    -- plugin init
    require("xj.core.plugin"):init()

end

function M:config()
    -- config file
    pcall(require,"xj.config")
end

function M:update()
end

return M
