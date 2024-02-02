-- nvim-tree のための設定
vim.api.nvim_set_var('loaded_netrw', 1)
vim.api.nvim_set_var('loaded_netrwPlugin', 1)

require("options")
require("init_lazy")
require("keymap")

-- vim.cmd[[colorscheme tokyonight-night]]

