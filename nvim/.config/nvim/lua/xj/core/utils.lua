local logger = require("xj.core.logger")
local M = {}



---  scan directories
function M:scandir(directory)
    local pfile = assert(io.popen(("find '%s' -mindepth 1 -maxdepth 1 -type d -printf '%%f\\0'"):format(directory), 'r'))
    local list = pfile:read('*a')
    pfile:close()

    local folders = {}

    for filename in string.gmatch(list, '[^%z]+') do
        table.insert(folders, filename)
    end

    return folders
end

--- load plugins
function M:load_plugins(plugins)
    for _,v in ipairs(plugins) do
        -- parse plugin name without .nvim
        plugin = string.gsub(v[1],".*/(%w+)","%1")
        plugin = string.gsub(plugin,"(%w+)(%.nvim)","%1")

        -- add plugin active status
        xj.plugins[plugin] = {
            active = true
        }
    end
end

return M
