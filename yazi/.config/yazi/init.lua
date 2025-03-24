-- https://github.com/Ape/simple-status.yazi.git
require("zx-status"):setup()

-- https://github.com/DreamMaoMao/searchjump.yazi.git
require("zx-jump"):setup({
	unmatch_fg = "#3a3e47",
    match_str_fg = "#181a1f",
    match_str_bg = "#8c8f95",
    first_match_str_fg = "#181a1f",
    first_match_str_bg = "#9e9775",
    lable_fg = "#181a1f",
    lable_bg = "#556e86",
    only_current = false,
    show_search_in_statusbar = false,
    auto_exit_when_unmatch = false,
    enable_capital_lable = true,
})
