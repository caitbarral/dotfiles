package.path = package.path .. ';' .. vim.fn.stdpath('config') .. '/?.lua'

vim.uv = vim.uv or vim.loop

local M = {}

function M.setup()
  require("config").setup()
end

M.setup()
