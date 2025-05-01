return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  keys = {
    { '<leader>l', ":lua require('lsp_lines').toggle()<CR>",       { silent = true }, desc = "Toggle lsp_lines",          mode = 'n' },
  }
}
