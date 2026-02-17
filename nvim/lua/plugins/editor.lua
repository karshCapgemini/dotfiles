-------------------------------------------------------------------------------
--# Editor #-------------------------------------------------------------------

--# Git Gutter #---------------------------------------------------------------

vim.g.gitgutter_enabled = 1       -- Enable GitGutter always
vim.o.signcolumn = 'yes'          -- Always show the sign column (gutter)


--# Enable Plugins #-----------------------------------------------------------

require('Comment').setup()        -- Better Commenting
require('colorizer').setup()      -- Preview Hex Colours
require("nvim-surround").setup()  -- Surround Actions
require('ifdef').setup()          -- Preview ifdef conditions


--# Custom Keybinds #-----------------------------------------------------------

Map('<leader>h',  ':Ifdef current<CR>')
Map('<leader>u',  ':UndotreeToggle<CR>')

