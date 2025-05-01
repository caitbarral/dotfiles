-- bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

local editor = require("config.editor")
local keybinds = require("config.keybinds")
local ui = require("config.ui")
local lazy = require("lazy")

local M = {}
function M.setup()
  editor.setup()
  keybinds.setup()
  ui.setup()
  lazy.setup({
    { import = "plugins" },
  })
end

return M
