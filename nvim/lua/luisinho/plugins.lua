-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------
local ok, packer = pcall(require, "packer")
if (not ok) then return end

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return packer.startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim'

  -- file explorer
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    },
  }

  -- indent line
  use 'lukas-reineke/indent-blankline.nvim'

  --TODO: IDE
  --styled-components
  --use {'styled-components/vim-styled-components',  branch = 'main'}
  --multi cursor
  use { 'mg979/vim-visual-multi', branch = 'master' }
  -- tagalong chanse
  use 'AndrewRadev/tagalong.vim'
  -- pick color
  use 'KabbAmine/vCoolor.vim'
  -- surround
  use {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({})
    end
  }
  use 'ray-x/web-tools.nvim'
  -- use 'TeoDev1611/astro.nvim'
  use 'wuelnerdotexe/vim-astro'

  use 'digitaltoad/vim-pug'

  -- icons
  use { 'nvim-tree/nvim-web-devicons' }

  use "RRethy/vim-illuminate"

  -- treesitter interface
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      "windwp/nvim-ts-autotag",
      "HiPhish/nvim-ts-rainbow2",
    }
  }
  use { "numToStr/Comment.nvim" }

  -- autopair
  use 'windwp/nvim-autopairs'

  -- colorschemes
  -- use 'sainnhe/gruvbox-material' -- o
  use 'folke/tokyonight.nvim' -- o
  use { "catppuccin/nvim", as = "catppuccin" }
  use "olimorris/onedarkpro.nvim"
  -- If you are using Packer
  -- use 'yashguptaz/calvera-dark.nvim'
  -- use "yorik1984/newpaper.nvim"
  use "EdenEast/nightfox.nvim" -- o
  use "rebelot/kanagawa.nvim"
  -- use 'navarasu/onedark.nvim' -- ?
  -- use 'rmehri01/onenord.nvim'
  --use 'NTBBloodbath/doom-one.nvim'
  -- use 'sainnhe/edge' -- o
  -- use "sainnhe/everforest" -- o
  -- use 'Shatur/neovim-ayu' -- o
  --use { 'rose-pine/neovim', as = 'rose-pine' }
  --use { "ellisonleao/gruvbox.nvim" }
  --use 'tjdevries/colorbuddy.vim'
  --use 'tjdevries/gruvbuddy.nvim'
  --use "yorik1984/newpaper.nvim"
  --use 'folke/tokyonight.nvim'
  --use 'navarasu/onedark.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'

  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "jay-babu/mason-null-ls.nvim",
  })

  use {
    'folke/trouble.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      "hrsh7th/cmp-cmdline",

      "onsails/lspkind-nvim",

      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
  }

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- cokeline - buffers
  use {
    "willothy/nvim-cokeline",
    requires = 'nvim-tree/nvim-web-devicons'
  }

  -- fuzzy finder
  use { 'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      -- "nvim-telescope/telescope-fzy-native.nvim",
      'nvim-telescope/telescope-symbols.nvim',
      "nvim-telescope/telescope-file-browser.nvim"
    }
  }

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- movements
  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }

  use {
    "folke/todo-comments.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }

  -- rest
  use {
    "NTBBloodbath/rest.nvim",
    requires = "nvim-lua/plenary.nvim"
  }

  -- colorizer
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup({
        '*',
        css = { rgb_fn = true, hsl_fn = true }, -- Enable parsing rgb(...) functions in css.
        html = { names = false, }               -- Disable parsing "names" like Blue or Gray
      }, { mode = 'background' })
    end
  }

  -- use "rcarriga/nvim-notify"

  if packer_bootstrap then
    require('packer').sync()
  end
end)
