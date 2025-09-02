---@type table
local opts = {
  legacy_computing_symbols_support = false,
  legacy_computing_symbols_support_vertical_bars = false,
  vertical_bar_cursor = false,
  smear_replace_mode = false,
  smear_terminal_mode = false,
  never_draw_over_target = false,
  hide_target_hack = false,
  filetypes_disabled = {},
  stiffness = 0.8,
  trailing_stiffness = 0.6,
  stiffness_insert_mode = 0.7,
  trailing_stiffness_insert_mode = 0.7,
  damping = 0.95,
  damping_insert_mode = 0.95,
  distance_stop_animating = 0.5,
}

return opts
