---@type table
local opts = {
  enabled = true,
  use_colorpalette = false,
  sequential_colorpalette = false,
  excluded_filetypes = {},
  paint_catch_blocks = {
    declarations = false,
    usages = false,
  },
  extras = {
    named_parameters = false,
    unused_args = false,
  },
  excluded_argnames = {
    declarations = {},
    usages = {
      python = {
        "self",
        "cls",
      },
      lua = {
        "self",
      },
    },
  },
}

return opts
