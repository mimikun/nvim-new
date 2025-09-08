---@type table
local opts = {
  mappings = {
    "<C-u>",
    "<C-d>",
    "<C-b>",
    "<C-f>",
    "<C-y>",
    "<C-e>",
    "zt",
    "zz",
    "zb",
  },
  respect_scrolloff = false,
  duration_multiplier = 1.0,
  easing = "linear",
  --pre_hook = nil,
  --post_hook = nil,
  performance_mode = false,
  ignored_events = {
    "WinScrolled",
    "CursorMoved",
  },
  telescope_scroll_opts = {
    duration = 250,
  },
}

return opts
