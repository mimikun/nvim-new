---@type LazySpec
local spec = {
  "45Hnri/tablens.nvim",
  --lazy = false,
  --event = "VeryLazy",
  dependencies = require("plugins.tablens-nvim.dependencies"),
  opts = require("plugins.tablens-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
