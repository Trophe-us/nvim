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

local plugins = {
    'rebelot/kanagawa.nvim',
    {
        'dracula/vim',
        lazy = false,
    },
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'nvim-treesitter/nvim-treesitter',
    'bluz71/vim-nightfly-colors',
    'lewis6991/gitsigns.nvim',
    'tpope/vim-fugitive',
    'tpope/vim-commentary',
    'mbbill/undotree',
    'lervag/vimtex',
    'barreiroleo/ltex-extra.nvim',

    'VonHeikemen/lsp-zero.nvim',
    -- LSP Support
    'neovim/nvim-lspconfig',             -- Required
    'williamboman/mason.nvim',           -- Optional
    'williamboman/mason-lspconfig.nvim', -- Optional

    -- Autocompletion
    'hrsh7th/nvim-cmp',     -- Required
    'hrsh7th/cmp-nvim-lsp', -- Required
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lua',

    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',

    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }

}

local opts = {}

require("lazy").setup(plugins, opts)
