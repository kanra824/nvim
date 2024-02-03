return {
    {
        "folke/lazy.nvim"
    },
    {
        "tanvirtin/monokai.nvim",
        config = function()
            require('monokai').setup { italics = false }
        end
    },
    {
        "rebelot/kanagawa.nvim",
    },
    {
        "folke/tokyonight.nvim",
    },
    {
        "catppuccin/nvim",
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons'},
        config = function()
            require('lualine').setup()
        end
    },
    {
        'nvim-tree/nvim-tree.lua',
        config = true,
        keys = {
            {mode = "n", "gf", "<cmd>NvimTreeToggle<CR>", desc = "NvimTreeをトグルする"},
        }
    },
    {
    -- need node
    -- need to do :CocInstall
        "neoclide/coc.nvim",
        branch = "release",
        config = function()
            vim.g.coc_global_extensions = {
                "coc-rust-analyzer",
                "coc-clangd",
            }
        end
    },
    {
    -- need ripgrep
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'simeji/winresizer'
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    },
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup{}
        end
    }
}
