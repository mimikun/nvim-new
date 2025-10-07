---@type LazySpec
local spec = {
  "Piotr1215/presenterm.nvim",
  build = false,
  --lazy = false,
  ft = { "markdown" },
  cmd = "Presenterm",
  keys = require("plugins.presenterm-nvim.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.presenterm-nvim.dependencies"),
  opts = require("plugins.presenterm-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
