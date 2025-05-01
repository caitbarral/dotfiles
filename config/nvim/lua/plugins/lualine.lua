local colors = require("gruvbox").palette

local theme = {
  normal = {
    a = { fg = colors.bright_orange, bg = colors.dark1 },
    b = { fg = colors.bright_blue, bg = colors.dark1 },
    c = { fg = colors.gray, bg = colors.dark1 },
    x = { fg = colors.bright_yellow, bg = colors.dark1 },
    y = { fg = colors.bright_aqua, bg = colors.dark1 },
    z = { fg = colors.dark1, bg = colors.bright_blue  },
  },
  insert = {
    z = { bg = colors.bright_green, fg = colors.dark1 },
  },
  terminal = {
    z = { bg = colors.bright_green, fg = colors.dark1 },
  },
  visual = {
    z = { bg = colors.bright_purple, fg = colors.dark1 },
  },
  replace = {
    z = { bg = colors.bright_red, fg = colors.dark1 },
  },
  command =  {
    z = { bg = colors.bright_orange, fg = colors.dark1 },
  },
  inactive = {
    z = { bg = colors.gray, fg = colors.dark1 },
  },
}

local opts = {
  options = {
    icons_enabled = true,
    globalstatus = true,
    theme = theme
  },
  sections = {
    lualine_a = {'branch'},
    lualine_b = {'diagnostics'},
    lualine_c = {{"filename", path = 1}},
    lualine_x = {'location'},
    lualine_y = {"filetype"},
    lualine_z = {'mode'}
  }
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {"ellisonleao/gruvbox.nvim"},
  opts = opts
}
