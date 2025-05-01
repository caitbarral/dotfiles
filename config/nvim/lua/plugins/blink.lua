local keymap = {
  preset = "none",
  ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
  ['<C-e>'] = { 'hide' },

  ['<Tab>'] = { 'select_and_accept', 'fallback' },

  ['<C-j>'] = { 'select_next', 'fallback' },
  ['<C-k>'] = { 'select_prev', 'fallback' },

  ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
  ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

  ['<C-n>'] = { 'snippet_forward', 'fallback' },
  ['<C-p>'] = { 'snippet_backward', 'fallback' },

  ['<C-s>'] = { 'show_signature', 'hide_signature', 'fallback' },
}

return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = {
    'rafamadriz/friendly-snippets',
  },

  version = '1.*',

  opts = {
    keymap = keymap,

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
