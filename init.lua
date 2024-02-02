-- nvim-tree のための設定
vim.api.nvim_set_var('loaded_netrw', 1)
vim.api.nvim_set_var('loaded_netrwPlugin', 1)

require("options")
require("init_lazy")
require("keymap")

-- colorscheme
-- vim.cmd[[colorscheme catppuccin]]
require('monokai').setup { italics = false, palette = require('monokai').pro }

-- vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#425e57'})

