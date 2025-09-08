---@type LazySpec
local spec = {
  "folke/twilight.nvim",
  --lazy = false,
  cmd = require("plugins.twilight-nvim.cmds"),
  event = "VeryLazy",
  opts = require("plugins.twilight-nvim.opts"),
  --cond = false,
  --enabled = false,
}

return spec
