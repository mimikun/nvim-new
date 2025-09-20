---@type LazySpec
local spec = {
  "ravsii/timers.nvim",
  --version = "*",
  --lazy = false,
  cmd = require("plugins.timers-nvim.cmds"),
  keys = require("plugins.timers-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.timers-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
