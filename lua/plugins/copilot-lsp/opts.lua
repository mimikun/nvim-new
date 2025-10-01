---@type copilotlsp.config
local opts = {
  nes = {
    move_count_threshold = 3,
    distance_threshold = 40,
    clear_on_large_distance = true,
    count_horizontal_moves = true,
    reset_on_approaching = true,
  },
}

return opts
