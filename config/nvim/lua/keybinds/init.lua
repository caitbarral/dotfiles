local function map(m, k, v)
  vim.api.nvim_set_keymap(m, k, v, { silent = true })
end

require('Comment').setup()

map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- esc to clear search highlighting
map('n', '<ESC>', ':nohl<CR>')

---- Command ----
--allow capitals in common commands
vim.cmd 'command! W w'
vim.cmd 'command! Wa wa'
vim.cmd 'command! Q q'
vim.cmd 'command! Qa qa'
--stop accidentally saving file as "'"
-- vim.cmd "command! W' w"
-- vim.cmd "command! Wa' wa"
-- vim.cmd "command! w' w"
-- vim.cmd "command! wa' wa"
--
---- Normal ----
-- window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- resizing windows
map('n', '<C-Up>', ':resize -2<CR>')
map('n', '<C-Down>', ':resize +2<CR>')
map('n', '<C-Left>', ':vertical resize -2<CR>')
map('n', '<C-Right>', ':vertical resize +2<CR>')

-- switching buffers
map("n", "<S-l>", ":BufferLineCycleNext<CR>")
map("n", "<S-h>", ":BufferLineCyclePrev<CR>")
map("n", "<A-S-l>", ":BufferLineMoveNext<CR>")
map("n", "<A-S-h>", ":BufferLineMovePrev<CR>")

-- Move text up and down
map('n', '<A-j>', '<Esc>:m .+1<CR>==gi')
map('n', '<A-k>', '<Esc>:m .-2<CR>==gi')

-- Toggle Neotree
map('n', '<leader>\\', ':Neotree toggle<CR>')
map('n', '<leader>|', ':Neotree reveal show<CR>')

-- Telescope searching
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fh', ':Telescope help_tags<CR>')

map('n', '<leader>nn', ':Noice dismiss<CR>')
map('n', '<leader>nl', ':Noice last<CR>')
map('n', '<leader>nh', ':Noice history<CR>')
map('n', '<leader>ne', ':Noice errors<CR>')

---- Visual ----
-- stay in visual mode when indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- move blocks
map('v', '<A-j>', ':m .+1<CR>==')
map('v', '<A-k>', ':m .-1<CR>==')

---- Terminal ----
map('t', '<C-h>', '<C-\\><C-N><C-w>h')
map('t', '<C-j>', '<C-\\><C-N><C-w>j')
map('t', '<C-k>', '<C-\\><C-N><C-w>k')
map('t', '<C-l>', '<C-\\><C-N><C-w>l')


-- indentation
vim.o.shiftwidth = 0
vim.o.softtabstop=-1
vim.o.tabstop = 2
vim.o.expandtab = true
