---@type LazySpec
local spec = {
  "antonk52/markdowny.nvim",
  --lazy = false,
  ft = require("plugins.markdowny-nvim.ft"),
  keys = require("plugins.markdowny-nvim.keys"),
  --event = "VeryLazy",
  opts = require("plugins.markdowny-nvim.opts"),
  cond = false,
  enabled = false,
}

return spec
