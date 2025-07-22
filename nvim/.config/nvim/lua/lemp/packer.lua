-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'

  -- Mason
  use "mason-org/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Blink-cmp
  use {
    'saghen/blink.cmp',
    requires = { 'rafamadriz/friendly-snippets'},
    tag = '1.*',
  }

  -- Plenary.vim: Dependency for telescope
  use 'nvim-lua/plenary.nvim'
  -- Native telescope sorter
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Undotree
  use 'mbbill/undotree'

  -- Fugitive
  use 'tpope/vim-fugitive'

  -- Catppuccin
  use { 'catppuccin/nvim', as = 'catppuccin' }
end)
