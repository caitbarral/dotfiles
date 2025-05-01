local M = {}

function M.setup()
  vim.o.termguicolors = true
  -- indentation
  vim.o.shiftwidth = 0
  vim.o.softtabstop = -1
  vim.o.tabstop = 2
  vim.o.expandtab = true
end

return M
