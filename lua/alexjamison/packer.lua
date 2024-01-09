vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	  -- Packer can manage itself
	  use 'wbthomason/packer.nvim'
	  use {
		  'nvim-telescope/telescope.nvim', tag = '0.1.5',
		  -- or                            , branch = '0.1.x',
		  requires = { {'nvim-lua/plenary.nvim'} }
	  }
	  use({ 'rose-pine/neovim', as = 'rose-pine', config = function() vim.cmd('colorscheme rose-pine') end })
	  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	  use("theprimeagen/harpoon")
	  use ('mbbill/undotree')
	  use('tpope/vim-fugitive')
	  use {
		  'VonHeikemen/lsp-zero.nvim',
		  branch = 'v3.x',
		  requires = {
			  {'williamboman/mason.nvim'},
			  {'williamboman/mason-lspconfig.nvim'},
			  -- LSP Support
			  {'neovim/nvim-lspconfig'},
			  {'hrsh7th/cmp-buffer'},
			  {'hrsh7th/cmp-path'},
			  {'saadparwaiz1/cmp_luasnip'},
			  {'hrsh7th/cmp-nvim-lua'},
			  {'rafamadriz/friendly-snippets'},
			  -- Autocompletion
			  {'hrsh7th/nvim-cmp'},
			  {'hrsh7th/cmp-nvim-lsp'},
			  {'L3MON4D3/LuaSnip'},
		  }
	  }
      use('windwp/nvim-ts-autotag')
      use {
          "windwp/nvim-autopairs",
          config = function() require("nvim-autopairs").setup {} end
      }
      use('ThePrimeagen/vim-be-good')
  end)

