---@type LazySpec
local spec = {
  "willothy/wezterm.nvim",
  --lazy = false,
  cmd = "WeztermSpawn",
  keys = require("plugins.wezterm-nvim.keys"),
  event = "VeryLazy",
  opts = {},
  cond = false,
  enabled = false,
}

return spec
