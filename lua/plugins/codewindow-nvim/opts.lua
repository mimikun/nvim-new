---@type table
local opts = {
  -- Should the minimap activate for terminal buffers
  active_in_terminals = false,
  -- Automatically open the minimap when entering a (non-excluded) buffer (accepts a table of filetypes)
  auto_enable = false,
  -- Choose certain filetypes to not show minimap on
  exclude_filetypes = {
    "help",
  },
  -- The maximum height the minimap can take (including borders)
  max_minimap_height = nil,
  -- If auto_enable is true, don't open the minimap for buffers which have more than this many lines.
  max_lines = nil,
  -- The width of the text part of the minimap
  minimap_width = 20,
  -- How many characters one dot represents
  width_multiplier = 4,
  -- The z-index the floating window will be on
  z_index = 1,
  -- How the visible area is displayed, "lines": lines above and below, "background": background color
  screen_bounds = "lines",
  -- The border style of the floating window (accepts all usual options)
  window_border = "single",
  -- What will be the minimap be placed relative to, "win": the current window, "editor": the entire editor
  relative = "win",
  -- Events that update the code window
  events = {
    "TextChanged",
    "InsertLeave",
    "DiagnosticChanged",
    "FileWritePost",
  },
}

return opts
