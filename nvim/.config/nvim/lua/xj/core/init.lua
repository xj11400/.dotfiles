-- init xxx

-- bootstrap
-- - load and initial all variables and settings
-- - general option, keymapping, autocmd?
require("xj.core.bootstrap"):init()
-- -- require("xj.core.config"):init()
logger = require("xj.core.logger")
logger:print(xj)

-- config
-- - load temp setting config. eg. temp disable
-- - set all config to nvim
-- require("xj.core.config"):load()


