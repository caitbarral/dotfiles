local M = {}

local o = vim.o

function M.setup()
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

  -- status bar
  o.laststatus = 3

  -- command bar
  o.cmdheight = 1

  -- line wrap
  o.wrap = true

  -- line length indicator
  o.colorcolumn = "80"

  -- show whitespace
  o.list = true
  o.listchars = "eol:¬,trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"

  -- disable mouse
  o.mouse = ""

  -- dont show mode in command bar
  o.showmode = false

  -- always show sign column
  o.scl = "auto:1-3"
end

return M
