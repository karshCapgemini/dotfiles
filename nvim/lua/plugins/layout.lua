--------------------------------------------------------------------------------
--# Layout #--------------------------------------------------------------------

--# Color Theme #---------------------------------------------------------------

require("tokyoburn").setup({
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
    },
    terminal_colors = true,
    lualine_bold = true,
})
vim.cmd[[colorscheme tokyoburn-night]]


--# Statusline #----------------------------------------------------------------

require('lualine').setup({
    sections = {
        lualine_x = { {
            require("noice").api.statusline.mode.get,
            cond = require("noice").api.statusline.mode.has,
            color = { fg = "#ff5f87" },
        } },
    },
})

