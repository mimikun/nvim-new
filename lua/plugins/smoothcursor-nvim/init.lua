---@type LazySpec
local spec = {
  "gen740/SmoothCursor.nvim",
  --lazy = false,
  cmd = require("plugins.smoothcursor-nvim.cmds"),
  event = "VeryLazy",
  opts = require("plugins.smoothcursor-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
