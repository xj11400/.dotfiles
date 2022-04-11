
local core_modules = {
--   "core.options",
   "core.autocmds",
   "core.commands",
}

for _, module in ipairs(core_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

--
require("core.commands").misc()


-- # initialize X
-- define X global variable


