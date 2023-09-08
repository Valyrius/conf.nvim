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
    {'Mofiqul/dracula.nvim',
    config = function()
        vim.cmd('colorscheme dracula')
    end},

    'theprimeagen/harpoon',
    'mbbill/undotree',
    'andweeb/presence.nvim',

    {'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'}},

    {'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {'nvim-lua/plenary.nvim'}},

    {'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'},
    'nvim-treesitter/nvim-treesitter-context',

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
        'rafamadriz/friendly-snippets',
    }}
})
