local colors = require("gruvbox.palette").get_base_colors()

require('bufferline').setup {
  options = {
    separator_style = 'thin',
    offsets = {
      {
        filetype = 'neo-tree',
        text = 'EXPLORER',
        text_align = 'center',
      },
    },
  }
}
