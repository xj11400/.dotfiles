-- [lunarVim] config.init
-- init
-- load
-- reload


local M = {}

--- initialize xj default configuration
-- define xj
function M:init()
    if vim.tbl_isempty(xj or {}) then
        xj = vim.deepcopy(require("xj.core.default"))
    end

    -- xlogger =  require("xj.core.logger")

    -- keymapping
    -- options
    -- autocmds
    -- lsp config
end

function M:load()
end

function M:reload()
    self:init()
    self:load()
end

return M
