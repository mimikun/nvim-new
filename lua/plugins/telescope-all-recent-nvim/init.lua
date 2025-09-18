---@type LazySpec
local spec = {
  "prochri/telescope-all-recent.nvim",
  --lazy = false,
  keys = require("plugins.telescope-all-recent-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.telescope-all-recent-nvim.dependencies"),
  opts = require("plugins.telescope-all-recent-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
