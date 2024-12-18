require('nvim-treesitter.configs').setup({
  -- A list of parser names, or 'all'
  ensure_installed = {
    'c', 'lua', 'vim', 'vimdoc', 'query', -- required for treesitter no matter what
    'bash', 'cmake', 'comment', 'css', 'dockerfile',
    'git_config', 'git_rebase', 'gitattributes', 'gitcommit',
    'gitignore', 'html', 'javascript', 'jsdoc', 'json', 'json5',
    'luadoc', 'luap', 'make', 'markdown', 'python',
    'regex', 'ruby', 'rust', 'scss', 'sql', 'typescript',
    'yaml'
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})
