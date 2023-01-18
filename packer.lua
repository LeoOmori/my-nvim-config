-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'
		use { "ellisonleao/gruvbox.nvim" }
		use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			end,
		}
		use {
			'nvim-tree/nvim-tree.lua',
			tag = 'nightly' -- optional, updated every week. (see issue #1193)
		}
		use 'nvim-tree/nvim-web-devicons'
		use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
		use "nvim-lua/plenary.nvim"
		use {
			'nvim-telescope/telescope.nvim', tag = '0.1.0',
			-- or                            , branch = '0.1.x',
			requires = { {'nvim-lua/plenary.nvim'} }
		}
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use {'romgrk/barbar.nvim'}
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- Lua
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
    use 'voldikss/vim-floaterm'

		end)
