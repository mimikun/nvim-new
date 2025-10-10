---@type LazySpec
local spec = {
  "bxrne/diagrascii.nvim",
  --lazy = false,
  cmd = require("plugins.diagrascii-nvim.cmds"),
  --keys = require("plugins.diagrascii-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.diagrascii-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
