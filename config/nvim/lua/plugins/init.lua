-- bootstrap Lazy.nvim
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

-- list plugins
plugins = {
  "nvim-lualine/lualine.nvim",
  {'akinsho/bufferline.nvim', version = "*", dependencies = "nvim-tree/nvim-web-devicons"},
  {"nvim-neo-tree/neo-tree.nvim", branch = "v2.x", dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim"}},
  {"nvim-telescope/telescope.nvim", tag = "0.1.4", dependencies = "nvim-lua/plenary.nvim"},
  "lewis6991/gitsigns.nvim",
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  'numToStr/Comment.nvim',
  'nvim-treesitter/nvim-treesitter',
  {
    "folke/noice.nvim",
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
  },
  "williamboman/mason-lspconfig.nvim",
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'tpope/vim-surround',
  'alvan/vim-closetag'
}

-- set up plugins
require("lazy").setup(plugins)
