---@type LazySpec
local spec = {
  "Bekaboo/dropbar.nvim",
  --lazy = false,
  keys = require("plugins.dropbar-nvim.keys"),
  event = "VeryLazy",
  dependencies = require("plugins.dropbar-nvim.dependencies"),
  opts = require("plugins.dropbar-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
