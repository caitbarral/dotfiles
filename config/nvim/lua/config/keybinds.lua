local function map(m, k, v)
  vim.api.nvim_set_keymap(m, k, v, {silent = true})
end

local M = {}

function M.setup()
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "

  -- esc to clear search highlighting
  map('n', '<ESC>', ':nohl<CR>')

  ---- Command ----
  -- allow accidental capitals in common commands
  vim.cmd("command! W w")
  vim.cmd("command! Wa wa")
  vim.cmd("command! Q q")
  vim.cmd("command! Qa qa")

  -- stop accidentally saving file as "'"
  -- cmd("W'", "w")
  -- cmd("Wa'", "wa")
  -- cmd("w'", "w")
  -- cmd("wa'", "w")

  ---- Normal ----
  -- window navigation
  map("n", "<C-h>", "<C-w>h")
  map("n", "<C-j>", "<C-w>j")
  map("n", "<C-k>", "<C-w>k")
  map("n", "<C-l>", "<C-w>l")

  -- resizing windows
  map("n", "<C-Left>", ":vertical resize -2<CR>")
  map("n", "<C-Up>", ":resize -2<CR>")
  map("n", "<C-Down>", ":resize +2<CR>")
  map("n", "<C-Right>", ":vertical resize +2<CR>")

  -- switching buffers
  map("n", "<S-h>", ":BufferLineCyclePrev<CR>")
  map("n", "<S-l>", ":BufferLineCycleNext<CR>")
  map("n", "<A-S-h>", ":BufferLineMovePrev<CR>")
  map("n", "<A-S-l>", ":BufferLineMoveNext<CR>")

  -- moving lines up and down
  map("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
  map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

  -- toggle neotree
  map("n", "<leader>\\", ":Neotree toggle<CR>")
  map("n", "<leader>|", ":Neotree close<CR>:Neotree reveal show<CR>")

  -- telescope search
  map("n", "<leader>ff", ":Telescope find_files<CR>")
  map("n", "<leader>fg", ":Telescope live_grep<CR>")
  map("n", "<leader>fb", ":Telescope buffers<CR>")
  map("n", "<leader>fh", ":Telescope help_tags<CR>")

  ---- Visual ----
  -- remain in visual mode when indenting
  map("v", "<", "<gv")
  map("v", ">", ">gv")

  -- move blocks in visual mode
  map("v", "<A-j>", ":m .+1<CR>=='")
  map("v", "<A-k>", ":m .-1<CR>=='")

  ---- Terminal ----
  -- move between windows in terminal mode as well
  map("t", "<C-h>", "<C-\\><C-N><C-w>h")
  map("t", "<C-j>", "<C-\\><C-N><C-w>j")
  map("t", "<C-k>", "<C-\\><C-N><C-w>k")
  map("t", "<C-l>", "<C-\\><C-N><C-w>l")
end


return M
