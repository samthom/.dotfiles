require("bufferline").setup {
    options = {
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        indicator = {
            style = "icon",
            icon = "▎",
        },
        --[[ buffer_close_icon = "", ]]
        buffer_close_icon = '',
        modified_icon = "●",
        --[[ close_icon = "", ]]
        close_icon = '',
        left_trunc_marker = "",
        right_trunc_marker = "",
    }
}
