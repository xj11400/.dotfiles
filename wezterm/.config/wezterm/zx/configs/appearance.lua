local wezterm = require("wezterm")

return {
    enable_wayland = true,

    -- cursor
    default_cursor_style = 'SteadyUnderline',
    cursor_thickness = "0.25cell",

    -- tab bar
    show_new_tab_button_in_tab_bar = false,
    hide_tab_bar_if_only_one_tab = true,
    show_close_tab_button_in_tabs = false,

    -- window
    window_background_opacity = 0.65,
    macos_window_background_blur = 10,
    window_decorations = "RESIZE",
    window_padding = {
        left = 12,
        right = 12,
        top = 0,
        bottom = 0,
    },
}
