local components = require('ui.lualine.components')
local theme = require('ui.lualine.theme')

require('lualine').setup {
  options = {
  icons_enabled = true,
  theme = theme,
  globalstatus = true,
  component_separators = { left = '', right = ''},
  section_separators = { left = '', right = ''},
  disabled_filetypes = {
    statusline = {},
    winbar = {},
  },
  ignore_focus = {},
  always_divide_middle = true,
  globalstatus = false,
  refresh = {
    statusline = 100,
    tabline = 100,
    winbar = 100,
  }
  },
  sections = {
    lualine_a = {'branch'},
    lualine_b = {'diagnostics'},
    lualine_c = {'searchcount', components.macro},
    lualine_x = {components.position},
    lualine_y = {components.filetype},
    lualine_z = {'mode'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
