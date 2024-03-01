local wezterm = require("wezterm")

-- module table to be exported
local module = {}

local function private_helper()
    wezterm.log_error("hello!")
end

local function window_frame_config()
    return {
        font = wezterm.font 'IBM Plex Mono',
        font_size = 12.0,
    }
end

function module.apply_to_config(config)
    --[[ private_helper() ]]

    config.color_scheme = 'tokyonight_night'
    config.font = wezterm.font 'IBM Plex Mono'
    config.font_size = 13.5
    config.line_height = 1.1
    config.window_padding = {
        left = 10,
        right = 0,
        top = 25,
        bottom = 0,
    }

    config.hide_tab_bar_if_only_one_tab = true

    config.window_decorations = "RESIZE"
    config.window_frame = window_frame_config()
end

return module
