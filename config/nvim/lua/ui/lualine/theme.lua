local colors = require("gruvbox.palette").get_base_colors()

return {
  normal = {
    a = { fg = colors.orange, bg = colors.bg0 },
    b = { fg = colors.blue, bg = colors.bg0 },
    c = { fg = colors.gray, bg = colors.bg0 },
    x = { fg = colors.yellow, bg = colors.bg0 },
    y = { fg = colors.aqua, bg = colors.bg0 },
    z = { fg = colors.blue, bg = colors.bg0 },
  },
  insert = {
    z = { fg = colors.green, bg = colors.bg0 },
  },
  terminal = {
    z = { fg = colors.green, bg = colors.bg0 },
  },
  visual = {
    z = { fg = colors.purple, bg = colors.bg0 },
  },
  replace = {
    z = { fg = colors.red, bg = colors.bg0 },
  },
  command =  {
    z = { fg = colors.orange, bg = colors.bg0 },
  },
  inactive = {
    z = { fg = colors.gray, bg = colors.bg0 },
  },
}
