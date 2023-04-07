return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = {
            options = {
                --theme = "nord",
                icons_enabled = true,
                component_separators = "", -- { left = '', right = ''},
                section_separators = { left = "", right = "" },
                --padding = 1,
                --always_divide_middle = true,
            },
            sections = {
                lualine_c = { "%=", { "filename", file_status = true, path = 3 } },
            },
        },
    },
}
