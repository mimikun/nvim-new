---@type table
local opts = {
  -- provider used to get references in the buffer, ordered by priority
  providers = {
    "lsp",
    "treesitter",
    "regex",
  },
  delay = 100,
  -- filetype specific overrides.
  -- The keys are strings to represent the filetype while the values are tables that - supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist
  filetype_overrides = {},
  -- filetypes to not illuminate, this overrides filetypes_allowlist
  filetypes_denylist = {
    "dirbuf",
    "dirvish",
    "fugitive",
  },
  -- filetypes to illuminate, this is overridden by filetypes_denylist
  -- You must set filetypes_denylist = {} to override the defaults to allow filetypes_allowlist to take effect
  filetypes_allowlist = {},
  -- delay in milliseconds
  -- modes to not illuminate, this overrides modes_allowlist
  -- See `:help mode()` for possible values
  modes_denylist = {},
  -- modes to illuminate, this is overridden by modes_denylist
  -- See `:help mode()` for possible values
  modes_allowlist = {},
  -- syntax to not illuminate, this overrides providers_regex_syntax_allowlist
  -- Only applies to the 'regex' provider
  -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
  providers_regex_syntax_denylist = {},
  -- syntax to illuminate, this is overridden by providers_regex_syntax_denylist
  -- Only applies to the 'regex' provider
  -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
  providers_regex_syntax_allowlist = {},
  -- whether or not to illuminate under the cursor
  under_cursor = true,
  -- number of lines at which to use large_file_config
  -- The `under_cursor` option is disabled when this cutoff is hit
  large_file_cutoff = 10000,
  -- config to use for large files (based on large_file_cutoff).
  -- Supports the same keys passed to .configure If nil, vim-illuminate will be disabled for large files.
  large_file_config = nil,
  -- minimum number of matches required to perform highlighting
  min_count_to_highlight = 1,
  -- a callback that overrides all other settings to enable/disable illumination.
  -- This will be called a lot so don't do anything expensive in it.
  should_enable = nil,
  --should_enable = function(bufnr)
  --  return true
  --end,
  -- sets regex case sensitivity
  case_insensitive_regex = false,
  -- disable default keymaps
  disable_keymaps = false,
  -- ???
  max_file_lines = nil,
}

return opts
