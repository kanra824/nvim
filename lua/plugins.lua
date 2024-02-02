return {
    {
        "folke/lazy.nvim"
    },
    {
        "tanvirtin/monokai.nvim",
        config = function()
            vim.cmd([[colorscheme monokai]])
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end
    },
    {
        'kyazdani42/nvim-web-devicons',
    },
    {
        'nvim-tree/nvim-tree.lua',
        config = true,
        keys = {
            {mode = "n", "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "NvimTreeをトグルする"},
        }
    },
    {
        "neoclide/coc.nvim"
    }
}
