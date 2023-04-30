local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Autocommand that reloads neovim whenever you save the main.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost main.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end


return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -- Colorscheme
--  use {
--    "EdenEast/nightfox.nvim",
--    config = [[ require "plugins.nightfox" ]]
--  }

  use {
    "olimorris/onedarkpro.nvim",
    config = [[ require "plugins.onedark" ]]
  }

  -- Autopairs - Auto add closed parenthesis
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Surround - Quick change parenthesis
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup { mappings_style = "sandwich" }
    end
  }

  -- Tree - File explorer
  use {
    "kyazdani42/nvim-tree.lua",
    requires = { "kyazdani42/nvim-web-devicons" },
    tag = "nightly",
    config = [[ require "plugins.nvim-tree" ]]
  }

  -- Lazygit
  use "kdheepak/lazygit.nvim"

  -- Gitsigns - Show git diff
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  }

  -- Lualine
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
    config = [[ require "plugins.lualine" ]]
  }

  -- Tree sitter
  use {
    "nvim-treesitter/nvim-treesitter",
    event = "BufEnter",
    run = ":TSUpdate",
    config = [[ require "plugins.nvim-treesitter" ]]
  }

  -- LSP
  use {
    "jose-elias-alvarez/null-ls.nvim",
    requires = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip"
    },
    config = function()
      require "plugins.lsp"
      require "plugins.null-ls"
    end
  }

  -- Telescope - File Finder
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.1",
    requires = { "nvim-lua/plenary.nvim" },
    config = [[ require "plugins.telescope" ]]
  }

  -- IndentBlankLine
  use "lukas-reineke/indent-blankline.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)

