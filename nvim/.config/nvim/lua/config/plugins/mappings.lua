local M = {}
-- plugins related mappings
-- To disable a mapping, equate the variable to "" or false or nil in chadrc
M.bufferline = {
   next_buffer = "<TAB>",
   prev_buffer = "<S-Tab>",
}

M.comment = {
   toggle = "<leader>/",
}

-- map to <ESC> with no lag
M.better_escape = { -- <ESC> will still work
   esc_insertmode = { "jk" }, -- multiple mappings allowed
}

M.lspconfig = {
   declaration = "gD",
   definition = "gd",
   hover = "K",
   implementation = "gi",
   signature_help = "gk",
   add_workspace_folder = "<leader>wa",
   remove_workspace_folder = "<leader>wr",
   list_workspace_folders = "<leader>wl",
   type_definition = "<leader>D",
   rename = "<leader>ra",
   code_action = "<leader>ca",
   references = "gr",
   float_diagnostics = "ge",
   goto_prev = "[d",
   goto_next = "]d",
   set_loclist = "<leader>q",
   formatting = "<leader>fm",
}

M.nvimtree = {
   toggle = "<C-n>",
   focus = "<leader>e",
}

M.telescope = {
   buffers = "<leader>fb",
   find_files = "<leader>ff",
   find_hiddenfiles = "<leader>fa",
   git_commits = "<leader>cm",
   git_status = "<leader>gt",
   help_tags = "<leader>fh",
   live_grep = "<leader>fw",
   oldfiles = "<leader>fo",
   themes = "<leader>th", -- NvChad theme picker
}

return M
