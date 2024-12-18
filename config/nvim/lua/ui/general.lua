vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

local o = vim.o
local g = vim.g

o.termguicolors = true

-- line numbers
o.number = true
o.relativenumber = true
o.numberwidth = 5
o.scrolloff = 8

-- update time
o.timeoutlen = 500
o.updatetime = 200

-- search
o.ignorecase = true
o.smartcase = true

-- window splitting
o.splitright = true
o.splitbelow = true

-- status bar
o.laststatus = 3

-- command bar
o.cmdheight = 0

-- wrap
o.wrap = true

-- line length indicator
vim.opt.colorcolumn = "80"

-- whitespace
o.list = true
o.listchars = "eol:¬,trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"

-- mouse
o.mouse = ""
