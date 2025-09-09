---@type LazySpec
local spec = {
  "lewis6991/satellite.nvim",
  --lazy = false,
  cmd = require("plugins.satellite-nvim.cmds"),
  event = "VeryLazy",
  dependencies = { "lewis6991/gitsigns.nvim" },
  opts = require("plugins.satellite-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
