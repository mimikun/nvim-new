---@type table
local opts = {
  file_types = {
    "markdown",
    "text",
    "gitcommit",
  },
  line_spacing = 1,
  outline_levels = {
    "ROM",
    "ABC",
    "num",
    "abc",
    "rom",
    "std*",
    "std-",
    "std+",
  },
  alpha = {
    len = 2,
  },
  checkbox = {
    nest = true,
    markers = " .oOx",
    toggle_partials = true,
  },
}

return opts
