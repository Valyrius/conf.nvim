local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'theprimeagen/harpoon',
    'mbbill/undotree',
    'andweeb/presence.nvim',
    'RRethy/vim-illuminate',

    {'bluz71/vim-moonfly-colors',
        config = function()
            vim.cmd('colorscheme moonfly')
        end},

    {'nvim-lualine/lualine.nvim',
        dependencies = {'nvim-tree/nvim-web-devicons'},
        config = function()
            require("lualine").setup({})
        end},

    {'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {'nvim-lua/plenary.nvim'}},

    {'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {'nvim-treesitter/nvim-treesitter-context'}},

    {"shellRaining/hlchunk.nvim",
        event = { "UIEnter" },
        config = function()
            require("hlchunk").setup({})
        end},

    {'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            -- Autocompletion
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            -- Snippets
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets'}}
})

