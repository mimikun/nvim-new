---@type table
local opts = {
  ---@type string "single" | "rounded" | "bold" | "double"
  border = "bold",
  excluded_ft = {
    "packer",
    "TelescopePrompt",
    "mason",
  },
  animate = {
    ---@type string "shift" | "progressive"
    enabled = "shift",
  },
  indicator_for_2wins = {
    ---@type string "center" | "start" | "end" | "both"
    position = "center",
    symbols = {
      start_left = "󱞬",
      end_left = "󱞪",
      start_down = "󱞾",
      end_down = "󱟀",
      start_up = "󱞢",
      end_up = "󱞤",
      start_right = "󱞨",
      end_right = "󱞦",
    },
  },
}

return opts
