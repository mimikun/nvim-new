---@type LazySpec
local spec = {
  "delphinus/skkeleton_indicator.nvim",
  lazy = false,
  --event = "VeryLazy",
  dependencies = require("plugins.skkeleton-indicator-nvim.dependencies"),
  opts = require("plugins.skkeleton-indicator-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
