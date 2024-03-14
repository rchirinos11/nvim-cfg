vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-ui-select.nvim' }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use 'theprimeagen/harpoon'
  use 'github/copilot.vim'

  use ({
    'rose-pine/neovim',
    as = 'rose-pine',
  })
  use 'folke/tokyonight.nvim'
  use 'overcache/NeoSolarized'

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'L3MON4D3/LuaSnip'},
      {'saadparwaiz1/cmp_luasnip'}
    }
  }

  -- For J*va
  use 'mfussenegger/nvim-jdtls'
  use 'mfussenegger/nvim-lint'
  use 'https://gitlab.com/schrieveslaach/sonarlint.nvim'
end)

