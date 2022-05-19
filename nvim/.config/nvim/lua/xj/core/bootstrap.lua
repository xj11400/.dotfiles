-- init()
-- - initiallize path environment variables and prepare for startup
-- update()
-- - update .....

local M = {}


function M:init()

    -- plugin manager cmd init
    require("xj.core.plugin"):init()

    -- core config init
    require("xj.core.config"):init()

end

function M:update()
end

return M
