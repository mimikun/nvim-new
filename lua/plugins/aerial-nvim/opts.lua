---@type table
local opts = {
  backends = {
    "treesitter",
    "lsp",
    "markdown",
    "asciidoc",
    "man",
  },
  layout = {
    ---@type "prefer_right" | "prefer_left" | "right" | "left" | "float"
    default_direction = "prefer_right",
    ---@type "edge" | "window"
    placement = "window",
    preserve_equality = false,
  },
  ---@type "window" | "global"
  attach_mode = "window",
  -- List of enum values that configure when to auto-close the aerial window
  --   unfocus       - close aerial when you leave the original source window
  --   switch_buffer - close aerial when you change buffers in the source window
  --   unsupported   - close aerial when attaching to a buffer that has no symbol source
  close_automatic_events = {},
  disable_max_lines = 10000,
  disable_max_size = 2000000,
  ---@type "split_width" | "full_width" | "last" | "none"
  highlight_mode = "split_width",
  highlight_on_hover = false,
  highlight_on_jump = 300,
  autojump = false,
  -- Define symbol icons. You can also specify "<Symbol>Collapsed" to change the icon when the tree is collapsed at that symbol, or "Collapsed" to specify a default collapsed icon.
  -- The default icon set is determined by the "nerd_font" option below.
  -- If you have lspkind-nvim installed, it will be the default icon set.
  -- This can be a filetype map (see :help aerial-filetype-map)
  icons = {},
  ignore = {
    unlisted_buffers = false,
    filetypes = {},
  },
  manage_folds = false,
  link_folds_to_tree = false,
  on_attach = function(bufnr)
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
  close_on_select = false,
  update_events = "TextChanged,InsertLeave",
  show_guides = false,
  guides = {
    mid_item = "├─",
    last_item = "└─",
    nested_top = "│ ",
    whitespace = "  ",
  },
  float = {
    border = "rounded",
    ---@type "cursor" | "editor" | "win"
    relative = "cursor",
  },
  nav = {
    border = "rounded",
    win_opts = {
      cursorline = true,
      winblend = 10,
    },
    autojump = false,
    preview = false,
  },
  lsp = {
    diagnostics_trigger_update = false,
  },
}

return opts
